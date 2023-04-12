import 'package:flutter/material.dart';
import 'package:sakitgi/pages/home/home_page.dart';
import 'package:sakitgi/pages/home/konsultasi_page.dart';
import 'package:sakitgi/pages/home/profil_page.dart';
import 'package:sakitgi/theme.dart';

import 'diagnosa_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;








  @override
  Widget build(BuildContext context) {
    
    Widget customBottomNav(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
          ),
      /*child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,*/
        child: BottomNavigationBar(
        backgroundColor: backgroundColor3,
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },

        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
          icon: Container(
             margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Image.asset(
              'assets/icon_homepage.png',
              width: 21,
              color: currentIndex == 0 ? primaryColor : Color(0xffFFFFFF),
            ),
          ),
          label: '',
        ),

          BottomNavigationBarItem(
          icon: Container(
             margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Image.asset(
              'assets/icon_konsultasi.png',
              width: 20,
               color: currentIndex == 1 ? primaryColor : Color(0xffFFFFFF),
            ),
          ),
          label: '',
        ),

         BottomNavigationBarItem(
          icon: Container(
             margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Image.asset(
              'assets/icon_diagnosis.png',
              width: 20,
               color: currentIndex == 2 ? primaryColor : Color(0xffFFFFFF),
            ),
          ),
          label: '',
        ),

         BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 5,
            ),
            child: Image.asset(
              'assets/icon_propage.png',
              width: 20,
               color: currentIndex == 3 ? primaryColor : Color(0xffFFFFFF),
            ),
          ),
          label: '',
        ),
      ],
      ),
      );
      //);
      //);
    }


    Widget body() {
      switch (currentIndex) {
        case 0:
        return HomePage();
        break;
        case 1:
        return KonsultasiPage();
        break;
        case 2:
        return DiagnosaPage();
        break;
        case 3:
        return ProfilPage();
        break;

        default:
        return HomePage();
      }
    }






    return Scaffold(
      backgroundColor: backgroundColor1,
      bottomNavigationBar: customBottomNav(),
      body: body()
    );
  }
}