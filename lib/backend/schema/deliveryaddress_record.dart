import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'deliveryaddress_record.g.dart';

abstract class DeliveryaddressRecord
    implements Built<DeliveryaddressRecord, DeliveryaddressRecordBuilder> {
  static Serializer<DeliveryaddressRecord> get serializer =>
      _$deliveryaddressRecordSerializer;

  int? get userid;

  String? get deliveryaddressname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DeliveryaddressRecordBuilder builder) =>
      builder
        ..userid = 0
        ..deliveryaddressname = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deliveryaddress');

  static Stream<DeliveryaddressRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DeliveryaddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DeliveryaddressRecord._();
  factory DeliveryaddressRecord(
          [void Function(DeliveryaddressRecordBuilder) updates]) =
      _$DeliveryaddressRecord;

  static DeliveryaddressRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDeliveryaddressRecordData({
  int? userid,
  String? deliveryaddressname,
}) {
  final firestoreData = serializers.toFirestore(
    DeliveryaddressRecord.serializer,
    DeliveryaddressRecord(
      (d) => d
        ..userid = userid
        ..deliveryaddressname = deliveryaddressname,
    ),
  );

  return firestoreData;
}
