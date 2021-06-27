import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var number1;
  var number2;
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 12,
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue.shade100, Colors.grey],
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    child: Text(
                      'First value:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 24),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      onSubmitted: (String value1) {
                        setState(() {});
                        assert(num.parse(value1) is int);
                        number1 = (num.parse(value1));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    child: Text(
                      'Second value:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                      ),
                      style: TextStyle(fontSize: 24),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      onSubmitted: (String value2) {
                        setState(() {});
                        assert(num.parse(value2) is int);
                        number2 = (num.parse(value2));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    child: Text(
                      'Operation:',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {});
                            result = number1 + number2;
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.minus,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {});
                            result = number1 - number2;
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.times,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {});
                            result = number1 * number2;
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.divide,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {});
                            result = number1 / number2;
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Title(
                      color: Colors.black,
                      child: Text(
                        '$number1 🤔 $number2 = $result',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
