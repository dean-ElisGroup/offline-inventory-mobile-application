import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

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
