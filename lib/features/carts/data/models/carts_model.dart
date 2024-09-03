import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/carts.dart';


part 'carts_model.g.dart';

@JsonSerializable()
class CartsModel extends Carts {

  String? name;
  CartsModel(this.name,);





  factory CartsModel.fromJson(Map<String, dynamic> json) => _$CartsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartsModelToJson(this);
}