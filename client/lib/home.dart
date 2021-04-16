import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  width: 50,
                  height: 50,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(50),
                    padding: EdgeInsets.all(0),
                    child: Icon(
                      CupertinoIcons.list_bullet,
                      color: Colors.black,
                    ),
                    onPressed: () => print(""),
                    color: Colors.grey.shade50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 1),

          // 마우스 위에 있을 시, 설명 위젯 표시
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                  width: 50,
                  height: 50,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(50),
                    padding: EdgeInsets.all(0),
                    child: Icon(
                      CupertinoIcons.person,
                      color: Colors.black,
                    ),
                    onPressed: () => print(""),
                    color: Colors.grey.shade50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 25),
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.cloud_moon,
              size: 150,
            ),
            Text(
              "ShortKuts!",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Simply share your file through Shortcuts!",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w900,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    color: Colors.grey.shade300,
                  ),
                  Column(
                    children: [
                      Icon(
                        CupertinoIcons.doc,
                        size: 50,
                      ),
                      SizedBox(height: 10),
                      Text("Upload your file (<1GB)")
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 125),
            Text(
              "©Team Kelly 2021.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
