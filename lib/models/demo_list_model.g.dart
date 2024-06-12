// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demo_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DemoListModelImpl _$$DemoListModelImplFromJson(Map<String, dynamic> json) => _$DemoListModelImpl(
      demoData:
          (json['demoData'] as List<dynamic>?)?.map((e) => DemoModel.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$DemoListModelImplToJson(_$DemoListModelImpl instance) => <String, dynamic>{
      'demoData': instance.demoData,
    };
