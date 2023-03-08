import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chargerfeedback_record.g.dart';

abstract class ChargerfeedbackRecord
    implements Built<ChargerfeedbackRecord, ChargerfeedbackRecordBuilder> {
  static Serializer<ChargerfeedbackRecord> get serializer =>
      _$chargerfeedbackRecordSerializer;

  String? get function;

  String? get speed;

  String? get location;

  @BuiltValueField(wireName: 'time_stamp')
  DateTime? get timeStamp;

  String? get description;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'charger_ref')
  DocumentReference? get chargerRef;

  @BuiltValueField(wireName: 'Cost')
  String? get cost;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChargerfeedbackRecordBuilder builder) =>
      builder
        ..function = ''
        ..speed = ''
        ..location = ''
        ..description = ''
        ..cost = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chargerfeedback');

  static Stream<ChargerfeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChargerfeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChargerfeedbackRecord._();
  factory ChargerfeedbackRecord(
          [void Function(ChargerfeedbackRecordBuilder) updates]) =
      _$ChargerfeedbackRecord;

  static ChargerfeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChargerfeedbackRecordData({
  String? function,
  String? speed,
  String? location,
  DateTime? timeStamp,
  String? description,
  DocumentReference? userRef,
  DocumentReference? chargerRef,
  String? cost,
}) {
  final firestoreData = serializers.toFirestore(
    ChargerfeedbackRecord.serializer,
    ChargerfeedbackRecord(
      (c) => c
        ..function = function
        ..speed = speed
        ..location = location
        ..timeStamp = timeStamp
        ..description = description
        ..userRef = userRef
        ..chargerRef = chargerRef
        ..cost = cost,
    ),
  );

  return firestoreData;
}
