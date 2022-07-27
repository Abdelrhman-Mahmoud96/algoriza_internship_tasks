const kVirsion = 1;
const kDatabaseName = 'todos_database.db';
const kDateFormat = 'yyyy-MM-dd';
const kTimeFormat = 'HH:mm';

const kTableName = 'todos';
const _todoId = 'id';
const _todoTitle = 'title';
const _todoDate = 'date';
const _todoStartTime = 'startTime';
const _todoEndTime = 'endTime';
const _todoReminder = 'reminder';
const _todoCompleted = 'isCompleted';
const _todoFavorite = 'isFavorite';

const kCreationQuery = '''CREATE TABLE $kTableName(
  $_todoId VARCHAR NOT NULL PRIMARY KEY, 
  $_todoTitle VARCHAR NOT NULL, 
  $_todoDate VARCHAR NOT NULL,
  $_todoStartTime VARCHAR NOT NULL,
  $_todoEndTime VARCHAR NOT NULL,
  $_todoReminder VARCHAR NOT NULL,
  $_todoCompleted INTEGER DEFAULT 0,
  $_todoFavorite INTEGER DEFAULT 0)''';

