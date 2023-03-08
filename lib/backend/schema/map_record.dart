import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'map_record.g.dart';

abstract class MapRecord implements Built<MapRecord, MapRecordBuilder> {
  static Serializer<MapRecord> get serializer => _$mapRecordSerializer;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  LatLng? get location;

  String? get name;

  String? get type;

  String? get adress;

  String? get connector;

  String? get kW;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MapRecordBuilder builder) => builder
    ..name = ''
    ..type = ''
    ..adress = ''
    ..connector = ''
    ..kW = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('map');

  static Stream<MapRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MapRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MapRecord._();
  factory MapRecord([void Function(MapRecordBuilder) updates]) = _$MapRecord;

  static MapRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMapRecordData({
  DateTime? createdAt,
  LatLng? location,
  String? name,
  String? type,
  String? adress,
  String? connector,
  String? kW,
}) {
  final firestoreData = serializers.toFirestore(
    MapRecord.serializer,
    MapRecord(
      (m) => m
        ..createdAt = createdAt
        ..location = location
        ..name = name
        ..type = type
        ..adress = adress
        ..connector = connector
        ..kW = kW,
    ),
  );

  return firestoreData;
}
