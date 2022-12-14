import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_complete/providers/CountProvider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // object of Provider Class
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    // if listen value is true it will rebuild all widget
    //problem: rebuild all widgets every time when provider called
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Single Provider App'),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Consumer
          Consumer<CountProvider>(builder: (context, provider, child) {
            print("only this widget rebuild");
            return Text(
              provider.count.toString(),
              // accessing Provider class variable
              style: const TextStyle(fontSize: 30.0),
            );
          }),

          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  //calling method of Provider class to increase value
                  countProvider.increaseCount();
                },
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
