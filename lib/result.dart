import'package:flutter/material.dart';

class Result extends StatelessWidget {
 // const Result({Key? key}) : super(key: key);
  final Function ResetHandler;
  int Score;
  Result(this.Score,this.ResetHandler);
  String get Review {
    String result = '';

    if (Score >= 9)
      result='Excellent';
    else if (Score >= 7)
      result='Very Good';
    else if (Score >= 5)
      result='Good try';
    else
      result='Well try, Try Again';

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
             // color: Colors.lightBlue,
              height: 300,
              width:300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('$Score',
                    style: TextStyle(
                      fontSize:150,
                      fontWeight:FontWeight.bold,),
                  ),
                  Text('  Your Score',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                      ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(300),),
                border:Border.all(color: Colors.grey.withOpacity(0.4),width: 10) ,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.2))
                ]
              ),
            ),
          ),
        ),
        Expanded(
            flex:1,
            child: Text(Review,
              style: TextStyle(
                  fontSize:30,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                 // backgroundColor: Colors.grey.withOpacity(0.2),
                  ),
                 ),
               ),
        Expanded(

            child: Center(
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                   // padding: EdgeInsets.symmetric(horizontal: 100),
                  ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text('Restart Quiz '),
                     Icon(Icons.restart_alt_sharp)
                   ],
                 ),
                 onPressed:() {
                   ResetHandler();
                 },
                ),
              ),
            ),),
      ],
    );
  }
}
