import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List list = [
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c'
    },
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c'
    },
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c'
    },
    {
      'url':
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  list[index]['url'],
                  fit: BoxFit.fill,
                );
              },
              itemCount: list.length,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
              loop: true,
              autoplay: true,
            ),
          ),
        ),
        Container(
          height: 300.0,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return new Image.network(
                list[index]['url'],
                fit: BoxFit.fill,
              );
            },
            itemCount: 4,
            itemWidth: 300.0,
            itemHeight: 400.0,
            layout: SwiperLayout.TINDER,
          ),
        )
      ]),
    );
  }
}
