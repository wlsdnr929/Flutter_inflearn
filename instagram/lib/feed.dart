import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  const Feed({
    Key? key,
    // imageUrl 에 값 넣기
    required this.imageUrl,
  }) : super(key: key);

  // 이미지를 담을 변수
  final String imageUrl;

  @override
  State<Feed> createState() => _FeedState();
}

// dart에서 '_'(언더바)로 시작하는 것은 외부에서 접근할 수 없음
class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      // 가로방향에 대한 정렬
      // start :  왼쪽 정렬, center : 가운데, end : 오른쪽 끝
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // body 이미지
        Image.network(
          widget.imageUrl,
          height: 400,
          width: double.infinity,
          // 원본의 이미지를 화면의 비율 (box)에 맞게 알아서 잘라서 넣어라
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(
                CupertinoIcons.heart,
                // '좋아요'버튼 클릭 여부에 따라 색상 변경
                color: isFavorite ? Colors.pink : Colors.black,
              ),
              // 눌린다면
              onPressed: () {
                // 변경된 내용에 따라 화면 바꿔주기
                setState(() {
                  print('heart click');
                  isFavorite = !isFavorite;
                });
              },
            ),
            IconButton(
              icon: Icon(CupertinoIcons.chat_bubble, color: Colors.black),
              // 눌린다면
              onPressed: () {},
            ),
            // 남아있는 빈 공간을 최대한 사용 (여기서는 오른쪽으로 최대한 밀어버림)
            Spacer(),
            IconButton(
              icon: Icon(CupertinoIcons.bookmark, color: Colors.black),
              // 눌린다면
              onPressed: () {},
            )
          ],
        ),

        // 좋아요
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "2 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // 설명
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "FEBURARY 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
