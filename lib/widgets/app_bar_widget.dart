import 'package:flutter/material.dart';

import 'container_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        spacing: 20,
        children: [
          Containerwidget(svgPath: 'assets/svg/filter.svg'),
          Spacer(),
          Containerwidget(svgPath: 'assets/svg/heart.svg', icon_height: 28),
          Containerwidget(svgPath: 'assets/svg/notification.svg'),
          Containerwidget(svgPath: 'assets/svg/profile_image.svg'),
        ],
      ),
    );
  }
}
