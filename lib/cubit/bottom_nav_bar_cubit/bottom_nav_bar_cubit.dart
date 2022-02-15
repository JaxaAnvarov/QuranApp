import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/screens/bookmark/bookmark_page_view.dart';
import 'package:quran_app/screens/home/home_page_view.dart';
import 'package:quran_app/screens/timer/timer_page.view.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  int pageIndexOfBottomNavigationBar = 0;
  BottomNavigationBarCubit() : super(BottomNavigationBarInitial());

  List<Widget> pages = const [
    HomePageView(),
    TimerViewPage(),
    BookmarkViewPage(),
  ];

  changePages(int tabIndexOgBottomnavigationbar) {
    pageIndexOfBottomNavigationBar = tabIndexOgBottomnavigationbar;
    emit(BottomNavigationBarInitial());
  }
}
