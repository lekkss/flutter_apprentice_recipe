import 'package:flutter/material.dart';
import 'package:flutter_apprentice_course/models/recipie.dart';

class SliderObject extends StatelessWidget {
  final Recepie recepie;
  final int sliderValue;
  final Function onChanged;
  const SliderObject(
      {Key? key,
      required this.recepie,
      required this.sliderValue,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 1,
      max: 10,
      divisions: 10,
      label: '${sliderValue * recepie.serving} servings',
      value: sliderValue.toDouble(),
      onChanged: (newValue) {
        // _sliderValue = newValue.round();
        onChanged(newValue.round());
      },
      activeColor: Colors.green,
      inactiveColor: Colors.black,
    );
  }
}
