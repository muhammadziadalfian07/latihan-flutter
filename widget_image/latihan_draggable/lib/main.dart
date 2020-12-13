import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String image1 =
      "https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Kamen_rider_eurodata.png/250px-Kamen_rider_eurodata.png";

  String image2 =
      "https://assets.kompasiana.com/items/album/2020/08/15/saber-3-5f371188097f3633da4425e2.png?t=o&v=760";

  String targetImage;

  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Draggable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Spacer(
                    flex: 1,
                  ),
                  Draggable<String>(
                    data: image1,
                    child: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          child: Image(
                            image: NetworkImage(image1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    childWhenDragging: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                    ),
                    feedback: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          child: Image(
                            image: NetworkImage(image1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Draggable(
                    data: image2,
                    child: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          child: Image(
                            image: NetworkImage(image2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    childWhenDragging: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                    ),
                    feedback: Flexible(
                      flex: 1,
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          child: Image(
                            image: NetworkImage(image1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            DragTarget<String>(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetImage = value;
              },
              builder: (context, candidates, rjeceted) {
                return (isAccepted)
                    ? SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          child: Image(
                            image: NetworkImage(targetImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : SizedBox(
                        height: 150,
                        width: 150,
                        child: Material(
                          color: Colors.grey,
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
