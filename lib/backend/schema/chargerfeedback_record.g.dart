// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chargerfeedback_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChargerfeedbackRecord> _$chargerfeedbackRecordSerializer =
    new _$ChargerfeedbackRecordSerializer();

class _$ChargerfeedbackRecordSerializer
    implements StructuredSerializer<ChargerfeedbackRecord> {
  @override
  final Iterable<Type> types = const [
    ChargerfeedbackRecord,
    _$ChargerfeedbackRecord
  ];
  @override
  final String wireName = 'ChargerfeedbackRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChargerfeedbackRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.function;
    if (value != null) {
      result
        ..add('function')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.speed;
    if (value != null) {
      result
        ..add('speed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeStamp;
    if (value != null) {
      result
        ..add('time_stamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.chargerRef;
    if (value != null) {
      result
        ..add('charger_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cost;
    if (value != null) {
      result
        ..add('Cost')
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
  ChargerfeedbackRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChargerfeedbackRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'function':
          result.function = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time_stamp':
          result.timeStamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'charger_ref':
          result.chargerRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Cost':
          result.cost = serializers.deserialize(value,
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

class _$ChargerfeedbackRecord extends ChargerfeedbackRecord {
  @override
  final String? function;
  @override
  final String? speed;
  @override
  final String? location;
  @override
  final DateTime? timeStamp;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? chargerRef;
  @override
  final String? cost;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChargerfeedbackRecord(
          [void Function(ChargerfeedbackRecordBuilder)? updates]) =>
      (new ChargerfeedbackRecordBuilder()..update(updates))._build();

  _$ChargerfeedbackRecord._(
      {this.function,
      this.speed,
      this.location,
      this.timeStamp,
      this.description,
      this.userRef,
      this.chargerRef,
      this.cost,
      this.ffRef})
      : super._();

  @override
  ChargerfeedbackRecord rebuild(
          void Function(ChargerfeedbackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargerfeedbackRecordBuilder toBuilder() =>
      new ChargerfeedbackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargerfeedbackRecord &&
        function == other.function &&
        speed == other.speed &&
        location == other.location &&
        timeStamp == other.timeStamp &&
        description == other.description &&
        userRef == other.userRef &&
        chargerRef == other.chargerRef &&
        cost == other.cost &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, function.hashCode), speed.hashCode),
                                location.hashCode),
                            timeStamp.hashCode),
                        description.hashCode),
                    userRef.hashCode),
                chargerRef.hashCode),
            cost.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargerfeedbackRecord')
          ..add('function', function)
          ..add('speed', speed)
          ..add('location', location)
          ..add('timeStamp', timeStamp)
          ..add('description', description)
          ..add('userRef', userRef)
          ..add('chargerRef', chargerRef)
          ..add('cost', cost)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChargerfeedbackRecordBuilder
    implements Builder<ChargerfeedbackRecord, ChargerfeedbackRecordBuilder> {
  _$ChargerfeedbackRecord? _$v;

  String? _function;
  String? get function => _$this._function;
  set function(String? function) => _$this._function = function;

  String? _speed;
  String? get speed => _$this._speed;
  set speed(String? speed) => _$this._speed = speed;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _timeStamp;
  DateTime? get timeStamp => _$this._timeStamp;
  set timeStamp(DateTime? timeStamp) => _$this._timeStamp = timeStamp;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _chargerRef;
  DocumentReference<Object?>? get chargerRef => _$this._chargerRef;
  set chargerRef(DocumentReference<Object?>? chargerRef) =>
      _$this._chargerRef = chargerRef;

  String? _cost;
  String? get cost => _$this._cost;
  set cost(String? cost) => _$this._cost = cost;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChargerfeedbackRecordBuilder() {
    ChargerfeedbackRecord._initializeBuilder(this);
  }

  ChargerfeedbackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _function = $v.function;
      _speed = $v.speed;
      _location = $v.location;
      _timeStamp = $v.timeStamp;
      _description = $v.description;
      _userRef = $v.userRef;
      _chargerRef = $v.chargerRef;
      _cost = $v.cost;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargerfeedbackRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargerfeedbackRecord;
  }

  @override
  void update(void Function(ChargerfeedbackRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargerfeedbackRecord build() => _build();

  _$ChargerfeedbackRecord _build() {
    final _$result = _$v ??
        new _$ChargerfeedbackRecord._(
            function: function,
            speed: speed,
            location: location,
            timeStamp: timeStamp,
            description: description,
            userRef: userRef,
            chargerRef: chargerRef,
            cost: cost,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
