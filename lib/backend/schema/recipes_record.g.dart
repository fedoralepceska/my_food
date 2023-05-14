// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecipesRecord> _$recipesRecordSerializer =
    new _$RecipesRecordSerializer();

class _$RecipesRecordSerializer implements StructuredSerializer<RecipesRecord> {
  @override
  final Iterable<Type> types = const [RecipesRecord, _$RecipesRecord];
  @override
  final String wireName = 'RecipesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RecipesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ingredients;
    if (value != null) {
      result
        ..add('ingredients')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preparation;
    if (value != null) {
      result
        ..add('preparation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoUrl;
    if (value != null) {
      result
        ..add('video_url')
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
  RecipesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecipesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ingredients':
          result.ingredients = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preparation':
          result.preparation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video_url':
          result.videoUrl = serializers.deserialize(value,
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

class _$RecipesRecord extends RecipesRecord {
  @override
  final String? name;
  @override
  final DateTime? createdAt;
  @override
  final String? photoUrl;
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? ingredients;
  @override
  final String? preparation;
  @override
  final String? videoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecipesRecord([void Function(RecipesRecordBuilder)? updates]) =>
      (new RecipesRecordBuilder()..update(updates))._build();

  _$RecipesRecord._(
      {this.name,
      this.createdAt,
      this.photoUrl,
      this.owner,
      this.uid,
      this.createdTime,
      this.ingredients,
      this.preparation,
      this.videoUrl,
      this.ffRef})
      : super._();

  @override
  RecipesRecord rebuild(void Function(RecipesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecipesRecordBuilder toBuilder() => new RecipesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipesRecord &&
        name == other.name &&
        createdAt == other.createdAt &&
        photoUrl == other.photoUrl &&
        owner == other.owner &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        ingredients == other.ingredients &&
        preparation == other.preparation &&
        videoUrl == other.videoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, ingredients.hashCode);
    _$hash = $jc(_$hash, preparation.hashCode);
    _$hash = $jc(_$hash, videoUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipesRecord')
          ..add('name', name)
          ..add('createdAt', createdAt)
          ..add('photoUrl', photoUrl)
          ..add('owner', owner)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('ingredients', ingredients)
          ..add('preparation', preparation)
          ..add('videoUrl', videoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecipesRecordBuilder
    implements Builder<RecipesRecord, RecipesRecordBuilder> {
  _$RecipesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _ingredients;
  String? get ingredients => _$this._ingredients;
  set ingredients(String? ingredients) => _$this._ingredients = ingredients;

  String? _preparation;
  String? get preparation => _$this._preparation;
  set preparation(String? preparation) => _$this._preparation = preparation;

  String? _videoUrl;
  String? get videoUrl => _$this._videoUrl;
  set videoUrl(String? videoUrl) => _$this._videoUrl = videoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecipesRecordBuilder() {
    RecipesRecord._initializeBuilder(this);
  }

  RecipesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _createdAt = $v.createdAt;
      _photoUrl = $v.photoUrl;
      _owner = $v.owner;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _ingredients = $v.ingredients;
      _preparation = $v.preparation;
      _videoUrl = $v.videoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecipesRecord;
  }

  @override
  void update(void Function(RecipesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipesRecord build() => _build();

  _$RecipesRecord _build() {
    final _$result = _$v ??
        new _$RecipesRecord._(
            name: name,
            createdAt: createdAt,
            photoUrl: photoUrl,
            owner: owner,
            uid: uid,
            createdTime: createdTime,
            ingredients: ingredients,
            preparation: preparation,
            videoUrl: videoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
