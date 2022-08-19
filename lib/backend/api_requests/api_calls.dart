import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class SampleCall {
  static Future<ApiCallResponse> call({
    int? id = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Sample',
      apiUrl: 'https://elistest-03be.restdb.io/rest/db-test',
      callType: ApiCallType.GET,
      headers: {
        'x-apikey': '9bc14238faf8f53347110c21208b18f422d61',
      },
      params: {
        '_id': id,
      },
      returnBody: true,
    );
  }
}
