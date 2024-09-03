import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/likes.dart';


part 'likes_model.g.dart';

@JsonSerializable()
class LikesModel extends Likes {

  String? name;
  LikesModel(this.name,);





  factory LikesModel.fromJson(Map<String, dynamic> json) => _$LikesModelFromJson(json);

  Map<String, dynamic> toJson() => _$LikesModelToJson(this);
}