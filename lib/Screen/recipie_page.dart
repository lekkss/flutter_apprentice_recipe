import 'package:flutter/material.dart';
import 'package:flutter_apprentice_course/Screen/details_page.dart';
import 'package:flutter_apprentice_course/models/recipie.dart';
import 'package:flutter_apprentice_course/widget/card_view.dart';

class RecipiePage extends StatefulWidget {
  const RecipiePage({Key? key}) : super(key: key);

  @override
  _RecipiePageState createState() => _RecipiePageState();
}

class _RecipiePageState extends State<RecipiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Recepie'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.builder(
            //physics: NeverScrollableScrollPhysics(),
            itemCount: Recepie.samples.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsPage(
                          recepie: Recepie.samples[index],
                        );
                      }),
                    );
                  },
                  child: CardBuilder(recepie: Recepie.samples[index]));
            },
          ),
        ),
      ),
    );
  }
}
