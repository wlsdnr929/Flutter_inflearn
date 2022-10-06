import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

// StatelessWidget 만들기
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "https://cdn2.thecatapi.com/images/bi.jpg",
      "https://cdn2.thecatapi.com/images/63g.jpg",
      "https://cdn2.thecatapi.com/images/a3h.jpg",
      "https://cdn2.thecatapi.com/images/a9m.jpg",
      "https://cdn2.thecatapi.com/images/aph.jpg",
      "https://cdn2.thecatapi.com/images/1rd.jpg",
      "https://cdn2.thecatapi.com/images/805.gif",
    ];
    return Scaffold(
      // appBar
      appBar: AppBar(
        // leading 영역: appBar 왼쪽
        leading: IconButton(
          icon: Icon(CupertinoIcons.camera, color: Colors.black),
          // 눌린다면
          onPressed: () {},
        ),
        // actions 영역: appBar 오른쪽
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
            // 눌린다면
            onPressed: () {},
          )
        ],
        // assets 폴더 만들고 그 안에 logo.png 파일 넣어놓고,
        // assets 폴더에 있는 logo.png 이미지 가져오기
        title: Image.asset(
          'assets/logo.png',
          height: 32,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: ((context, index) {
          String image = images[index];
          return Feed(imageUrl: image);
        }),
      ),
    );
  }
}
