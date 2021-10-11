import 'package:flutter/material.dart';

import 'package:flutter_apprentice_course/models/recipie.dart';
import 'package:flutter_apprentice_course/widget/slider_object.dart';

class DetailsPage extends StatefulWidget {
  final Recepie recepie;
  const DetailsPage({
    Key? key,
    required this.recepie,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int _sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.recepie.label),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recepie.imgUrl),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.recepie.label,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.recepie.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredients = widget.recepie.ingredients[index];

                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      //borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Text(
                        '${ingredients.quantity * _sliderValue} ${ingredients.measure} ${ingredients.name}',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                }),
            SliderObject(
              recepie: widget.recepie,
              sliderValue: _sliderValue,
              onChanged: (int v) {
                setState(() {
                  _sliderValue = v;
                });
              },
            )
          ],
        ),
      )),
    );
  }
}
