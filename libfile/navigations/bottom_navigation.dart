import 'package:flutter/material.dart';
import 'package:netflix_clone/views/home_page.dart';

class BottomNavigation extends StatefulWidget {
  //const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedBottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (int index) {
          setState(() {
            this._selectedBottom;
          });
        },
        currentIndex: _selectedBottom,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset_rounded),
              label: "Games",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video_sharp),
              label: "Coming Soon"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined),
              label: "Downloads",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
          ),
        ],
      ),
      body: Stack(
        children: [
          Visibility(
              child: HomeView(),
              visible: _selectedBottom ==0,
          ),
          Visibility(
            child: Center(
              child: Text("Games View"),
            ),
            visible: _selectedBottom ==1,
          ),
          Visibility(
              child: Center(
                child: Text("Coming Soon View"),
              ),
            visible: _selectedBottom ==2,
          ),

          Visibility(
              child: Center(
                child: Text("Download View"),
              ),
            visible: _selectedBottom == 3,
          ),
          Visibility(
              child: Center(
                child: Text("More View"),
              ),
            visible: _selectedBottom == 4,
          ),
        ],
      ),
    );
  }
}
