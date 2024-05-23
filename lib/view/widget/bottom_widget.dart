import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [AppColors.appBar2, AppColors.appBar1]),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.home, color: Colors.white),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.credit_card, color: AppColors.grey)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.person, color: AppColors.grey)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.star, color: AppColors.grey)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.diamond, color: AppColors.grey)),
          label: '',
        ),
      ],
      currentIndex: 0,
      onTap: (value) {},
    );
  }
}
