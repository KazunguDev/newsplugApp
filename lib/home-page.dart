import 'package:flutter/material.dart';
import 'package:newsplug/newscanada.dart';
import 'package:newsplug/newspage.dart';
import 'package:newsplug/newsusa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  navigateTourl(BuildContext context){
    Future.delayed(
        const Duration(seconds: 3),
            (){
          //Navigator.pushNamed(context, "/home");
          Navigator.pushReplacementNamed(context, "/news");
        }
    );
  }

  @override
  _HomePageState createState() => _HomePageState();
}
//
class _HomePageState extends State<HomePage> {

  int index = 0;

  List<Widget> widgets = [
    NewsPage(),
    Newsusa(),
    Newscanada()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("News Plug"),
        actions: [
          IconButton(
            onPressed: (){

            }, icon: const Icon(Icons.bookmark),
            tooltip: "bookmarks",

          )
        ],
      ),

      body: widgets[index],

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          // 0
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: "India"
          ),
          // 1
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: "USA"
          ),
          //2
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: "Canada"
          )
        ],

        currentIndex: index,
        selectedFontSize: 16,
        selectedItemColor: Colors.blue,
        onTap: (idx){ // idx will have value of the index of BottomNavBarItem
          setState(() {
            index = idx;
          });
        },
      ),

    );
  }
}