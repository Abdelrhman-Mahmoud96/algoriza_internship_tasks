// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'board_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardPageEventCopyWith<$Res> {
  factory $BoardPageEventCopyWith(
          BoardPageEvent value, $Res Function(BoardPageEvent) then) =
      _$BoardPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoardPageEventCopyWithImpl<$Res>
    implements $BoardPageEventCopyWith<$Res> {
  _$BoardPageEventCopyWithImpl(this._value, this._then);

  final BoardPageEvent _value;
  // ignore: unused_field
  final $Res Function(BoardPageEvent) _then;
}

/// @nodoc
abstract class _$$TabChangedCopyWith<$Res> {
  factory _$$TabChangedCopyWith(
          _$TabChanged value, $Res Function(_$TabChanged) then) =
      __$$TabChangedCopyWithImpl<$Res>;
  $Res call({TodosTabFilter tab});
}

/// @nodoc
class __$$TabChangedCopyWithImpl<$Res>
    extends _$BoardPageEventCopyWithImpl<$Res>
    implements _$$TabChangedCopyWith<$Res> {
  __$$TabChangedCopyWithImpl(
      _$TabChanged _value, $Res Function(_$TabChanged) _then)
      : super(_value, (v) => _then(v as _$TabChanged));

  @override
  _$TabChanged get _value => super._value as _$TabChanged;

  @override
  $Res call({
    Object? tab = freezed,
  }) {
    return _then(_$TabChanged(
      tab: tab == freezed
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as TodosTabFilter,
    ));
  }
}

/// @nodoc

class _$TabChanged with DiagnosticableTreeMixin implements TabChanged {
  const _$TabChanged({required this.tab});

