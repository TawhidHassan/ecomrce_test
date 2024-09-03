import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';


part 'sucess_model.g.dart';

@JsonSerializable()
class SucessModel  {

  String? status;
  String? message;



  SucessModel(this.status, this.message);

  factory SucessModel.fromJson(Map<String, dynamic> json) => _$SucessModelFromJson(json);
  Map<String, dynamic> toJson() => _$SucessModelToJson(this);
}
