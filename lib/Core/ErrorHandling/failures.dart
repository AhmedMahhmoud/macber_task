import 'package:macber_task/Core/constants/constants.dart';

abstract class Failure {
  String get message;
}

class ServerFailure extends Failure {
  @override
  final String message;

  ServerFailure({this.message = Constants.serverFailiureMsg});
}

class NetworkFailure extends Failure {
  @override
  final String message;

  NetworkFailure({this.message = Constants.noInternetMsg});
}

class UnExpectedFailure extends Failure {
  @override
  final String message;

  UnExpectedFailure({this.message = Constants.noInternetMsg});
}


class EndpointFailure extends Failure {
  @override
  final String message;
  EndpointFailure(this.message);
}
