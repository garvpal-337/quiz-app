import 'package:flutter/material.dart';
import 'package:quizapp/submit.dart';
//import 'package:quizapp/main.dart';

class Answer extends StatelessWidget {
//  const Answer({Key? key}) : super(key: key);
  final void Function(Map selectedAns) selectHandler;
  final Map answerMap;
  final bool isSelected;
  const Answer(this.selectHandler, this.answerMap, this.isSelected);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[200],
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      margin: EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        tileColor: isSelected ? Colors.grey : null,
        selectedColor: Colors.red,
        hoverColor: Colors.red,
        leading: Text(answerMap['choice'].toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        onTap: () {
          selectHandler(answerMap);
        },
      ),
    );
  }
}
