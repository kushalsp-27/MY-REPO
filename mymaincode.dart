import 'package:flutter/material.dart';

class newNumbers extends StatefulWidget {
  @override
  _newNumbersState createState() => _newNumbersState();
}

class _newNumbersState extends State<newNumbers> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _num1 = TextEditingController();
    final _num2 = TextEditingController();
    final _tot = TextEditingController();
    int result;
    int sum;

    return Scaffold(
      appBar: AppBar(title: Text('ADD TWO NUMBERS')),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              TextField(
                controller: _num1,
                decoration: InputDecoration(
                  labelText: "Enter Number 1",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _num2,
                decoration: InputDecoration(
                  labelText: "Enter Number 2",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: _tot,
                decoration: InputDecoration(
                  labelText: "Total",
                ),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  sum = int.parse(_num1.text) + int.parse(_num2.text);
                  result = sum;
                  _tot.text = result.toString();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 15,
                  width: size.width / 1,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: Text(
                    "THE SUM IS ...",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
