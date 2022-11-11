import 'dart:convert';

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
      cache: false,
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
      cache: false,
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
      cache: false,
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
      cache: false,
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

class UsersCall {
  static Future<ApiCallResponse> call({
    String? username = 'MREADFERN',
    String? password = 'Tuesday1',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Users',
      apiUrl:
          'http://serviceonlinetest.elisonline.co.uk/SolMasterTraining1/Ordering.wso/Login',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static dynamic sessionKey(dynamic response) => getJsonField(
        response,
        r'''$..sessionKey''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$..message''',
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$..name''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$..email''',
      );
}

class UserLogoutCall {
  static Future<ApiCallResponse> call({
    String? sessionKeyLogout = '',
  }) {
    final body = '''
{
  "sessionKey": "${sessionKeyLogout}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserLogout',
      apiUrl:
          'http://serviceonlinetest.elisonline.co.uk/SolMasterTraining1/Ordering.wso/Logout',
      callType: ApiCallType.POST,
      headers: {
        'Content-type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}
