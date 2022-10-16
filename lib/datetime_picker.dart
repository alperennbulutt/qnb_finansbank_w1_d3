import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({super.key});

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          hourMinute15Interval(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            child: Text(
              _dateTime.hour.toString().padLeft(2, '0') +
                  ':' +
                  _dateTime.minute.toString().padLeft(2, '0') +
                  ':' +
                  _dateTime.second.toString().padLeft(2, '0'),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  /// SAMPLE
  Widget hourMinute12H() {
    return new TimePickerSpinner(
      is24HourMode: false,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinuteSecond() {
    return new TimePickerSpinner(
      isShowSeconds: true,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinute15Interval() {
    return TimePickerSpinner(
      spacing: 40,
      minutesInterval: 15,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }

  Widget hourMinute12HCustomStyle() {
    return new TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 24, color: Colors.deepOrange),
      highlightedTextStyle: TextStyle(fontSize: 24, color: Colors.yellow),
      spacing: 50,
      itemHeight: 80,
      isForce2Digits: true,
      minutesInterval: 15,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}
