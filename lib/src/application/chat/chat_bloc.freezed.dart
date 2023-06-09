// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEventStarted value) started,
    required TResult Function(_ChatEventSendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventStarted value)? started,
    TResult? Function(_ChatEventSendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventStarted value)? started,
    TResult Function(_ChatEventSendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatEventStartedCopyWith<$Res> {
  factory _$$_ChatEventStartedCopyWith(
          _$_ChatEventStarted value, $Res Function(_$_ChatEventStarted) then) =
      __$$_ChatEventStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatEventStartedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ChatEventStarted>
    implements _$$_ChatEventStartedCopyWith<$Res> {
  __$$_ChatEventStartedCopyWithImpl(
      _$_ChatEventStarted _value, $Res Function(_$_ChatEventStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatEventStarted implements _ChatEventStarted {
  const _$_ChatEventStarted();

  @override
  String toString() {
    return 'ChatEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatEventStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEventStarted value) started,
    required TResult Function(_ChatEventSendMessage value) sendMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventStarted value)? started,
    TResult? Function(_ChatEventSendMessage value)? sendMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventStarted value)? started,
    TResult Function(_ChatEventSendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _ChatEventStarted implements ChatEvent {
  const factory _ChatEventStarted() = _$_ChatEventStarted;
}

/// @nodoc
abstract class _$$_ChatEventSendMessageCopyWith<$Res> {
  factory _$$_ChatEventSendMessageCopyWith(_$_ChatEventSendMessage value,
          $Res Function(_$_ChatEventSendMessage) then) =
      __$$_ChatEventSendMessageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChatEventSendMessageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ChatEventSendMessage>
    implements _$$_ChatEventSendMessageCopyWith<$Res> {
  __$$_ChatEventSendMessageCopyWithImpl(_$_ChatEventSendMessage _value,
      $Res Function(_$_ChatEventSendMessage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChatEventSendMessage implements _ChatEventSendMessage {
  const _$_ChatEventSendMessage();

  @override
  String toString() {
    return 'ChatEvent.sendMessage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChatEventSendMessage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendMessage,
  }) {
    return sendMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendMessage,
  }) {
    return sendMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatEventStarted value) started,
    required TResult Function(_ChatEventSendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatEventStarted value)? started,
    TResult? Function(_ChatEventSendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatEventStarted value)? started,
    TResult Function(_ChatEventSendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _ChatEventSendMessage implements ChatEvent {
  const factory _ChatEventSendMessage() = _$_ChatEventSendMessage;
}

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  FormGroup? get form => throw _privateConstructorUsedError;
  String? get chatControlName => throw _privateConstructorUsedError;
  List<Message> get chatMessages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading,
      FormGroup? form,
      String? chatControlName,
      List<Message> chatMessages});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? form = freezed,
    Object? chatControlName = freezed,
    Object? chatMessages = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
      chatControlName: freezed == chatControlName
          ? _value.chatControlName
          : chatControlName // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FormGroup? form,
      String? chatControlName,
      List<Message> chatMessages});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? form = freezed,
    Object? chatControlName = freezed,
    Object? chatMessages = null,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as FormGroup?,
      chatControlName: freezed == chatControlName
          ? _value.chatControlName
          : chatControlName // ignore: cast_nullable_to_non_nullable
              as String?,
      chatMessages: null == chatMessages
          ? _value._chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading,
      this.form,
      this.chatControlName,
      required final List<Message> chatMessages})
      : _chatMessages = chatMessages;

  @override
  final bool isLoading;
  @override
  final FormGroup? form;
  @override
  final String? chatControlName;
  final List<Message> _chatMessages;
  @override
  List<Message> get chatMessages {
    if (_chatMessages is EqualUnmodifiableListView) return _chatMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatMessages);
  }

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, form: $form, chatControlName: $chatControlName, chatMessages: $chatMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.chatControlName, chatControlName) ||
                other.chatControlName == chatControlName) &&
            const DeepCollectionEquality()
                .equals(other._chatMessages, _chatMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, form, chatControlName,
      const DeepCollectionEquality().hash(_chatMessages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatState {
  const factory _Initial(
      {required final bool isLoading,
      final FormGroup? form,
      final String? chatControlName,
      required final List<Message> chatMessages}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  FormGroup? get form;
  @override
  String? get chatControlName;
  @override
  List<Message> get chatMessages;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
