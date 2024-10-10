
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return TodoList();
  }
}

class TodoList extends StatefulWidget {
  TodoList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TodoList();
  }
}

class _TodoList extends State {
  List<Color> Mycolour = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("To-do list",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
          backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Mycolour[index % Mycolour.length],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              //1 child
                              Container(
                                alignment: Alignment.center,
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Image.network(
                                  "https://w7.pngwing.com/pngs/348/219/png-transparent-gallery-image-picture-ui-photo-user-interface-outline-icon-thumbnail.png",
                                  height: 25,
                                ),
                              ),

                              const SizedBox(
                                width: 15,
                              ),

                              //child 3 row
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lorem Ipsum is simply setting industry ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(84, 84, 84, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Spacer(),

                          /// row for date and icons
                          Row(
                            children: [
                              const Text(
                                " 10 July 2023",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(132, 132, 132, 1),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.edit_outlined,
                                size: 20,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.delete_outline,
                                size: 20,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              )
                            ],
                          )
                        ],
                      ),
                    ),

                    //spacing
                    SizedBox(
                      height: 25,
                    )
                  ],
                );
              }),
        ),
        floatingActionButton: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromRGBO(0, 139, 148, 1),
          ),
          child: Icon(
            Icons.add_outlined,
            color: Colors.white,
            size: 45,
          ),
        ),
      ),
    );
  }
}
