import 'package:flutter/material.dart';

import 'package:flutter_apprentice_course/models/recipie.dart';

class CardBuilder extends StatelessWidget {
  final Recepie recepie;
  const CardBuilder({
    Key? key,
    required this.recepie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(recepie.imgUrl),
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              recepie.label,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
