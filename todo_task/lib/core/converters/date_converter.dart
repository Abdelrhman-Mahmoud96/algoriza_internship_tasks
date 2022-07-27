import 'package:intl/intl.dart';
import 'package:todo_task/core/converters/interfaces/i_type_converter.dart';

class DatabaseDateTimeConverter implements ITypeConverter<DateTime, String> {
  @override
  DateTime decode({required String data}) {
    return DateTime.parse(data);
  }

  @override
  String encode({
    required DateTime data,
    String? formate,
  }) {
    return DateFormat(formate).format(data);
  }
}
