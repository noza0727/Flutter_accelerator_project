import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeChoiceChips extends StatefulWidget {
  @override
  _TypeChoiceChipsState createState() => _TypeChoiceChipsState();
}

class _TypeChoiceChipsState extends State<TypeChoiceChips> {

  List<String> _choices;
  int _defaultChoiceIndex;
  Color chipTextColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    _choices = ["Black", "Bold", "Medium", "Regular", "Light"];
    _defaultChoiceIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          spacing: 10.0,
          children: List<Widget>.generate(
            _choices.length,
                (int index) {
              return ChoiceChip(
                label: Text(_choices[index]),
                selected: _defaultChoiceIndex == index,
                onSelected: (bool selected) {
                  setState(() {
                    _defaultChoiceIndex =
                    selected ? index : null;
                  });
                },
                selectedColor: Color(0xFFF8D7FC),
                backgroundColor: Color(0xF5EAEAEA),
                labelStyle: TextStyle(
                  color: chipTextColor,
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}


