// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliveryaddress_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeliveryaddressRecord> _$deliveryaddressRecordSerializer =
    new _$DeliveryaddressRecordSerializer();

class _$DeliveryaddressRecordSerializer
    implements StructuredSerializer<DeliveryaddressRecord> {
  @override
  final Iterable<Type> types = const [
    DeliveryaddressRecord,
    _$DeliveryaddressRecord
  ];
  @override
  final String wireName = 'DeliveryaddressRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DeliveryaddressRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deliveryaddressname;
    if (value != null) {
      result
        ..add('deliveryaddressname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DeliveryaddressRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeliveryaddressRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'deliveryaddressname':
          result.deliveryaddressname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DeliveryaddressRecord extends DeliveryaddressRecord {
  @override
  final int? userid;
  @override
  final String? deliveryaddressname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DeliveryaddressRecord(
          [void Function(DeliveryaddressRecordBuilder)? updates]) =>
      (new DeliveryaddressRecordBuilder()..update(updates))._build();

  _$DeliveryaddressRecord._({this.userid, this.deliveryaddressname, this.ffRef})
      : super._();

  @override
  DeliveryaddressRecord rebuild(
          void Function(DeliveryaddressRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeliveryaddressRecordBuilder toBuilder() =>
      new DeliveryaddressRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeliveryaddressRecord &&
        userid == other.userid &&
        deliveryaddressname == other.deliveryaddressname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, userid.hashCode), deliveryaddressname.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeliveryaddressRecord')
          ..add('userid', userid)
          ..add('deliveryaddressname', deliveryaddressname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DeliveryaddressRecordBuilder
    implements Builder<DeliveryaddressRecord, DeliveryaddressRecordBuilder> {
  _$DeliveryaddressRecord? _$v;

  int? _userid;
  int? get userid => _$this._userid;
  set userid(int? userid) => _$this._userid = userid;

  String? _deliveryaddressname;
  String? get deliveryaddressname => _$this._deliveryaddressname;
  set deliveryaddressname(String? deliveryaddressname) =>
      _$this._deliveryaddressname = deliveryaddressname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DeliveryaddressRecordBuilder() {
    DeliveryaddressRecord._initializeBuilder(this);
  }

  DeliveryaddressRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userid = $v.userid;
      _deliveryaddressname = $v.deliveryaddressname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeliveryaddressRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeliveryaddressRecord;
  }

  @override
  void update(void Function(DeliveryaddressRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeliveryaddressRecord build() => _build();

  _$DeliveryaddressRecord _build() {
    final _$result = _$v ??
        new _$DeliveryaddressRecord._(
            userid: userid,
            deliveryaddressname: deliveryaddressname,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
