// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchedulePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dateTabChanged,
    required TResult Function() loadTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTabChanged value) dateTabChanged,
    required TResult Function(LoadTodos value) loadTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePageEventCopyWith<$Res> {
  factory $SchedulePageEventCopyWith(
          SchedulePageEvent value, $Res Function(SchedulePageEvent) then) =
      _$SchedulePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SchedulePageEventCopyWithImpl<$Res>
    implements $SchedulePageEventCopyWith<$Res> {
  _$SchedulePageEventCopyWithImpl(this._value, this._then);

  final SchedulePageEvent _value;
  // ignore: unused_field
  final $Res Function(SchedulePageEvent) _then;
}

/// @nodoc
abstract class _$$DateTabChangedCopyWith<$Res> {
  factory _$$DateTabChangedCopyWith(
          _$DateTabChanged value, $Res Function(_$DateTabChanged) then) =
      __$$DateTabChangedCopyWithImpl<$Res>;
  $Res call({DateTime selectedDate});
}

/// @nodoc
class __$$DateTabChangedCopyWithImpl<$Res>
    extends _$SchedulePageEventCopyWithImpl<$Res>
    implements _$$DateTabChangedCopyWith<$Res> {
  __$$DateTabChangedCopyWithImpl(
      _$DateTabChanged _value, $Res Function(_$DateTabChanged) _then)
      : super(_value, (v) => _then(v as _$DateTabChanged));

  @override
  _$DateTabChanged get _value => super._value as _$DateTabChanged;

  @override
  $Res call({
    Object? selectedDate = freezed,
  }) {
    return _then(_$DateTabChanged(
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateTabChanged implements DateTabChanged {
  const _$DateTabChanged({required this.selectedDate});

  @override
  final DateTime selectedDate;

  @override
  String toString() {
    return 'SchedulePageEvent.dateTabChanged(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTabChanged &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedDate));

  @JsonKey(ignore: true)
  @override
  _$$DateTabChangedCopyWith<_$DateTabChanged> get copyWith =>
      __$$DateTabChangedCopyWithImpl<_$DateTabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dateTabChanged,
    required TResult Function() loadTodos,
  }) {
    return dateTabChanged(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
  }) {
    return dateTabChanged?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
    required TResult orElse(),
  }) {
    if (dateTabChanged != null) {
      return dateTabChanged(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTabChanged value) dateTabChanged,
    required TResult Function(LoadTodos value) loadTodos,
  }) {
    return dateTabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
  }) {
    return dateTabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    required TResult orElse(),
  }) {
    if (dateTabChanged != null) {
      return dateTabChanged(this);
    }
    return orElse();
  }
}

abstract class DateTabChanged implements SchedulePageEvent {
  const factory DateTabChanged({required final DateTime selectedDate}) =
      _$DateTabChanged;

  DateTime get selectedDate;
  @JsonKey(ignore: true)
  _$$DateTabChangedCopyWith<_$DateTabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTodosCopyWith<$Res> {
  factory _$$LoadTodosCopyWith(
          _$LoadTodos value, $Res Function(_$LoadTodos) then) =
      __$$LoadTodosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTodosCopyWithImpl<$Res>
    extends _$SchedulePageEventCopyWithImpl<$Res>
    implements _$$LoadTodosCopyWith<$Res> {
  __$$LoadTodosCopyWithImpl(
      _$LoadTodos _value, $Res Function(_$LoadTodos) _then)
      : super(_value, (v) => _then(v as _$LoadTodos));

  @override
  _$LoadTodos get _value => super._value as _$LoadTodos;
}

/// @nodoc

class _$LoadTodos implements LoadTodos {
  const _$LoadTodos();

  @override
  String toString() {
    return 'SchedulePageEvent.loadTodos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadTodos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime selectedDate) dateTabChanged,
    required TResult Function() loadTodos,
  }) {
    return loadTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
  }) {
    return loadTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime selectedDate)? dateTabChanged,
    TResult Function()? loadTodos,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DateTabChanged value) dateTabChanged,
    required TResult Function(LoadTodos value) loadTodos,
  }) {
    return loadTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
  }) {
    return loadTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DateTabChanged value)? dateTabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this);
    }
    return orElse();
  }
}

