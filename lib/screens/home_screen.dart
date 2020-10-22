import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home";
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _images = List();

  @override
  void initState() {
    _images
    ..add('images/banner.png')
    ..add('images/banner2.png')
    ..add('images/banner3.png');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Swiper(
                    itemCount: _images.length,
                    itemBuilder: (BuildContext context, int index) => Image.asset(
                      _images[index],
                      fit: BoxFit.cover,
                    ),
                    autoplay: true
                  ),
                ),
                bottom:  TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.assignment), text: "Populer"),
                    Tab(icon: Icon(Icons.all_inclusive), text: "Terbaru"),
                    Tab(icon: Icon(Icons.airplay), text: "Terlaris")
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Center(child: Text("ini halaman populer")),
              Center(child: Text("ini halaman Terbaru")),
              Center(child: Text("ini halaman Terlaris"))
            ],
          ),
        ),
      ),
    );
  }
}