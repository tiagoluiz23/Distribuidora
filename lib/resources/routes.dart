class Routes {
  static const String authService =
      "https://identitytoolkit.googleapis.com/v1/";
      
  static const String apiKey = "AIzaSyAy2sk2ovlEY7G5i3iJaNwKGVyZLR2I9fI";

  String signIn() {
    return "${authService}accounts:signInWithPassword?key=$apiKey";
  }

  String signUp() {
    return "${authService}accounts:signUp?key=$apiKey";
  }
}