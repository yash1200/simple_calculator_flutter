import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int num1 = 0, num2 = 0;
  var sum=0;

  final TextEditingController Tnum1=TextEditingController();
  final TextEditingController Tnum2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Text(
                "Output: $sum",
                style: TextStyle(fontSize: 30, color: Colors.red),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
              child: TextField(
                controller: Tnum1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Number 1'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: TextField(
                controller: Tnum2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                    labelText: 'Number 2'),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: RaisedButton(
                        child: Text(
                          '+',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: doAdd,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: RaisedButton(
                        child: Text(
                          '-',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: doSub,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: RaisedButton(
                        child: Text(
                          '*',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: doMul,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: RaisedButton(
                        child: Text(
                          '/',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: doDiv,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              child: RaisedButton(
                child: Text(
                  'Clear',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: clear,
              ),
            )
          ],
        ),
      ),
    );
  }

  void doAdd(){
    setState(() {
      num1=int.parse(Tnum1.text);
      num2=int.parse(Tnum2.text);
      sum=(num1+num2);
    });
  }
  void doSub(){
    setState(() {
      num1=int.parse(Tnum1.text);
      num2=int.parse(Tnum2.text);
      sum=(num1-num2);
    });
  }
  void doMul(){
    setState(() {
      num1=int.parse(Tnum1.text);
      num2=int.parse(Tnum2.text);
      sum=(num1*num2);
    });
  }
  void doDiv(){
    setState(() {
      num1=int.parse(Tnum1.text);
      num2=int.parse(Tnum2.text);
      sum=num1~/num2;
    });
  }
  void clear(){
    Tnum1.text='';
    Tnum2.text='';
  }

}
