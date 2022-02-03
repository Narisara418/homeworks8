import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworks6/scorring.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Olympicpage(),
    );
  }
}

class Olympicpage extends StatelessWidget {
  Olympicpage({Key? key}) : super(key: key);

  var scor = scorring();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OLYMPIC BOXING SCORING'),
          backgroundColor: Colors.redAccent.shade700,
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/guess_logo.png', width: 50),
                      SizedBox(width: 5.0),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'tokyo ',
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.deepOrangeAccent.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            width: 50.0,
                            height: 30.0,
                            color: Colors.black,
                            child: Text(
                              'Women\'s Light (57-60) Semi-Final',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            alignment: Alignment.center,
                          )),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/images/guess_logo.png',
                            width: 100),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/guess_logo.png',
                                    width: 50),
                                SizedBox(width: 5),
                                Text('IRE'),
                              ],
                            ),
                          ),
                          SizedBox(width: 2.5),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text('harrington'),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/images/guess_logo.png',
                            width: 100),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Image.asset('assets/images/guess_logo.png',
                                    width: 50),
                                SizedBox(width: 5),
                                Text('THA'),
                              ],
                            ),
                          ),
                          SizedBox(width: 2.5),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Text('Narisara'),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:
                        Container(height: 20.0, color: Colors.red.shade700),
                      ),
                      Expanded(
                        child: Container(height: 20.0, color: Colors.blue),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(

                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            onPressed: () {
                              var result = scor.doRed();
                              if (result == 0) {
                                showDialog(
                                  context: context, builder: (BuildContext context){
                                    return AlertDialog(
                                      content: Text('${scor.red}  Round ${scor.c}  ${scor.blue}'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('OK')
                                        )
                                      ],
                                    );
                                });
                            }else{
                                showDialog(
                                    context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    content: Text('IRE WIN!!! \nScore: ${scor.red} : ${scor.blue} \nIn round ${scor.c}'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK')
                                      )
                                    ],
                                  );
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/guess_logo.png',
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ElevatedButton(
                            onPressed: () {
                              var result = scor.doBlue();
                              if (result == 0) {
                                showDialog(
                                    context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    content: Text('${scor.red}  Round ${scor.c}  ${scor.blue}'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK')
                                      )
                                    ],
                                  );
                                });
                              }else{
                                showDialog(
                                    context: context, builder: (BuildContext context){
                                  return AlertDialog(
                                    content: Text('THA WIN!!! \nScore: ${scor.blue} : ${scor.red} \nIn round ${scor.c}'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('OK')
                                      )
                                    ],
                                  );
                                });
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/guess_logo.png',
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
