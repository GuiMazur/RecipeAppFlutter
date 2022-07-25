import 'package:flutter/material.dart';
import 'package:test1/content/home_page_content/categories_content.dart';
import 'package:test1/content/home_page_content/favorite_content.dart';
import 'package:test1/widgets/main_drawer_widget.dart';
import 'package:test1/controller/bottom_navigation_controller.dart';


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  BottomPageController bottomPageController = BottomPageController();

  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      Text('Categorias'),
      centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: NotificationListener(
        onNotification: (notification) {  
          bottomPageController.indexBottomPageController.value = _pageController.page!.round();
          return true;
        },
        child: PageView(
          controller: _pageController,
          children: [
            Categorias(),
            Favoritos(),
          ],
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: bottomPageController.indexBottomPageController,
        builder: (_, value, __) {
          return BottomNavigationBar(
            currentIndex: bottomPageController.indexBottomPageController.value,
            onTap: (page) => bottomPageController.onTapPageController(page, _pageController),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.square_rounded),
                label: 'Categorias'
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favoritos'
              )
            ],
          );
        }
      ),
    );
  }
}