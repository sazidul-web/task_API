import 'package:flutter/material.dart';
import 'package:task_1/Model/AndroidVerison.dart';

class Nextpage extends StatelessWidget {
  final List<AndroidVerison> jasondata;
  Nextpage({required this.jasondata});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemCount: jasondata.length,
          itemBuilder: (context, index) {
            final version = jasondata[index];
            return Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                    border: Border.all(color: Colors.blueAccent)),
                alignment: Alignment.center,
                child: Text(
                  version.title ?? ' ',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
