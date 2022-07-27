import 'package:todo_task/core/helpers/todos_tab_filter.dart';

String tabFilterNameToString(TodosTabFilter tabFilter) {
  final text = tabFilter.toString().split('.').last;
  return "${text[0].toUpperCase()}${text.substring(1).toLowerCase()}";
}
