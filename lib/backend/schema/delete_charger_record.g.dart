// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_charger_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DeleteChargerRecord> _$deleteChargerRecordSerializer =
    new _$DeleteChargerRecordSerializer();

class _$DeleteChargerRecordSerializer
    implements StructuredSerializer<DeleteChargerRecord> {
  @override
  final Iterable<Type> types = const [
    DeleteChargerRecord,
    _$DeleteChargerRecord
  ];
  @override
  final String wireName = 'DeleteChargerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DeleteChargerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wronglocation;
    if (value != null) {
      result
        ..add('wronglocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wrongadress;
    if (value != null) {
      result
        ..add('wrongadress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.broken;
    if (value != null) {
      result
        ..add('broken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delete;
    if (value != null) {
      result
        ..add('delete')
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
  DeleteChargerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DeleteChargerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wronglocation':
          result.wronglocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wrongadress':
          result.wrongadress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'broken':
          result.broken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delete':
          result.delete = serializers.deserialize(value,
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

class _$DeleteChargerRecord extends DeleteChargerRecord {
  @override
  final LatLng? location;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? wronglocation;
  @override
  final String? wrongadress;
  @override
  final String? broken;
  @override
  final String? delete;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DeleteChargerRecord(
          [void Function(DeleteChargerRecordBuilder)? updates]) =>
      (new DeleteChargerRecordBuilder()..update(updates))._build();

  _$DeleteChargerRecord._(
      {this.location,
      this.name,
      this.address,
      this.wronglocation,
      this.wrongadress,
      this.broken,
      this.delete,
      this.ffRef})
      : super._();

  @override
  DeleteChargerRecord rebuild(
          void Function(DeleteChargerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteChargerRecordBuilder toBuilder() =>
      new DeleteChargerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteChargerRecord &&
        location == other.location &&
        name == other.name &&
        address == other.address &&
        wronglocation == other.wronglocation &&
        wrongadress == other.wrongadress &&
        broken == other.broken &&
        delete == other.delete &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, location.hashCode), name.hashCode),
                            address.hashCode),
                        wronglocation.hashCode),
                    wrongadress.hashCode),
                broken.hashCode),
            delete.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeleteChargerRecord')
          ..add('location', location)
          ..add('name', name)
          ..add('address', address)
          ..add('wronglocation', wronglocation)
          ..add('wrongadress', wrongadress)
          ..add('broken', broken)
          ..add('delete', delete)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DeleteChargerRecordBuilder
    implements Builder<DeleteChargerRecord, DeleteChargerRecordBuilder> {
  _$DeleteChargerRecord? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _wronglocation;
  String? get wronglocation => _$this._wronglocation;
  set wronglocation(String? wronglocation) =>
      _$this._wronglocation = wronglocation;

  String? _wrongadress;
  String? get wrongadress => _$this._wrongadress;
  set wrongadress(String? wrongadress) => _$this._wrongadress = wrongadress;

  String? _broken;
  String? get broken => _$this._broken;
  set broken(String? broken) => _$this._broken = broken;

  String? _delete;
  String? get delete => _$this._delete;
  set delete(String? delete) => _$this._delete = delete;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DeleteChargerRecordBuilder() {
    DeleteChargerRecord._initializeBuilder(this);
  }

  DeleteChargerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _name = $v.name;
      _address = $v.address;
      _wronglocation = $v.wronglocation;
      _wrongadress = $v.wrongadress;
      _broken = $v.broken;
      _delete = $v.delete;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteChargerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteChargerRecord;
  }

  @override
  void update(void Function(DeleteChargerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteChargerRecord build() => _build();

  _$DeleteChargerRecord _build() {
    final _$result = _$v ??
        new _$DeleteChargerRecord._(
            location: location,
            name: name,
            address: address,
            wronglocation: wronglocation,
            wrongadress: wrongadress,
            broken: broken,
            delete: delete,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
