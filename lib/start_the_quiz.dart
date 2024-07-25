import 'package:flutter/material.dart';

class start_quiz extends StatefulWidget {
  const start_quiz({super.key});

  @override
  State<start_quiz> createState() => _start_quizState();
}

class _start_quizState extends State<start_quiz> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<String> Question = ['q1', 'q2', 'q3', 'q4', 'q5', 'q6'];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 148, 181),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: height * .1,
                      width: width * .9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(height * .1)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * .04,
                          ),
                          Text('${index + 1}'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(Question[index]),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * .2,
                              height: height * .06,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(height * .1)),
                              child: Center(child: Text('A')),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width * .5,
                        ),
                        Container(
                          width: width * .2,
                          height: height * .06,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(height * .1)),
                          child: Center(child: Text('B')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: width * .2,
                              height: height * .06,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular(height * .1)),
                              child: Center(child: Text('C')),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * .1,
                          width: width * .5,
                        ),
                        Container(
                          width: width * .2,
                          height: height * .06,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(height * .1)),
                          child: Center(child: Text('D')),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
