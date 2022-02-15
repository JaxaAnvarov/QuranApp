import 'package:flutter/material.dart';
import 'package:quran_app/core/constants/exports.dart';

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
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.share),
                  label: 'Timer',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.bookmark),
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
