class Constants {
  static const String imagesUrl = "https://image.tmdb.org/t/p/w500";
  static const String apiKey = "95c4bfa235e43375c562b2c230ef96bd";
  static const header = {'Authorization': "Bearer $accessToken"};
  static const String accessToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5NWM0YmZhMjM1ZTQzMzc1YzU2MmIyYzIzMGVmOTZiZCIsInN1YiI6IjVmOTk4OWJiNmMxZTA0MDAzNmUxMGU3NCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9qADk6nnpES8bIkDVDXKlC3H0ZZaDxQ7akmi8rN8QPI";
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const String noInternetMsg = "There is no internet connection";
  static const String unExpectedExceptionMsg =
      "Unexpected exception occurred while connecting to the server";
  static const String serverFailiureMsg =
      "Something went wrong when connecting to the server,please try again later";
}