abstract class LoadTodos implements SchedulePageEvent {
  const factory LoadTodos() = _$LoadTodos;
}

/// @nodoc
mixin _$SchedulePageState {
  SchedulePageStatus? get boardPageStatus => throw _privateConstructorUsedError;
  List<Todo>? get todos => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SchedulePageStateCopyWith<SchedulePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchedulePageStateCopyWith<$Res> {
  factory $SchedulePageStateCopyWith(
          SchedulePageState value, $Res Function(SchedulePageState) then) =
      _$SchedulePageStateCopyWithImpl<$Res>;
  $Res call(
      {SchedulePageStatus? boardPageStatus,
      List<Todo>? todos,
      DateTime? selectedDate,
      String? errorMessage});
}

/// @nodoc
class _$SchedulePageStateCopyWithImpl<$Res>
    implements $SchedulePageStateCopyWith<$Res> {
  _$SchedulePageStateCopyWithImpl(this._value, this._then);

  final SchedulePageState _value;
  // ignore: unused_field
  final $Res Function(SchedulePageState) _then;

  @override
  $Res call({
    Object? boardPageStatus = freezed,
    Object? todos = freezed,
    Object? selectedDate = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      boardPageStatus: boardPageStatus == freezed
          ? _value.boardPageStatus
          : boardPageStatus // ignore: cast_nullable_to_non_nullable
              as SchedulePageStatus?,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SchedulePageStateCopyWith<$Res>
    implements $SchedulePageStateCopyWith<$Res> {
  factory _$$_SchedulePageStateCopyWith(_$_SchedulePageState value,
          $Res Function(_$_SchedulePageState) then) =
      __$$_SchedulePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SchedulePageStatus? boardPageStatus,
      List<Todo>? todos,
      DateTime? selectedDate,
      String? errorMessage});
}

/// @nodoc
class __$$_SchedulePageStateCopyWithImpl<$Res>
    extends _$SchedulePageStateCopyWithImpl<$Res>
    implements _$$_SchedulePageStateCopyWith<$Res> {
  __$$_SchedulePageStateCopyWithImpl(
      _$_SchedulePageState _value, $Res Function(_$_SchedulePageState) _then)
      : super(_value, (v) => _then(v as _$_SchedulePageState));

  @override
  _$_SchedulePageState get _value => super._value as _$_SchedulePageState;

  @override
  $Res call({
    Object? boardPageStatus = freezed,
    Object? todos = freezed,
    Object? selectedDate = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SchedulePageState(
      boardPageStatus: boardPageStatus == freezed
          ? _value.boardPageStatus
          : boardPageStatus // ignore: cast_nullable_to_non_nullable
              as SchedulePageStatus?,
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      selectedDate: selectedDate == freezed
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SchedulePageState extends _SchedulePageState {
  const _$_SchedulePageState(
      {this.boardPageStatus = SchedulePageStatus.initial,
      final List<Todo>? todos = const [],
      this.selectedDate,
      this.errorMessage = ''})
      : _todos = todos,
        super._();

  @override
  @JsonKey()
  final SchedulePageStatus? boardPageStatus;
  final List<Todo>? _todos;
  @override
  @JsonKey()
  List<Todo>? get todos {
    final value = _todos;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? selectedDate;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'SchedulePageState(boardPageStatus: $boardPageStatus, todos: $todos, selectedDate: $selectedDate, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchedulePageState &&
            const DeepCollectionEquality()
                .equals(other.boardPageStatus, boardPageStatus) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other.selectedDate, selectedDate) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boardPageStatus),
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(selectedDate),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_SchedulePageStateCopyWith<_$_SchedulePageState> get copyWith =>
      __$$_SchedulePageStateCopyWithImpl<_$_SchedulePageState>(
          this, _$identity);
}

abstract class _SchedulePageState extends SchedulePageState {
  const factory _SchedulePageState(
      {final SchedulePageStatus? boardPageStatus,
      final List<Todo>? todos,
      final DateTime? selectedDate,
      final String? errorMessage}) = _$_SchedulePageState;
  const _SchedulePageState._() : super._();

  @override
  SchedulePageStatus? get boardPageStatus;
  @override
  List<Todo>? get todos;
  @override
  DateTime? get selectedDate;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SchedulePageStateCopyWith<_$_SchedulePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
