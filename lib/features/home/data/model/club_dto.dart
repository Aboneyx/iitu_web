// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_dto.freezed.dart';
part 'club_dto.g.dart';

@freezed
class ClubDTO with _$ClubDTO {
  const factory ClubDTO({
    required int id,
    String? name,
    String? description,
    String? avatar,
    List<String>? images,

    // @JsonKey(name: "in_favorite") bool? inFav,
    // @JsonKey(name: 'respond_count') int? respondCount,
  }) = _ClubDTO;

  factory ClubDTO.fromJson(Map<String, dynamic> json) => _$ClubDTOFromJson(json);
}
