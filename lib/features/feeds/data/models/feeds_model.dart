import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/feeds.dart';


part 'feeds_model.g.dart';

@JsonSerializable()
class FeedsModel extends Feeds {

  String? name;
  FeedsModel(this.name,);





  factory FeedsModel.fromJson(Map<String, dynamic> json) => _$FeedsModelFromJson(json);

  Map<String, dynamic> toJson() => _$FeedsModelToJson(this);
}