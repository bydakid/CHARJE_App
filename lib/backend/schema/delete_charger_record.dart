import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'delete_charger_record.g.dart';

abstract class DeleteChargerRecord
    implements Built<DeleteChargerRecord, DeleteChargerRecordBuilder> {
  static Serializer<DeleteChargerRecord> get serializer =>
      _$deleteChargerRecordSerializer;

  LatLng? get location;

  String? get name;

  String? get address;

  String? get wronglocation;

  String? get wrongadress;

  String? get broken;

  String? get delete;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DeleteChargerRecordBuilder builder) => builder
    ..name = ''
    ..address = ''
    ..wronglocation = ''
    ..wrongadress = ''
    ..broken = ''
    ..delete = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('deleteCharger');

  static Stream<DeleteChargerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DeleteChargerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DeleteChargerRecord._();
  factory DeleteChargerRecord(
          [void Function(DeleteChargerRecordBuilder) updates]) =
      _$DeleteChargerRecord;

  static DeleteChargerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDeleteChargerRecordData({
  LatLng? location,
  String? name,
  String? address,
  String? wronglocation,
  String? wrongadress,
  String? broken,
  String? delete,
}) {
  final firestoreData = serializers.toFirestore(
    DeleteChargerRecord.serializer,
    DeleteChargerRecord(
      (d) => d
        ..location = location
        ..name = name
        ..address = address
        ..wronglocation = wronglocation
        ..wrongadress = wrongadress
        ..broken = broken
        ..delete = delete,
    ),
  );

  return firestoreData;
}
