import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _userlanguage = prefs.getString('ff_userlanguage') ?? _userlanguage;
    _userfirstname = prefs.getString('ff_userfirstname') ?? _userfirstname;
    _usersurname = prefs.getString('ff_usersurname') ?? _usersurname;
    _deliveryAddressName =
        prefs.getString('ff_deliveryAddressName') ?? _deliveryAddressName;
    _posGroupName = prefs.getString('ff_posGroupName') ?? _posGroupName;
    _userid = prefs.getString('ff_userid') ?? _userid;
    _deliveryAddressId =
        prefs.getString('ff_deliveryAddressId') ?? _deliveryAddressId;
    _fullorder = prefs.getBool('ff_fullorder') ?? _fullorder;
    if (prefs.containsKey('ff_deliveryaddressJson')) {
      try {
        _deliveryaddressJson =
            jsonDecode(prefs.getString('ff_deliveryaddressJson') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_posGroupJson')) {
      try {
        _posGroupJson = jsonDecode(prefs.getString('ff_posGroupJson') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _posGroupId = prefs.getString('ff_posGroupId') ?? _posGroupId;
    if (prefs.containsKey('ff_posJson')) {
      try {
        _posJson = jsonDecode(prefs.getString('ff_posJson') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    if (prefs.containsKey('ff_userDetailJson')) {
      try {
        _userDetailJson =
            jsonDecode(prefs.getString('ff_userDetailJson') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }

    _sessionKeyLogin =
        prefs.getString('ff_sessionKeyLogin') ?? _sessionKeyLogin;
    _orderInfoJson = prefs.getStringList('ff_orderInfoJson')?.map((x) {
          try {
            return jsonDecode(x);
          } catch (e) {
            print("Can't decode persisted json. Error: $e.");
            return {};
          }
        }).toList() ??
        _orderInfoJson;
  }

  late SharedPreferences prefs;

  String _userlanguage = 'English';
  String get userlanguage => _userlanguage;
  set userlanguage(String _value) {
    _userlanguage = _value;
    prefs.setString('ff_userlanguage', _value);
  }

  String orderdate = '';

  String _userfirstname = '';
  String get userfirstname => _userfirstname;
  set userfirstname(String _value) {
    _userfirstname = _value;
    prefs.setString('ff_userfirstname', _value);
  }

  String _usersurname = '';
  String get usersurname => _usersurname;
  set usersurname(String _value) {
    _usersurname = _value;
    prefs.setString('ff_usersurname', _value);
  }

  String _deliveryAddressName = '';
  String get deliveryAddressName => _deliveryAddressName;
  set deliveryAddressName(String _value) {
    _deliveryAddressName = _value;
    prefs.setString('ff_deliveryAddressName', _value);
  }

  String _posGroupName = '';
  String get posGroupName => _posGroupName;
  set posGroupName(String _value) {
    _posGroupName = _value;
    prefs.setString('ff_posGroupName', _value);
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String _value) {
    _userid = _value;
    prefs.setString('ff_userid', _value);
  }

  String _deliveryAddressId = '';
  String get deliveryAddressId => _deliveryAddressId;
  set deliveryAddressId(String _value) {
    _deliveryAddressId = _value;
    prefs.setString('ff_deliveryAddressId', _value);
  }

  bool _fullorder = false;
  bool get fullorder => _fullorder;
  set fullorder(bool _value) {
    _fullorder = _value;
    prefs.setBool('ff_fullorder', _value);
  }

  dynamic _deliveryaddressJson;
  dynamic get deliveryaddressJson => _deliveryaddressJson;
  set deliveryaddressJson(dynamic _value) {
    _deliveryaddressJson = _value;
    prefs.setString('ff_deliveryaddressJson', jsonEncode(_value));
  }

  dynamic _posGroupJson;
  dynamic get posGroupJson => _posGroupJson;
  set posGroupJson(dynamic _value) {
    _posGroupJson = _value;
    prefs.setString('ff_posGroupJson', jsonEncode(_value));
  }

  String _posGroupId = '';
  String get posGroupId => _posGroupId;
  set posGroupId(String _value) {
    _posGroupId = _value;
    prefs.setString('ff_posGroupId', _value);
  }

  dynamic _posJson;
  dynamic get posJson => _posJson;
  set posJson(dynamic _value) {
    _posJson = _value;
    prefs.setString('ff_posJson', jsonEncode(_value));
  }

  dynamic _userDetailJson;
  dynamic get userDetailJson => _userDetailJson;
  set userDetailJson(dynamic _value) {
    _userDetailJson = _value;
    prefs.setString('ff_userDetailJson', jsonEncode(_value));
  }

  bool changeLanguage = false;

  String _sessionKeyLogin = '';
  String get sessionKeyLogin => _sessionKeyLogin;
  set sessionKeyLogin(String _value) {
    _sessionKeyLogin = _value;
    prefs.setString('ff_sessionKeyLogin', _value);
  }

  List<dynamic> _orderInfoJson = [];
  List<dynamic> get orderInfoJson => _orderInfoJson;
  set orderInfoJson(List<dynamic> _value) {
    _orderInfoJson = _value;
    prefs.setStringList(
        'ff_orderInfoJson', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToOrderInfoJson(dynamic _value) {
    _orderInfoJson.add(_value);
    prefs.setStringList(
        'ff_orderInfoJson', _orderInfoJson.map((x) => jsonEncode(x)).toList());
  }

  void removeFromOrderInfoJson(dynamic _value) {
    _orderInfoJson.remove(_value);
    prefs.setStringList(
        'ff_orderInfoJson', _orderInfoJson.map((x) => jsonEncode(x)).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
