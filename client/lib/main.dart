import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        // "/home": (_) => Home(),
        // 파일 올리고, 링크 받는 기능
        // 로그인되어 있다는 표시를 확실하게 보여주어야 함!
        // 사용자 로그인 유지 기능 구현..? : 브라우저 껏다 키면 sid가 바뀌는지?
        "/user": (_) => Home(), // 사용자 로그인 창
        "/console": (_) => Home(), // 콘솔 창
      },
    );
  }
}
