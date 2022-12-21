import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Task4 extends StatefulWidget {
  const Task4({super.key});

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4> {
  var genderOptions = ['Male', 'Female', 'Other'];
  bool _genderHasError = false;
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 4'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            FormBuilderSlider(
              name: 'slider',
              min: 0.0,
              max: 10.0,
              initialValue: 7.0,
              divisions: 20,
              activeColor: Colors.red,
              inactiveColor: Colors.pink[100],
              decoration: const InputDecoration(
                labelText: 'Number of things',
              ),
            ),
            FormBuilderCheckbox(
              name: 'accept_terms',
              initialValue: false,
              title: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'I have read and agree to the ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms and Conditions',
                      style: TextStyle(color: Colors.blue),
                      // Flutter doesn't allow a button inside a button
                      // https://github.com/flutter/flutter/issues/31437#issuecomment-492411086
                      /*
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('launch url');
                                },
                              */
                    ),
                  ],
                ),
              ),
            ),
            FormBuilderDropdown<String>(
              // autovalidate: true,
              name: 'gender',
              decoration: InputDecoration(
                labelText: 'Gender',
                suffix: _genderHasError
                    ? const Icon(Icons.error)
                    : const Icon(Icons.check),
                hintText: 'Select Gender',
              ),

              items: genderOptions
                  .map((gender) => DropdownMenuItem(
                        alignment: AlignmentDirectional.center,
                        value: gender,
                        child: Text(gender),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _genderHasError =
                      !(_formKey.currentState?.fields['gender']?.validate() ??
                          false);
                });
              },
              valueTransformer: (val) => val?.toString(),
            ),
            FormBuilderDateTimePicker(
              name: 'date',
              initialEntryMode: DatePickerEntryMode.calendar,
              initialValue: DateTime.now(),
              inputType: InputType.both,
              decoration: InputDecoration(
                labelText: 'Appointment Time',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    _formKey.currentState!.fields['date']?.didChange(null);
                  },
                ),
              ),
              initialTime: const TimeOfDay(hour: 8, minute: 0),
              // locale: const Locale.fromSubtags(languageCode: 'fr'),
            ),
            FormBuilderSwitch(
              title: const Text('I Accept the terms and conditions'),
              name: 'accept_terms_switch',
              initialValue: true,
            ),
            FormBuilderTextField(
              autovalidateMode: AutovalidateMode.always,
              name: 'age',
              decoration: InputDecoration(
                labelText: 'Age',
              ),

              // initialValue: '12',
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
            ),
          ],
        ),
      ),
    );
  }
}
