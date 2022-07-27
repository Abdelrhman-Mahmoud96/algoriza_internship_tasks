import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';

class DatabaseBoolConverter implements ITypeConverter<bool, int> {
  @override
  bool decode({required int data}) {
    if (data == 1) {
      return true;
    } else {
      return false;
    }
  }

  @override
  int encode({
    required bool data,
    String? formate,
  }) {
    if (data) {
      return 1;
    } else {
      return 0;
    }
  }
}
