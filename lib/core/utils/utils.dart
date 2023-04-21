const baseUrl = "https://todo-web-api.onrender.com/api/v1";
const userKey = "UserKey";
String endPoint(String endPoint) => "$baseUrl/$endPoint";

Map<String, String> headerBearerOption() => {
      "Content-Type": "application/json",
    };
