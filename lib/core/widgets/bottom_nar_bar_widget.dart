import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran_app/cubit/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';

class MyBottomNavBarWidget extends StatelessWidget {
  const MyBottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationBarCubit(),
      child: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
        builder: (context, state) {
          var _context = context.watch<BottomNavigationBarCubit>();
          return Scaffold(
            body: _context.pages[_context.pageIndexOfBottomNavigationBar],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: _context.pageIndexOfBottomNavigationBar,
              onTap: (int indexOfBottomNavigationBar) {
                context
                    .read<BottomNavigationBarCubit>()
                    .changePages(indexOfBottomNavigationBar);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.timer,
                  ),
                  label: 'Timer',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  label: 'Boookmark',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
