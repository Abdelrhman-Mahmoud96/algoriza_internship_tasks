// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_todo_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTodoPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoPageEventCopyWith<$Res> {
  factory $AddTodoPageEventCopyWith(
          AddTodoPageEvent value, $Res Function(AddTodoPageEvent) then) =
      _$AddTodoPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddTodoPageEventCopyWithImpl<$Res>
    implements $AddTodoPageEventCopyWith<$Res> {
  _$AddTodoPageEventCopyWithImpl(this._value, this._then);

  final AddTodoPageEvent _value;
  // ignore: unused_field
  final $Res Function(AddTodoPageEvent) _then;
}

/// @nodoc
abstract class _$$TitleChangedCopyWith<$Res> {
  factory _$$TitleChangedCopyWith(
          _$TitleChanged value, $Res Function(_$TitleChanged) then) =
      __$$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$TitleChangedCopyWith<$Res> {
  __$$TitleChangedCopyWithImpl(
      _$TitleChanged _value, $Res Function(_$TitleChanged) _then)
      : super(_value, (v) => _then(v as _$TitleChanged));

  @override
  _$TitleChanged get _value => super._value as _$TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$TitleChanged(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'AddTodoPageEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      __$$TitleChangedCopyWithImpl<_$TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements AddTodoPageEvent {
  const factory TitleChanged({required final String title}) = _$TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedCopyWith<_$TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateChangedCopyWith<$Res> {
  factory _$$DateChangedCopyWith(
          _$DateChanged value, $Res Function(_$DateChanged) then) =
      __$$DateChangedCopyWithImpl<$Res>;
  $Res call({String date});
}

/// @nodoc
class __$$DateChangedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$DateChangedCopyWith<$Res> {
  __$$DateChangedCopyWithImpl(
      _$DateChanged _value, $Res Function(_$DateChanged) _then)
      : super(_value, (v) => _then(v as _$DateChanged));

  @override
  _$DateChanged get _value => super._value as _$DateChanged;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_$DateChanged(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateChanged implements DateChanged {
  const _$DateChanged({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'AddTodoPageEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateChanged &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      __$$DateChangedCopyWithImpl<_$DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class DateChanged implements AddTodoPageEvent {
  const factory DateChanged({required final String date}) = _$DateChanged;

  String get date;
  @JsonKey(ignore: true)
  _$$DateChangedCopyWith<_$DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTimeChangedCopyWith<$Res> {
  factory _$$StartTimeChangedCopyWith(
          _$StartTimeChanged value, $Res Function(_$StartTimeChanged) then) =
      __$$StartTimeChangedCopyWithImpl<$Res>;
  $Res call({String startTime});
}

/// @nodoc
class __$$StartTimeChangedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$StartTimeChangedCopyWith<$Res> {
  __$$StartTimeChangedCopyWithImpl(
      _$StartTimeChanged _value, $Res Function(_$StartTimeChanged) _then)
      : super(_value, (v) => _then(v as _$StartTimeChanged));

  @override
  _$StartTimeChanged get _value => super._value as _$StartTimeChanged;

  @override
  $Res call({
    Object? startTime = freezed,
  }) {
    return _then(_$StartTimeChanged(
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartTimeChanged implements StartTimeChanged {
  const _$StartTimeChanged({required this.startTime});

  @override
  final String startTime;

  @override
  String toString() {
    return 'AddTodoPageEvent.startTimeChanged(startTime: $startTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTimeChanged &&
            const DeepCollectionEquality().equals(other.startTime, startTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(startTime));

  @JsonKey(ignore: true)
  @override
  _$$StartTimeChangedCopyWith<_$StartTimeChanged> get copyWith =>
      __$$StartTimeChangedCopyWithImpl<_$StartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return startTimeChanged(startTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return startTimeChanged?.call(startTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (startTimeChanged != null) {
      return startTimeChanged(startTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return startTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class StartTimeChanged implements AddTodoPageEvent {
  const factory StartTimeChanged({required final String startTime}) =
      _$StartTimeChanged;

  String get startTime;
  @JsonKey(ignore: true)
  _$$StartTimeChangedCopyWith<_$StartTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndTimeChangedCopyWith<$Res> {
  factory _$$EndTimeChangedCopyWith(
          _$EndTimeChanged value, $Res Function(_$EndTimeChanged) then) =
      __$$EndTimeChangedCopyWithImpl<$Res>;
  $Res call({String endTime});
}

/// @nodoc
class __$$EndTimeChangedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$EndTimeChangedCopyWith<$Res> {
  __$$EndTimeChangedCopyWithImpl(
      _$EndTimeChanged _value, $Res Function(_$EndTimeChanged) _then)
      : super(_value, (v) => _then(v as _$EndTimeChanged));

  @override
  _$EndTimeChanged get _value => super._value as _$EndTimeChanged;

  @override
  $Res call({
    Object? endTime = freezed,
  }) {
    return _then(_$EndTimeChanged(
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EndTimeChanged implements EndTimeChanged {
  const _$EndTimeChanged({required this.endTime});

  @override
  final String endTime;

  @override
  String toString() {
    return 'AddTodoPageEvent.endTimeChanged(endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndTimeChanged &&
            const DeepCollectionEquality().equals(other.endTime, endTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(endTime));

  @JsonKey(ignore: true)
  @override
  _$$EndTimeChangedCopyWith<_$EndTimeChanged> get copyWith =>
      __$$EndTimeChangedCopyWithImpl<_$EndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return endTimeChanged(endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return endTimeChanged?.call(endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (endTimeChanged != null) {
      return endTimeChanged(endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return endTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return endTimeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (endTimeChanged != null) {
      return endTimeChanged(this);
    }
    return orElse();
  }
}

abstract class EndTimeChanged implements AddTodoPageEvent {
  const factory EndTimeChanged({required final String endTime}) =
      _$EndTimeChanged;

  String get endTime;
  @JsonKey(ignore: true)
  _$$EndTimeChangedCopyWith<_$EndTimeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReminderChangedCopyWith<$Res> {
  factory _$$ReminderChangedCopyWith(
          _$ReminderChanged value, $Res Function(_$ReminderChanged) then) =
      __$$ReminderChangedCopyWithImpl<$Res>;
  $Res call({String reminder});
}

/// @nodoc
class __$$ReminderChangedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$ReminderChangedCopyWith<$Res> {
  __$$ReminderChangedCopyWithImpl(
      _$ReminderChanged _value, $Res Function(_$ReminderChanged) _then)
      : super(_value, (v) => _then(v as _$ReminderChanged));

  @override
  _$ReminderChanged get _value => super._value as _$ReminderChanged;

  @override
  $Res call({
    Object? reminder = freezed,
  }) {
    return _then(_$ReminderChanged(
      reminder: reminder == freezed
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReminderChanged implements ReminderChanged {
  const _$ReminderChanged({required this.reminder});

  @override
  final String reminder;

  @override
  String toString() {
    return 'AddTodoPageEvent.reminderChanged(reminder: $reminder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderChanged &&
            const DeepCollectionEquality().equals(other.reminder, reminder));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reminder));

  @JsonKey(ignore: true)
  @override
  _$$ReminderChangedCopyWith<_$ReminderChanged> get copyWith =>
      __$$ReminderChangedCopyWithImpl<_$ReminderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return reminderChanged(reminder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return reminderChanged?.call(reminder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (reminderChanged != null) {
      return reminderChanged(reminder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return reminderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return reminderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (reminderChanged != null) {
      return reminderChanged(this);
    }
    return orElse();
  }
}

abstract class ReminderChanged implements AddTodoPageEvent {
  const factory ReminderChanged({required final String reminder}) =
      _$ReminderChanged;

  String get reminder;
  @JsonKey(ignore: true)
  _$$ReminderChangedCopyWith<_$ReminderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoSubmittedCopyWith<$Res> {
  factory _$$TodoSubmittedCopyWith(
          _$TodoSubmitted value, $Res Function(_$TodoSubmitted) then) =
      __$$TodoSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoSubmittedCopyWithImpl<$Res>
    extends _$AddTodoPageEventCopyWithImpl<$Res>
    implements _$$TodoSubmittedCopyWith<$Res> {
  __$$TodoSubmittedCopyWithImpl(
      _$TodoSubmitted _value, $Res Function(_$TodoSubmitted) _then)
      : super(_value, (v) => _then(v as _$TodoSubmitted));

  @override
  _$TodoSubmitted get _value => super._value as _$TodoSubmitted;
}

/// @nodoc

class _$TodoSubmitted implements TodoSubmitted {
  const _$TodoSubmitted();

  @override
  String toString() {
    return 'AddTodoPageEvent.todoSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function(String date) dateChanged,
    required TResult Function(String startTime) startTimeChanged,
    required TResult Function(String endTime) endTimeChanged,
    required TResult Function(String reminder) reminderChanged,
    required TResult Function() todoSubmitted,
  }) {
    return todoSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
  }) {
    return todoSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function(String date)? dateChanged,
    TResult Function(String startTime)? startTimeChanged,
    TResult Function(String endTime)? endTimeChanged,
    TResult Function(String reminder)? reminderChanged,
    TResult Function()? todoSubmitted,
    required TResult orElse(),
  }) {
    if (todoSubmitted != null) {
      return todoSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(DateChanged value) dateChanged,
    required TResult Function(StartTimeChanged value) startTimeChanged,
    required TResult Function(EndTimeChanged value) endTimeChanged,
    required TResult Function(ReminderChanged value) reminderChanged,
    required TResult Function(TodoSubmitted value) todoSubmitted,
  }) {
    return todoSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
  }) {
    return todoSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(DateChanged value)? dateChanged,
    TResult Function(StartTimeChanged value)? startTimeChanged,
    TResult Function(EndTimeChanged value)? endTimeChanged,
    TResult Function(ReminderChanged value)? reminderChanged,
    TResult Function(TodoSubmitted value)? todoSubmitted,
    required TResult orElse(),
  }) {
    if (todoSubmitted != null) {
      return todoSubmitted(this);
    }
    return orElse();
  }
}

abstract class TodoSubmitted implements AddTodoPageEvent {
  const factory TodoSubmitted() = _$TodoSubmitted;
}

/// @nodoc
mixin _$AddTodoPageState {
  AddTodoStatus get addTodoStatus => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  String? get reminder => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTodoPageStateCopyWith<AddTodoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTodoPageStateCopyWith<$Res> {
  factory $AddTodoPageStateCopyWith(
          AddTodoPageState value, $Res Function(AddTodoPageState) then) =
      _$AddTodoPageStateCopyWithImpl<$Res>;
  $Res call(
      {AddTodoStatus addTodoStatus,
      String? title,
      String? date,
      String? startTime,
      String? endTime,
      String? reminder,
      String? errorMessage});
}

/// @nodoc
class _$AddTodoPageStateCopyWithImpl<$Res>
    implements $AddTodoPageStateCopyWith<$Res> {
  _$AddTodoPageStateCopyWithImpl(this._value, this._then);

  final AddTodoPageState _value;
  // ignore: unused_field
  final $Res Function(AddTodoPageState) _then;

  @override
  $Res call({
    Object? addTodoStatus = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? reminder = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      addTodoStatus: addTodoStatus == freezed
          ? _value.addTodoStatus
          : addTodoStatus // ignore: cast_nullable_to_non_nullable
              as AddTodoStatus,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      reminder: reminder == freezed
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddTodoPageStateCopyWith<$Res>
    implements $AddTodoPageStateCopyWith<$Res> {
  factory _$$_AddTodoPageStateCopyWith(
          _$_AddTodoPageState value, $Res Function(_$_AddTodoPageState) then) =
      __$$_AddTodoPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AddTodoStatus addTodoStatus,
      String? title,
      String? date,
      String? startTime,
      String? endTime,
      String? reminder,
      String? errorMessage});
}

/// @nodoc
class __$$_AddTodoPageStateCopyWithImpl<$Res>
    extends _$AddTodoPageStateCopyWithImpl<$Res>
    implements _$$_AddTodoPageStateCopyWith<$Res> {
  __$$_AddTodoPageStateCopyWithImpl(
      _$_AddTodoPageState _value, $Res Function(_$_AddTodoPageState) _then)
      : super(_value, (v) => _then(v as _$_AddTodoPageState));

  @override
  _$_AddTodoPageState get _value => super._value as _$_AddTodoPageState;

  @override
  $Res call({
    Object? addTodoStatus = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? reminder = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AddTodoPageState(
      addTodoStatus: addTodoStatus == freezed
          ? _value.addTodoStatus
          : addTodoStatus // ignore: cast_nullable_to_non_nullable
              as AddTodoStatus,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      reminder: reminder == freezed
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddTodoPageState extends _AddTodoPageState {
  const _$_AddTodoPageState(
      {required this.addTodoStatus,
      this.title,
      this.date,
      this.startTime,
      this.endTime,
      this.reminder,
      this.errorMessage})
      : super._();

  @override
  final AddTodoStatus addTodoStatus;
  @override
  final String? title;
  @override
  final String? date;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? reminder;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddTodoPageState(addTodoStatus: $addTodoStatus, title: $title, date: $date, startTime: $startTime, endTime: $endTime, reminder: $reminder, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTodoPageState &&
            const DeepCollectionEquality()
                .equals(other.addTodoStatus, addTodoStatus) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.reminder, reminder) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(addTodoStatus),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(reminder),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_AddTodoPageStateCopyWith<_$_AddTodoPageState> get copyWith =>
      __$$_AddTodoPageStateCopyWithImpl<_$_AddTodoPageState>(this, _$identity);
}

abstract class _AddTodoPageState extends AddTodoPageState {
  const factory _AddTodoPageState(
      {required final AddTodoStatus addTodoStatus,
      final String? title,
      final String? date,
      final String? startTime,
      final String? endTime,
      final String? reminder,
      final String? errorMessage}) = _$_AddTodoPageState;
  const _AddTodoPageState._() : super._();

  @override
  AddTodoStatus get addTodoStatus;
  @override
  String? get title;
  @override
  String? get date;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  String? get reminder;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AddTodoPageStateCopyWith<_$_AddTodoPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
