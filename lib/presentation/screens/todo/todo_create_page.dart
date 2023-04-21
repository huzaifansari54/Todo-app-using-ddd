import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/application/todo/todo_bloc.dart';
import 'package:todo_app/application/todo/todo_events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_events.dart';
import 'package:todo_app/application/todo/todo_watcher/todo_watcher_bloc.dart';
import 'package:todo_app/domain/todo/todo_Enitity.dart';
import 'package:todo_app/extensions/ui_extensions.dart';
import 'package:todo_app/presentation/core/constant.dart';
import 'package:todo_app/presentation/widgets/textfield_widget.dart';

class TodoCreatePage extends ConsumerStatefulWidget {
  const TodoCreatePage({required this.uid, super.key});
  final String uid;

  @override
  ConsumerState<TodoCreatePage> createState() => _TodoCreatePageState();
}

class _TodoCreatePageState extends ConsumerState<TodoCreatePage> {
  late final TextEditingController _titlecontroller;
  late final TextEditingController _descriptioncontroller;
  @override
  void initState() {
    super.initState();
    _titlecontroller = TextEditingController();
    _descriptioncontroller = TextEditingController();
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _listenError(context);

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: "Todo Create".text,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Form(
              key: _key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFielWidget(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please filled field";
                        }
                        return null;
                      },
                      emailController: _titlecontroller,
                      hint: "Title",
                      obscure: false,
                      icon: const Icon(Icons.title)),
                  BodyText(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please filled field";
                        }
                        return null;
                      },
                      controller: _descriptioncontroller,
                      hint: "body",
                      icon: const Icon(Icons.description))
                ],
              ),
            ),
          ),
          MaterialButton(
            color: kbgColor,
            onPressed: () {
              if (!_key.currentState!.validate()) {
                showDialog(
                    context: context,
                    builder: (context) => const SimpleDialog(
                          contentPadding: EdgeInsets.all(20),
                          title: Text('Please check the form'),
                          children: [
                            Text(
                                'Some details are missing or incorrect. Please check the details and try again.')
                          ],
                        ));
              } else {
                ref.read(todoBloc.notifier).eventToStateMap(TodoEvents.save(
                    Todo(
                        id: widget.uid,
                        titile: _titlecontroller.text.trim(),
                        description: _descriptioncontroller.text.trim(),
                        isCompleted: false)));
                ref.refresh(todoWatcherBloc.notifier).eventToStateMap(
                    TodoWatcherEvents.fetchTodos(uid: widget.uid));
                Navigator.pop(context);
              }
            },
            child: "Save".text,
          )
        ],
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
                            return "";
                          }, server: (s) {
                            return "server error";
                          }, timeout: () {
                            return "timeout";
                          }, internetConnectionOut: () {
                            return "internetConnectionOut check intenet";
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
