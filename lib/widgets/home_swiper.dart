import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:fashion_app/models/swiper_struct.dart';

class HomeSwiper extends StatelessWidget {
  List<SwiperStruct> swiperList = [];

  HomeSwiper(this.swiperList, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      // controller: SwiperController(),
      pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              activeColor: Colors.red, color: Colors.black38)),
      autoplay: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Stack(children: [
          Ink(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(swiperList[index].imageName),
                    fit: BoxFit.cover)),
          ),
          Container(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                swiperList[index].title,
                style: TextStyle(color: Colors.red, fontSize: 20),
              ))
        ]);
      },
    );
  }
}
