import 'package:dio/dio.dart';
import 'package:network/dio_provider.dart';

class DioRequestRetriever {
  final dioClient = DioProvider.tokenClient;
  final RequestOptions requestOptions;

  DioRequestRetriever({required this.requestOptions});

  Future<Response<T>> retry<T>() async {
    var header = getCustomHeaders();

    return await dioClient.request(
      requestOptions.path,
      cancelToken: requestOptions.cancelToken,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      onReceiveProgress: requestOptions.onReceiveProgress,
      onSendProgress: requestOptions.onSendProgress,
      options: Options(headers: header, method: requestOptions.method),
    );
  }

  Map<String, String> getCustomHeaders() {
    const String accessToken = "";
    var customHeaders = {'content-type': 'application/json'};
    if (accessToken.trim().isNotEmpty) {
      customHeaders.addAll({
        'Authorization': "hi",
      });
    }

    return customHeaders;
  }
}
