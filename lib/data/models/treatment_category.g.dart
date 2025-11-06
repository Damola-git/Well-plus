// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'treatment_category.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTreatmentCategoryCollection on Isar {
  IsarCollection<TreatmentCategory> get treatmentCategorys => this.collection();
}

const TreatmentCategorySchema = CollectionSchema(
  name: r'TreatmentCategory',
  id: -2229719983513027217,
  properties: {
    r'backgroundColorValue': PropertySchema(
      id: 0,
      name: r'backgroundColorValue',
      type: IsarType.long,
    ),
    r'emoji': PropertySchema(
      id: 1,
      name: r'emoji',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'otcCount': PropertySchema(
      id: 3,
      name: r'otcCount',
      type: IsarType.long,
    ),
    r'rxCount': PropertySchema(
      id: 4,
      name: r'rxCount',
      type: IsarType.long,
    )
  },
  estimateSize: _treatmentCategoryEstimateSize,
  serialize: _treatmentCategorySerialize,
  deserialize: _treatmentCategoryDeserialize,
  deserializeProp: _treatmentCategoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _treatmentCategoryGetId,
  getLinks: _treatmentCategoryGetLinks,
  attach: _treatmentCategoryAttach,
  version: '3.1.0+1',
);

int _treatmentCategoryEstimateSize(
  TreatmentCategory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.emoji.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _treatmentCategorySerialize(
  TreatmentCategory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.backgroundColorValue);
  writer.writeString(offsets[1], object.emoji);
  writer.writeString(offsets[2], object.name);
  writer.writeLong(offsets[3], object.otcCount);
  writer.writeLong(offsets[4], object.rxCount);
}

TreatmentCategory _treatmentCategoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TreatmentCategory();
  object.backgroundColorValue = reader.readLong(offsets[0]);
  object.emoji = reader.readString(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  object.otcCount = reader.readLong(offsets[3]);
  object.rxCount = reader.readLong(offsets[4]);
  return object;
}

P _treatmentCategoryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _treatmentCategoryGetId(TreatmentCategory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _treatmentCategoryGetLinks(
    TreatmentCategory object) {
  return [];
}

void _treatmentCategoryAttach(
    IsarCollection<dynamic> col, Id id, TreatmentCategory object) {
  object.id = id;
}

extension TreatmentCategoryQueryWhereSort
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QWhere> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TreatmentCategoryQueryWhere
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QWhereClause> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TreatmentCategoryQueryFilter
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QFilterCondition> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      backgroundColorValueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'backgroundColorValue',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      backgroundColorValueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'backgroundColorValue',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      backgroundColorValueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'backgroundColorValue',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      backgroundColorValueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'backgroundColorValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emoji',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emoji',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      emojiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      otcCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otcCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      otcCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'otcCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      otcCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'otcCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      otcCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'otcCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      rxCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rxCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      rxCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rxCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      rxCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rxCount',
        value: value,
      ));
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterFilterCondition>
      rxCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rxCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TreatmentCategoryQueryObject
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QFilterCondition> {}

extension TreatmentCategoryQueryLinks
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QFilterCondition> {}

extension TreatmentCategoryQuerySortBy
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QSortBy> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByBackgroundColorValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundColorValue', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByBackgroundColorValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundColorValue', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByOtcCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otcCount', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByOtcCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otcCount', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByRxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rxCount', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      sortByRxCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rxCount', Sort.desc);
    });
  }
}

extension TreatmentCategoryQuerySortThenBy
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QSortThenBy> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByBackgroundColorValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundColorValue', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByBackgroundColorValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'backgroundColorValue', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByOtcCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otcCount', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByOtcCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otcCount', Sort.desc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByRxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rxCount', Sort.asc);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QAfterSortBy>
      thenByRxCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rxCount', Sort.desc);
    });
  }
}

extension TreatmentCategoryQueryWhereDistinct
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct> {
  QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct>
      distinctByBackgroundColorValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'backgroundColorValue');
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct> distinctByEmoji(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emoji', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct>
      distinctByOtcCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'otcCount');
    });
  }

  QueryBuilder<TreatmentCategory, TreatmentCategory, QDistinct>
      distinctByRxCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rxCount');
    });
  }
}

extension TreatmentCategoryQueryProperty
    on QueryBuilder<TreatmentCategory, TreatmentCategory, QQueryProperty> {
  QueryBuilder<TreatmentCategory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TreatmentCategory, int, QQueryOperations>
      backgroundColorValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'backgroundColorValue');
    });
  }

  QueryBuilder<TreatmentCategory, String, QQueryOperations> emojiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emoji');
    });
  }

  QueryBuilder<TreatmentCategory, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<TreatmentCategory, int, QQueryOperations> otcCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'otcCount');
    });
  }

  QueryBuilder<TreatmentCategory, int, QQueryOperations> rxCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rxCount');
    });
  }
}
