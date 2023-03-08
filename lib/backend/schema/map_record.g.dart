// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapRecord> _$mapRecordSerializer = new _$MapRecordSerializer();

class _$MapRecordSerializer implements StructuredSerializer<MapRecord> {
  @override
  final Iterable<Type> types = const [MapRecord, _$MapRecord];
  @override
  final String wireName = 'MapRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.connector;
    if (value != null) {
      result
        ..add('connector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.kW;
    if (value != null) {
      result
        ..add('kW')
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
  MapRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'connector':
          result.connector = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'kW':
          result.kW = serializers.deserialize(value,
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

class _$MapRecord extends MapRecord {
  @override
  final DateTime? createdAt;
  @override
  final LatLng? location;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? adress;
  @override
  final String? connector;
  @override
  final String? kW;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MapRecord([void Function(MapRecordBuilder)? updates]) =>
      (new MapRecordBuilder()..update(updates))._build();

  _$MapRecord._(
      {this.createdAt,
      this.location,
      this.name,
      this.type,
      this.adress,
      this.connector,
      this.kW,
      this.ffRef})
      : super._();

  @override
  MapRecord rebuild(void Function(MapRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapRecordBuilder toBuilder() => new MapRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapRecord &&
        createdAt == other.createdAt &&
        location == other.location &&
        name == other.name &&
        type == other.type &&
        adress == other.adress &&
        connector == other.connector &&
        kW == other.kW &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, createdAt.hashCode), location.hashCode),
                            name.hashCode),
                        type.hashCode),
                    adress.hashCode),
                connector.hashCode),
            kW.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapRecord')
          ..add('createdAt', createdAt)
          ..add('location', location)
          ..add('name', name)
          ..add('type', type)
          ..add('adress', adress)
          ..add('connector', connector)
          ..add('kW', kW)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MapRecordBuilder implements Builder<MapRecord, MapRecordBuilder> {
  _$MapRecord? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _adress;
  String? get adress => _$this._adress;
  set adress(String? adress) => _$this._adress = adress;

  String? _connector;
  String? get connector => _$this._connector;
  set connector(String? connector) => _$this._connector = connector;

  String? _kW;
  String? get kW => _$this._kW;
  set kW(String? kW) => _$this._kW = kW;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MapRecordBuilder() {
    MapRecord._initializeBuilder(this);
  }

  MapRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _location = $v.location;
      _name = $v.name;
      _type = $v.type;
      _adress = $v.adress;
      _connector = $v.connector;
      _kW = $v.kW;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapRecord;
  }

  @override
  void update(void Function(MapRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapRecord build() => _build();

  _$MapRecord _build() {
    final _$result = _$v ??
        new _$MapRecord._(
            createdAt: createdAt,
            location: location,
            name: name,
            type: type,
            adress: adress,
            connector: connector,
            kW: kW,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
