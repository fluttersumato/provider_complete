import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/example_oneProvider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    final sliderProvider =
        Provider.of<ExampleOneProvider>(context, listen: true);
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
            value: sliderProvider.val,
            onChanged: (value) {
              sliderProvider.SetValue(value); // provider method for seting val
              print(sliderProvider.val);
            },
            min: 0.1,
            max: 1.0,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.green.withOpacity(sliderProvider.val), // getter
                  child: Center(
                    child: Text(
                      'Container 1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  color: Colors.red.withOpacity(sliderProvider.val), // getter
                  child: Center(
                    child: Text(
                      'Container 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
