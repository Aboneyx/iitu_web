// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    String? id,
    String? name,
    String? email,
    // String? avatar,
    // List<String>? images,

    // @JsonKey(name: "in_favorite") bool? inFav,
    // @JsonKey(name: 'respond_count') int? respondCount,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
}
