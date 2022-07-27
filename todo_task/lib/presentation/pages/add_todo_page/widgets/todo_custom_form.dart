import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_task/presentation/pages/add_todo_page/bloc/add_todo_page_bloc.dart';
import 'package:todo_task/presentation/pages/add_todo_page/widgets/custom_text_field.dart';
import 'package:todo_task/presentation/pages/add_todo_page/widgets/todo_date_picker.dart';
import 'package:todo_task/presentation/pages/add_todo_page/widgets/todo_reminder_picker.dart';
import 'package:todo_task/presentation/pages/add_todo_page/widgets/todo_time_picker.dart';
import 'package:todo_task/theme/colors.dart';

  
  final dateController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

class TodoForm extends StatelessWidget {
  const TodoForm({Key? key, required GlobalKey<FormState> formStateKey})
      : _formStateKey = formStateKey,
        super(key: key);

  final _titleErrorText = 'title shouldn\'t be empty';
  final _dateErrorText = 'date shouldn\'t be empty';
  final _startTimeErrorText = 'start time shouldn\'t be empty';
  final _endTimeErrorText = 'end time shouldn\'t be empty';
  final _reminderErrorText = 'reminder shouldn\'t be empty';

 

  final List<String> reminderOptions = const [
    '5 seconds Before(test)',
    '1 Day Before',
    '1 Hour Before',
    '30 Minutes Before',
    '10 Minutes Before',
  ];

  final GlobalKey<FormState> _formStateKey;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AddTodoPageBloc>().state;
    // titleController.text = state.title!;
    dateController.text = state.date!;
    startTimeController.text = state.startTime!;
    endTimeController.text = state.endTime!;

    return Form(
      key: _formStateKey,
      child: Column(
        children: [
          //todo title
          CustomTextField(
            textFieldKey: const Key('add_todo_page_title_text_field'),
            hint: state.title!.isEmpty ? 'enter todo\'s title' : '',
            keyboardInputType: TextInputType.text,
            label: 'Title',
            enabled: !state.addTodoStatus.isLoadingOrSuccess,                   
            validator: (value) {
              if (value!.isEmpty) {
                return _titleErrorText;
              }
              return null;
            },
            onChanged: (value) {
              context.read<AddTodoPageBloc>().add(TitleChanged(title: value!));
            },
          ),

          //todo date
          CustomTextField(
            textFieldKey: const Key('add_todo_page_date_picker_field'),
            hint: state.date!.isEmpty ? 'pick todo\'s date' : '',
            label: 'Date',            
            textController: dateController,
            enabled: !state.addTodoStatus.isLoadingOrSuccess,
            validator: (value) {
              if (value!.isEmpty) {
                return _dateErrorText;
              }
              return null;
            },
            suffixIcon: const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: TodoColors.todoPurple,
            ),
            // todo datePicker
            onTap: () async {
              // for not showing the keyboard
              FocusScope.of(context).requestFocus(FocusNode());
              final dateText = await todoDatePicker(context, state.date);
              if (dateText != null) {
                context
                    .read<AddTodoPageBloc>()
                    .add(DateChanged(date: dateText));
              }
            },
          ),

          //todo start - end times
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //todo start time
              Expanded(
                child: CustomTextField(
                  textFieldKey:
                      const Key('add_todo_page_startTime_picker_field'),
                  hint:
                      state.startTime!.isEmpty ? 'pick todo\'s start time' : '',

                  label: 'Start Time',                  
                  enabled: !state.addTodoStatus.isLoadingOrSuccess,
                  textController: startTimeController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return _startTimeErrorText;
                    }
                    return null;
                  },

                  suffixIcon: const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: TodoColors.todoPurple,
                  ),

                  // todo datePicker
                  onTap: () async {
                    // for not showing the keyboard
                    FocusScope.of(context).requestFocus(FocusNode());
                    final startTimeText =
                        await todoTimePicker(context, state.startTime);
                    if (startTimeText != null) {
                      context
                          .read<AddTodoPageBloc>()
                          .add(StartTimeChanged(startTime: startTimeText));
                    }
                  },
                ),
              ),

              //todo end time
              Expanded(
                child: CustomTextField(
                  textFieldKey: const Key('add_todo_page_endTime_picker_field'),
                  hint: state.endTime!.isEmpty ? 'pick todo\'s end time' : '',
                  label: 'End Time',
                  enabled: !state.addTodoStatus.isLoadingOrSuccess,
                  textController: endTimeController,                  
                  validator: (value) {
                    if (value!.isEmpty) {
                      return _endTimeErrorText;
                    }
                    return null;
                  },

                  suffixIcon: const Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: TodoColors.todoPurple,
                  ),

                  // todo datePicker
                  onTap: () async {
                    // for not showing the keyboard
                    FocusScope.of(context).requestFocus(FocusNode());
                    final endTimeText =
                        await todoTimePicker(context, state.endTime);
                    if (endTimeText != null) {
                      context
                          .read<AddTodoPageBloc>()
                          .add(EndTimeChanged(endTime: endTimeText));
                    }
                  },
                ),
              ),
            ],
          ),

          // //todo remainder
          CustomReminderPicker(
            label: 'Reminder',
            items: reminderOptions,
            currentValue: state.reminder,
            hint: 'when to reminder you?',
            icon: const Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: TodoColors.todoPurple,
            ),
            onChanged: (value) {
              context
                  .read<AddTodoPageBloc>()
                  .add(ReminderChanged(reminder: value!));
            },
            validator: (value) {
              if (value == null) {
                return _reminderErrorText;
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
