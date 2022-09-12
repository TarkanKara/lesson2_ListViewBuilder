import 'package:flutter/material.dart';

void main() {
  runApp(lesson_2());
}

class lesson_2 extends StatelessWidget {
  const lesson_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter",
      home: ListScreen(),
    );
  }
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView_Example",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: ((context, index) {
          if (index == 0) {
            return Container(
              height: 100,
              margin: EdgeInsets.all(10),
              /*decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)),*/
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    width: 80,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(210)),
                  );
                }),
              ),
            );
          } else {
            return Container(
              height: 100,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15)),
            );
          }
        }),
      ),
    );
  }
}
