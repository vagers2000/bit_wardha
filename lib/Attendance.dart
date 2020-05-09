import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'databse.dart';
import 'whenfinished.dart';

class atten extends StatefulWidget {
  @override
  _attenState createState() => _attenState();
}

class _attenState extends State<atten> {
  Map<String, String> ran = ({});
  int number = 1;
  Color prc = Colors.green,
      abc = Colors.red;
  List<Row> keeper = [];

  Widget custombox(Color numcolor, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(83),
            ),
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48.0),
                  side: BorderSide(color: Colors.grey[100])),
              splashColor: Colors.green,
              padding: EdgeInsets.all(0),
              onPressed: () {},
              child: Center(
                  child: Text(
                    number.toString(),
                    style: TextStyle(fontSize: 35, color: numcolor),
                  )),
            )
          //RaisedButton.icon(onPressed: null, icon: stat, label:Text("fg") ),
          //Center(
          //  child: stat,
          //   ),
        ),
        SizedBox(
          width: 7,
          child: VerticalDivider(
            thickness: 1,
            color: Colors.blueGrey,
            indent: 18,
            endIndent: 18,
            width: 1,
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 60,
                    child: Text(
                      number.toString(),
                      style: TextStyle(fontSize: 39),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      ran[number.toString()] = "present";
                      setState(() {
                        print("dd");
                        keeper.add(custombox(prc, number));
                        number++;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 75,
                      child: Text(
                        "Present",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      ran[number.toString()] = "absent";
                      setState(() {
                        print("dd");
                        keeper.add(custombox(abc, number));
                        number++;
                      });
                    },
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: Colors.red,
                      child: Text(
                        "Absent",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.limeAccent,
                    child: RaisedButton(
                      onPressed: () {
                        print("run");
                        whenfinished(ran);
                      },
                      child: Text("Click",),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(49),
                      color: Colors.grey[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        controller: ScrollController(keepScrollOffset: true),
                        shrinkWrap: true,
                        reverse: true,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: keeper,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}