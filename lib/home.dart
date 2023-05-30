import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter_app/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Numberprovider>(
      builder: (context, numberprovider, child) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                numberprovider.add();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                numberprovider.delete();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
        body: Column(
          children: [
            Text(
              numberprovider.number.last.toString(),
              style: TextStyle(fontSize: 30),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: numberprovider.number.length,
                itemBuilder: (context, index) => Text(
                  numberprovider.number[index].toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
