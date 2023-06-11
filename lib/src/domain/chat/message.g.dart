// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      text: json['text'] as String,
      messageFromType:
          $enumDecode(_$MessageFromTypeEnumMap, json['messageFromType']),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'text': instance.text,
      'messageFromType': _$MessageFromTypeEnumMap[instance.messageFromType]!,
    };

const _$MessageFromTypeEnumMap = {
  MessageFromType.user: 'user',
  MessageFromType.assistant: 'assistant',
  MessageFromType.system: 'system',
};
