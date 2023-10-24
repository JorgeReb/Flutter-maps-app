import 'package:dio/dio.dart';


class TrafficInterceptor extends Interceptor {
  
final accessToken = 'pk.eyJ1IjoianJlYm9sbG8iLCJhIjoiY2xvM3l5anZlMG8zYzJvdWRpejZtajhoYiJ9.ENNP4ukmyBQRSVcyQQ1sjQ';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken
    });

    super.onRequest(options, handler);
  }
}
