import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sweetlifesaver/utils/json/json_parse.dart';

part 'add_activity_temp.freezed.dart';
part 'add_activity_temp.g.dart';

List<AddActivityTemp> AddActivityTempFromJson(String str) =>
    List<AddActivityTemp>.from(
      json.decode(str).map((x) => AddActivityTemp.fromJson(x)),
    );

String AddActivityTempToJson(List<AddActivityTemp> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class AddActivityTemp with _$AddActivityTemp {
  const factory AddActivityTemp({
    String? activityName,
    String? activityTypeId,
    String? activityTypeName,
    String? activityTypeIcon,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? me,
    @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? calories,
    @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? duration,
    String? level,
    String? types,
  }) = _AddActivityTemp;

  factory AddActivityTemp.fromJson(Map<String, dynamic> json) =>
      _$AddActivityTempFromJson(json);
}
