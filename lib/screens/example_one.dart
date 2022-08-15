import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  double val = 0.5;

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Multi Provider'),
        ),
      ),
      body: Column(
        children: [
          Text('slider'),
          Slider(
            value: val,
            onChanged: (value) {
              val = value;
              print(val);
              setState(() {});
            },
            min: 0.1,
            max: 1.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green.withOpacity(val),
                  child: Center(
                      child: Text(
                        'Container 1',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red.withOpacity(val),
                  child: Center(
                      child: Text(
                        'Container 2',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
