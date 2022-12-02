// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubDTO _$ClubDTOFromJson(Map<String, dynamic> json) {
  return _ClubDTO.fromJson(json);
}

/// @nodoc
mixin _$ClubDTO {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubDTOCopyWith<ClubDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDTOCopyWith<$Res> {
  factory $ClubDTOCopyWith(ClubDTO value, $Res Function(ClubDTO) then) =
      _$ClubDTOCopyWithImpl<$Res, ClubDTO>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? avatar,
      List<String>? images});
}

/// @nodoc
class _$ClubDTOCopyWithImpl<$Res, $Val extends ClubDTO>
    implements $ClubDTOCopyWith<$Res> {
  _$ClubDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? avatar = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubDTOCopyWith<$Res> implements $ClubDTOCopyWith<$Res> {
  factory _$$_ClubDTOCopyWith(
          _$_ClubDTO value, $Res Function(_$_ClubDTO) then) =
      __$$_ClubDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? avatar,
      List<String>? images});
}

/// @nodoc
class __$$_ClubDTOCopyWithImpl<$Res>
    extends _$ClubDTOCopyWithImpl<$Res, _$_ClubDTO>
    implements _$$_ClubDTOCopyWith<$Res> {
  __$$_ClubDTOCopyWithImpl(_$_ClubDTO _value, $Res Function(_$_ClubDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? avatar = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_ClubDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubDTO implements _ClubDTO {
  const _$_ClubDTO(
      {this.id,
      this.name,
      this.description,
      this.avatar,
      final List<String>? images})
      : _images = images;

  factory _$_ClubDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ClubDTOFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? avatar;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClubDTO(id: $id, name: $name, description: $description, avatar: $avatar, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, avatar,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubDTOCopyWith<_$_ClubDTO> get copyWith =>
      __$$_ClubDTOCopyWithImpl<_$_ClubDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubDTOToJson(
      this,
    );
  }
}

abstract class _ClubDTO implements ClubDTO {
  const factory _ClubDTO(
      {final String? id,
      final String? name,
      final String? description,
      final String? avatar,
      final List<String>? images}) = _$_ClubDTO;

  factory _ClubDTO.fromJson(Map<String, dynamic> json) = _$_ClubDTO.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get avatar;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_ClubDTOCopyWith<_$_ClubDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
