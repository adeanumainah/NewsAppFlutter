import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/articles.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/repository/data_categories.dart';
import 'package:news_app/repository/data_service.dart';
import 'package:news_app/ui/bookmark_page.dart';
import 'package:news_app/utils/theme.dart';

import 'news_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //buat variable untuk index halaman buttom nav
  int _currentIndex = 0;

  //buat var untuk controoller pade nya
  late PageController _pageController;

  News news = News();

  //memanggil mdel data dan categories
  late List<Category> categories;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: news.getNews(),
            builder: (context, snapshot) {
              return snapshot.data != null
                  ? PageView(
                      controller: _pageController,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      children: [
                        NewsPage(snapshot.data as List<Article>, categories),
                        BookMarkPage()
                      ],
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    );
            }),
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * 60),
          color: Color(0xffF6f7f8),
          child: BottomNavyBar(
            selectedIndex: _currentIndex,
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  icon: Icon(Icons.article_outlined, size: 24),
                  title: Text(
                    'News',
                    style: detailArticle.copyWith(
                        fontSize: 16, color: Colors.blue),
                  )),
              BottomNavyBarItem(
                  icon: Icon(Icons.bookmark_border, size: 24),
                  title: Text(
                    'Bookmark',
                    style: detailArticle.copyWith(
                        fontSize: 16, color: Colors.blue),
                  )),
            ],
            onItemSelected: (index) {
              setState(() {
                _currentIndex = index;
                _pageController.jumpToPage(index);
              });
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}