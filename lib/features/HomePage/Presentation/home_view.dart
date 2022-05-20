import 'package:flutter/material.dart';
import 'package:fruits/features/HomePage/Presentation/widgets/home_view_body.dart';
import 'package:fruits/features/favourite/presentation/favourite_view.dart';
import 'package:fruits/features/myprofile/presentation/myprofile_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  int selectedindex = 0;
  List<Widget> bottomsnavogationsitems = [
    const HomePageBody(),
    const Center(
      child: Text('MyCart'),
    ),
    const FavouritView(),
    const MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          currentIndex: selectedindex,
          unselectedItemColor: const Color(0xff838181),
          selectedItemColor: const Color(0xff769E49),
          elevation: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ]),
      body: bottomsnavogationsitems.elementAt(selectedindex),
    );
  }
}
