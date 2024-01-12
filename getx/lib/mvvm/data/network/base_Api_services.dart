abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> post(String url, dynamic data);
}
