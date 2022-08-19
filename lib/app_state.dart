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
  }

  late SharedPreferences prefs;

  String _userlanguage = 'English';
  String get userlanguage => _userlanguage;
  set userlanguage(String _value) {
    _userlanguage = _value;
    prefs.setString('ff_userlanguage', _value);
  }

  String orderdate = '';
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
