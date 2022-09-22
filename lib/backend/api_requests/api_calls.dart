import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SolUsersCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'SolUsers',
      apiUrl: 'https://deantestingdata.herokuapp.com/users',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class DeliveryAddressCall {
  static Future<ApiCallResponse> call({
    String? solUser = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Delivery Address',
      apiUrl: 'https://deantestingdata.herokuapp.com/deliveryaddress/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'solUser': solUser,
      },
      returnBody: true,
    );
  }
}

class PointOfServiceCall {
  static Future<ApiCallResponse> call({
    String? posGroupId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Point of Service',
      apiUrl: 'https://deantestingdata.herokuapp.com/pos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'posGroupId': posGroupId,
      },
      returnBody: true,
    );
  }

  static dynamic posName(dynamic response) => getJsonField(
        response,
        r'''$..posName''',
      );
}

class POSGroupCall {
  static Future<ApiCallResponse> call({
    String? deliveryAddressId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'POS Group',
      apiUrl: 'https://deantestingdata.herokuapp.com/posgroup/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'deliveryAddressId': deliveryAddressId,
      },
      returnBody: true,
    );
  }

  static dynamic posGroupName(dynamic response) => getJsonField(
        response,
        r'''$..posGroupName''',
      );
  static dynamic postDeliveryAddressId(dynamic response) => getJsonField(
        response,
        r'''$..deliveryAddressId''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
