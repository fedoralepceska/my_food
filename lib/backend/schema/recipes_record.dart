import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recipes_record.g.dart';

abstract class RecipesRecord
    implements Built<RecipesRecord, RecipesRecordBuilder> {
  static Serializer<RecipesRecord> get serializer => _$recipesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  DocumentReference? get owner;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get ingredients;

  String? get preparation;

  @BuiltValueField(wireName: 'video_url')
  String? get videoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecipesRecordBuilder builder) => builder
    ..name = ''
    ..photoUrl = ''
    ..uid = ''
    ..ingredients = ''
    ..preparation = ''
    ..videoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recipes');

  static Stream<RecipesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecipesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecipesRecord._();
  factory RecipesRecord([void Function(RecipesRecordBuilder) updates]) =
      _$RecipesRecord;

  static RecipesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecipesRecordData({
  String? name,
  DateTime? createdAt,
  String? photoUrl,
  DocumentReference? owner,
  String? uid,
  DateTime? createdTime,
  String? ingredients,
  String? preparation,
  String? videoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    RecipesRecord.serializer,
    RecipesRecord(
      (r) => r
        ..name = name
        ..createdAt = createdAt
        ..photoUrl = photoUrl
        ..owner = owner
        ..uid = uid
        ..createdTime = createdTime
        ..ingredients = ingredients
        ..preparation = preparation
        ..videoUrl = videoUrl,
    ),
  );

  return firestoreData;
}
