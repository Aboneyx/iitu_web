// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubDTO _$$_ClubDTOFromJson(Map<String, dynamic> json) => _$_ClubDTO(
      name: json['name'] as String?,
      description: json['description'] as String?,
      avatar: json['avatar'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ClubDTOToJson(_$_ClubDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'avatar': instance.avatar,
      'images': instance.images,
    };
