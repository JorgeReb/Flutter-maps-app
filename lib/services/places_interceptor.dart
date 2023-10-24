import 'package:dio/dio.dart';

class PlacesInterceptor extends Interceptor {
  final accessToken =
      'pk.eyJ1IjoianJlYm9sbG8iLCJhIjoiY2xvM3l5anZlMG8zYzJvdWRpejZtajhoYiJ9.ENNP4ukmyBQRSVcyQQ1sjQ';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters
        .addAll({'access_token': accessToken, 'language': 'es', 'limit': 7});

    super.onRequest(options, handler);
  }
}
