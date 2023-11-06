import 'package:dio/dio.dart';

class TokenInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // if (CurrentUser.instance.encodeToken != null) {
    //   options.headers["Authorization"] =
    //       "Bearer ${CurrentUser.instance.encodeToken}";
    // }
    super.onRequest(options, handler);
  }
}
