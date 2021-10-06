import 'package:flutter/material.dart';

class MultiSelectDialog extends StatelessWidget {
  final List<String> answers;

  final Widget question;

  final List<String> selectedItems = [];

  static Map<String, bool> mappedItem = {};

  MultiSelectDialog({Key? key, required this.answers, required this.question})
      : super(key: key);

  Map<String, bool> initMap() {
    return mappedItem = Map.fromIterable(answers,
        key: (k) => k.toString(),
        value: (v) {
          if (v != true && v != false) {
            return false;
          } else {
            return v as bool;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    if (mappedItem == null) {
      initMap();
    }
    return SimpleDialog(
      title: question,
      children: [
        ...mappedItem.keys.map((String key) {
          return StatefulBuilder(
            builder: (_, StateSetter setState) => CheckboxListTile(
                title: Text(key),
                value: mappedItem[key],
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (value) => setState(() => mappedItem[key] = value!)),
          );
        }).toList(),
        Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                style:
                    const ButtonStyle(visualDensity: VisualDensity.comfortable),
                child: const Text('Submit'),
                onPressed: () {
                  selectedItems.clear();

                  mappedItem.forEach((key, value) {
                    if (value == true) {
                      selectedItems.add(key);
                    }
                  });

                  Navigator.pop(context, selectedItems);
                }))
      ],
    );
  }
}
