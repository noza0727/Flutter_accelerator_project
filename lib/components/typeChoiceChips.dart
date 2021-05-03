import 'package:accelerator_flutter/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeChoiceChips extends StatefulWidget {
  @override
  _TypeChoiceChipsState createState() => _TypeChoiceChipsState();
}

class _TypeChoiceChipsState extends State<TypeChoiceChips> {

  List<String> _choices;
  int _defaultChoiceIndex;

  @override
  void initState() {
    super.initState();
    _choices = ["Black", "Bold", "Medium", "Regular", "Light", "Dark", "Opacity"];
    _defaultChoiceIndex = 3;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
                  selectedColor: AppColors.pinkish,
                  backgroundColor: AppColors.whitishBG,
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}