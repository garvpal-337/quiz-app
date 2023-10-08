import 'package:flutter/material.dart';

class submitAnswer extends StatelessWidget {
  Function submitHandler;
  submitAnswer(this.submitHandler);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        child: Text('Submit'),
        onPressed: (){
          submitHandler;
        }
      ),
    );
  }
}
