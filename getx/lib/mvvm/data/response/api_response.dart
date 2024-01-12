import 'package:getx/mvvm/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.data, this.message, {this.status = Status.notStart});

  ApiResponse.loading() : status = Status.loading;
  ApiResponse.completed(this.data) : status = Status.completed;
  ApiResponse.error(this.message) : status = Status.error;

  String tostring() {
    return "Status : $status \nMessage : $message \nData : $data";
  }
}
