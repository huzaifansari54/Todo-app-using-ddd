import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:todo_app/application/auth/auth_block.dart';
import 'package:todo_app/application/auth/events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app/extensions/ui_extensions.dart';
import 'package:todo_app/presentation/core/constant.dart';
import 'package:todo_app/presentation/screens/todo/todo_create_page.dart';
import 'package:todo_app/presentation/screens/todo/todo_edit_page.dart';

import '../../../application/todo/todo_bloc.dart';
import '../../../application/todo/todo_events.dart';
import '../home.dart';

class TodoPage extends ConsumerStatefulWidget {
  const TodoPage(this.uid, {super.key});
  final String uid;

  @override
  ConsumerState<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends ConsumerState<TodoPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref
          .read(todoWatcherBloc.notifier)
          .eventToStateMap(TodoWatcherEvents.fetchTodos(uid: widget.uid));
    });
  }

  @override
  Widget build(BuildContext context) {
    _listenError(context);

    final todoWatcher = ref.watch(todoWatcherBloc);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ref
                    .read(authBloc.notifier)
                    .eventToState(const AuthEvents.signOut());
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const Home(),
                //     ));
              },
              icon: Row(
                children: [
                  "Log out".text,
                  5.w,
                  const Icon(
                    Icons.logout,
                    color: kwhite,
                  ),
                ],
              ))
        ],
        title: "Todo".text.large.copywith(color: kwhite, fontsize: 18),
      ),
      body: todoWatcher.when(intial: () {
        return const Center(
          child: Text("Empty"),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, loaded: (todos) {
        return todos.isNotEmpty
            ? Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      final todo = todos[index];

                      return SwipeActionCell(
                        /// this key is necessary
                        key: ObjectKey(todos[index]),
                        trailingActions: <SwipeAction>[
                          SwipeAction(

                              /// this is the same as iOS native
                              performsFirstActionWithFullSwipe: true,
                              title: "delete",
                              onTap: (CompletionHandler handler) async {
                                ref.read(todoBloc.notifier).eventToStateMap(
                                    TodoEvents.delete(
                                        id: todo.id, uid: widget.uid));
                              },
                              color: bgColor),
                        ],
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: kwhite,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  todo.titile.text.small,
                                  todo.description.text.mediam
                                ],
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return TodoEditPage(
                                            uid: widget.uid, todo: todo);
                                      },
                                    ));
                                  },
                                  icon: const Icon(Icons.edit))
                            ],
                          ),
                        ),
                      );
                    },
                  )),
                ],
              )
            : const Center(
                child: Text("Empty"),
              );
      }, failure: (failure) {
        return failure.maybeWhen(
          server: (server) {
            return Center(
              child: Text(server),
            );
          },
          timeout: () {
            return const Center(
              child: Text("timeout"),
            );
          },
          internetConnectionOut: () {
            return const Center(
              child: Text("internet out"),
            );
          },
          orElse: () {
            return const Center(
              child: Text(" failure"),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return TodoCreatePage(
                uid: widget.uid,
              );
            },
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _listenError(BuildContext context) {
    return ref.listen(todoBloc, (previous, next) {
      if (next.failure.isSome()) {
        showDialog(
            context: context,
            builder: (context) => SimpleDialog(
                  contentPadding: const EdgeInsets.all(20),
                  title: Text(next.failure.fold(
                      () => "",
                      (a) => a.maybeWhen(orElse: () {
                            return "unknown error";
                          }, server: (s) {
                            return "server error";
                          }, timeout: () {
                            return "timeout";
                          }, internetConnectionOut: () {
                            return "internetConnectionOut check intenet";
                          }, failedToGet: () {
                            return "failed to Getd todos";
                          }, failedToUpdate: () {
                            return "failed to update";
                          }, failedToSave: () {
                            return "failedToSave";
                          }, failedToDelete: () {
                            return "failedToDelete";
                          }))),
                  children: const [
                    Text(
                        'Some details are missing or incorrect. Please check the details and try again.')
                  ],
                ));
      }
    });
  }
}
