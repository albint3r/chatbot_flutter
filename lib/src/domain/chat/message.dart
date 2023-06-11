import 'package:freezed_annotation/freezed_annotation.dart';

import 'enum_message_from_type.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    required String text,
    required MessageFromType messageFromType,
  }) = _Message;

  const Message._();

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  bool get isFromUser => messageFromType == MessageFromType.user;
}