  @override
  final TodosTabFilter tab;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageEvent.tabChanged(tab: $tab)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardPageEvent.tabChanged'))
      ..add(DiagnosticsProperty('tab', tab));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChanged &&
            const DeepCollectionEquality().equals(other.tab, tab));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tab));

  @JsonKey(ignore: true)
  @override
  _$$TabChangedCopyWith<_$TabChanged> get copyWith =>
      __$$TabChangedCopyWithImpl<_$TabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) {
    return tabChanged(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) {
    return tabChanged?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements BoardPageEvent {
  const factory TabChanged({required final TodosTabFilter tab}) = _$TabChanged;

  TodosTabFilter get tab;
  @JsonKey(ignore: true)
  _$$TabChangedCopyWith<_$TabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTodosCopyWith<$Res> {
  factory _$$LoadTodosCopyWith(
          _$LoadTodos value, $Res Function(_$LoadTodos) then) =
      __$$LoadTodosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTodosCopyWithImpl<$Res> extends _$BoardPageEventCopyWithImpl<$Res>
    implements _$$LoadTodosCopyWith<$Res> {
  __$$LoadTodosCopyWithImpl(
      _$LoadTodos _value, $Res Function(_$LoadTodos) _then)
      : super(_value, (v) => _then(v as _$LoadTodos));

  @override
  _$LoadTodos get _value => super._value as _$LoadTodos;
}

/// @nodoc

class _$LoadTodos with DiagnosticableTreeMixin implements LoadTodos {
  const _$LoadTodos();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageEvent.loadTodos()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BoardPageEvent.loadTodos'));
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
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) {
    return loadTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) {
    return loadTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
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
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) {
    return loadTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) {
    return loadTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (loadTodos != null) {
      return loadTodos(this);
    }
    return orElse();
  }
}

abstract class LoadTodos implements BoardPageEvent {
  const factory LoadTodos() = _$LoadTodos;
}

/// @nodoc
abstract class _$$DeleteTodoCopyWith<$Res> {
  factory _$$DeleteTodoCopyWith(
          _$DeleteTodo value, $Res Function(_$DeleteTodo) then) =
      __$$DeleteTodoCopyWithImpl<$Res>;
  $Res call({Todo todo});
}

/// @nodoc
class __$$DeleteTodoCopyWithImpl<$Res>
    extends _$BoardPageEventCopyWithImpl<$Res>
    implements _$$DeleteTodoCopyWith<$Res> {
  __$$DeleteTodoCopyWithImpl(
      _$DeleteTodo _value, $Res Function(_$DeleteTodo) _then)
      : super(_value, (v) => _then(v as _$DeleteTodo));

  @override
  _$DeleteTodo get _value => super._value as _$DeleteTodo;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$DeleteTodo(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }
}

/// @nodoc

class _$DeleteTodo with DiagnosticableTreeMixin implements DeleteTodo {
  const _$DeleteTodo({required this.todo});

  @override
  final Todo todo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageEvent.deleteTodo(todo: $todo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardPageEvent.deleteTodo'))
      ..add(DiagnosticsProperty('todo', todo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodo &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$DeleteTodoCopyWith<_$DeleteTodo> get copyWith =>
      __$$DeleteTodoCopyWithImpl<_$DeleteTodo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) {
    return deleteTodo(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) {
    return deleteTodo?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class DeleteTodo implements BoardPageEvent {
  const factory DeleteTodo({required final Todo todo}) = _$DeleteTodo;

  Todo get todo;
  @JsonKey(ignore: true)
  _$$DeleteTodoCopyWith<_$DeleteTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompeletedToggledCopyWith<$Res> {
  factory _$$CompeletedToggledCopyWith(
          _$CompeletedToggled value, $Res Function(_$CompeletedToggled) then) =
      __$$CompeletedToggledCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isCompleted});
}

/// @nodoc
class __$$CompeletedToggledCopyWithImpl<$Res>
    extends _$BoardPageEventCopyWithImpl<$Res>
    implements _$$CompeletedToggledCopyWith<$Res> {
  __$$CompeletedToggledCopyWithImpl(
      _$CompeletedToggled _value, $Res Function(_$CompeletedToggled) _then)
      : super(_value, (v) => _then(v as _$CompeletedToggled));

  @override
  _$CompeletedToggled get _value => super._value as _$CompeletedToggled;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$CompeletedToggled(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CompeletedToggled
    with DiagnosticableTreeMixin
    implements CompeletedToggled {
  const _$CompeletedToggled({required this.todo, required this.isCompleted});

  @override
  final Todo todo;
  @override
  final bool isCompleted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageEvent.compeletedToggled(todo: $todo, isCompleted: $isCompleted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardPageEvent.compeletedToggled'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('isCompleted', isCompleted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompeletedToggled &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(isCompleted));

  @JsonKey(ignore: true)
  @override
  _$$CompeletedToggledCopyWith<_$CompeletedToggled> get copyWith =>
      __$$CompeletedToggledCopyWithImpl<_$CompeletedToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) {
    return compeletedToggled(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) {
    return compeletedToggled?.call(todo, isCompleted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (compeletedToggled != null) {
      return compeletedToggled(todo, isCompleted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) {
    return compeletedToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) {
    return compeletedToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (compeletedToggled != null) {
      return compeletedToggled(this);
    }
    return orElse();
  }
}

abstract class CompeletedToggled implements BoardPageEvent {
  const factory CompeletedToggled(
      {required final Todo todo,
      required final bool isCompleted}) = _$CompeletedToggled;

  Todo get todo;
  bool get isCompleted;
  @JsonKey(ignore: true)
  _$$CompeletedToggledCopyWith<_$CompeletedToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteToggledCopyWith<$Res> {
  factory _$$FavoriteToggledCopyWith(
          _$FavoriteToggled value, $Res Function(_$FavoriteToggled) then) =
      __$$FavoriteToggledCopyWithImpl<$Res>;
  $Res call({Todo todo, bool isFavorite});
}

/// @nodoc
class __$$FavoriteToggledCopyWithImpl<$Res>
    extends _$BoardPageEventCopyWithImpl<$Res>
    implements _$$FavoriteToggledCopyWith<$Res> {
  __$$FavoriteToggledCopyWithImpl(
      _$FavoriteToggled _value, $Res Function(_$FavoriteToggled) _then)
      : super(_value, (v) => _then(v as _$FavoriteToggled));

  @override
  _$FavoriteToggled get _value => super._value as _$FavoriteToggled;

  @override
  $Res call({
    Object? todo = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$FavoriteToggled(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoriteToggled
    with DiagnosticableTreeMixin
    implements FavoriteToggled {
  const _$FavoriteToggled({required this.todo, required this.isFavorite});

  @override
  final Todo todo;
  @override
  final bool isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageEvent.favoriteToggled(todo: $todo, isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardPageEvent.favoriteToggled'))
      ..add(DiagnosticsProperty('todo', todo))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteToggled &&
            const DeepCollectionEquality().equals(other.todo, todo) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todo),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$FavoriteToggledCopyWith<_$FavoriteToggled> get copyWith =>
      __$$FavoriteToggledCopyWithImpl<_$FavoriteToggled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TodosTabFilter tab) tabChanged,
    required TResult Function() loadTodos,
    required TResult Function(Todo todo) deleteTodo,
    required TResult Function(Todo todo, bool isCompleted) compeletedToggled,
    required TResult Function(Todo todo, bool isFavorite) favoriteToggled,
  }) {
    return favoriteToggled(todo, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
  }) {
    return favoriteToggled?.call(todo, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodosTabFilter tab)? tabChanged,
    TResult Function()? loadTodos,
    TResult Function(Todo todo)? deleteTodo,
    TResult Function(Todo todo, bool isCompleted)? compeletedToggled,
    TResult Function(Todo todo, bool isFavorite)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(todo, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(LoadTodos value) loadTodos,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(CompeletedToggled value) compeletedToggled,
    required TResult Function(FavoriteToggled value) favoriteToggled,
  }) {
    return favoriteToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
  }) {
    return favoriteToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(LoadTodos value)? loadTodos,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(CompeletedToggled value)? compeletedToggled,
    TResult Function(FavoriteToggled value)? favoriteToggled,
    required TResult orElse(),
  }) {
    if (favoriteToggled != null) {
      return favoriteToggled(this);
    }
    return orElse();
  }
}

abstract class FavoriteToggled implements BoardPageEvent {
  const factory FavoriteToggled(
      {required final Todo todo,
      required final bool isFavorite}) = _$FavoriteToggled;

  Todo get todo;
  bool get isFavorite;
  @JsonKey(ignore: true)
  _$$FavoriteToggledCopyWith<_$FavoriteToggled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BoardPageState {
  BoardPageStatus? get boardPageStatus => throw _privateConstructorUsedError;
  List<Todo>? get todos => throw _privateConstructorUsedError;
  TodosTabFilter? get todosTabFilter => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardPageStateCopyWith<BoardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardPageStateCopyWith<$Res> {
  factory $BoardPageStateCopyWith(
          BoardPageState value, $Res Function(BoardPageState) then) =
      _$BoardPageStateCopyWithImpl<$Res>;
  $Res call(
      {BoardPageStatus? boardPageStatus,
      List<Todo>? todos,
      TodosTabFilter? todosTabFilter,
      String? errorMessage});
}

/// @nodoc
class _$BoardPageStateCopyWithImpl<$Res>
    implements $BoardPageStateCopyWith<$Res> {
  _$BoardPageStateCopyWithImpl(this._value, this._then);

  final BoardPageState _value;
  // ignore: unused_field
  final $Res Function(BoardPageState) _then;

  @override
  $Res call({
    Object? boardPageStatus = freezed,
    Object? todos = freezed,
    Object? todosTabFilter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      boardPageStatus: boardPageStatus == freezed
          ? _value.boardPageStatus
          : boardPageStatus // ignore: cast_nullable_to_non_nullable
              as BoardPageStatus?,
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      todosTabFilter: todosTabFilter == freezed
          ? _value.todosTabFilter
          : todosTabFilter // ignore: cast_nullable_to_non_nullable
              as TodosTabFilter?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BoardPageStatusCopyWith<$Res>
    implements $BoardPageStateCopyWith<$Res> {
  factory _$$_BoardPageStatusCopyWith(
          _$_BoardPageStatus value, $Res Function(_$_BoardPageStatus) then) =
      __$$_BoardPageStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {BoardPageStatus? boardPageStatus,
      List<Todo>? todos,
      TodosTabFilter? todosTabFilter,
      String? errorMessage});
}

/// @nodoc
class __$$_BoardPageStatusCopyWithImpl<$Res>
    extends _$BoardPageStateCopyWithImpl<$Res>
    implements _$$_BoardPageStatusCopyWith<$Res> {
  __$$_BoardPageStatusCopyWithImpl(
      _$_BoardPageStatus _value, $Res Function(_$_BoardPageStatus) _then)
      : super(_value, (v) => _then(v as _$_BoardPageStatus));

  @override
  _$_BoardPageStatus get _value => super._value as _$_BoardPageStatus;

  @override
  $Res call({
    Object? boardPageStatus = freezed,
    Object? todos = freezed,
    Object? todosTabFilter = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_BoardPageStatus(
      boardPageStatus: boardPageStatus == freezed
          ? _value.boardPageStatus
          : boardPageStatus // ignore: cast_nullable_to_non_nullable
              as BoardPageStatus?,
      todos: todos == freezed
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      todosTabFilter: todosTabFilter == freezed
          ? _value.todosTabFilter
          : todosTabFilter // ignore: cast_nullable_to_non_nullable
              as TodosTabFilter?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BoardPageStatus extends _BoardPageStatus with DiagnosticableTreeMixin {
  const _$_BoardPageStatus(
      {this.boardPageStatus = BoardPageStatus.initial,
      final List<Todo>? todos = const [],
      this.todosTabFilter = TodosTabFilter.all,
      this.errorMessage = ''})
      : _todos = todos,
        super._();

  @override
  @JsonKey()
  final BoardPageStatus? boardPageStatus;
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
  @JsonKey()
  final TodosTabFilter? todosTabFilter;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardPageState(boardPageStatus: $boardPageStatus, todos: $todos, todosTabFilter: $todosTabFilter, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardPageState'))
      ..add(DiagnosticsProperty('boardPageStatus', boardPageStatus))
      ..add(DiagnosticsProperty('todos', todos))
      ..add(DiagnosticsProperty('todosTabFilter', todosTabFilter))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoardPageStatus &&
            const DeepCollectionEquality()
                .equals(other.boardPageStatus, boardPageStatus) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            const DeepCollectionEquality()
                .equals(other.todosTabFilter, todosTabFilter) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(boardPageStatus),
      const DeepCollectionEquality().hash(_todos),
      const DeepCollectionEquality().hash(todosTabFilter),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_BoardPageStatusCopyWith<_$_BoardPageStatus> get copyWith =>
      __$$_BoardPageStatusCopyWithImpl<_$_BoardPageStatus>(this, _$identity);
}

abstract class _BoardPageStatus extends BoardPageState {
  const factory _BoardPageStatus(
      {final BoardPageStatus? boardPageStatus,
      final List<Todo>? todos,
      final TodosTabFilter? todosTabFilter,
      final String? errorMessage}) = _$_BoardPageStatus;
  const _BoardPageStatus._() : super._();

  @override
  BoardPageStatus? get boardPageStatus;
  @override
  List<Todo>? get todos;
  @override
  TodosTabFilter? get todosTabFilter;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_BoardPageStatusCopyWith<_$_BoardPageStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
