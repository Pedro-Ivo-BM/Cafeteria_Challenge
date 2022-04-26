import 'package:cafeteria_challenge/core/common/constants/assets_constants.dart';
import 'package:cafeteria_challenge/core/common/constants/icons_constants.dart';
import 'package:cafeteria_challenge/core/common/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPageOptionsWidget extends StatelessWidget {
  int selectedSizePosition;

  DetailsPageOptionsWidget({Key? key, required this.selectedSizePosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  elevation: 0,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: ColorsTheme.appDefaultPaletColor.shade400,
                  backgroundColor: Colors.transparent,
                  currentIndex: selectedSizePosition,
                  onTap: (index) {
                    selectedSizePosition = index;
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: IconsConstants.cupSizeDisabledIcon,
                      label: "",
                      activeIcon: IconsConstants.cupSizeAbledIcon,
                    ),
                    BottomNavigationBarItem(
                      icon: IconsConstants.cupSizeDisabledIcon,
                      label: "",
                      activeIcon: IconsConstants.cupSizeAbledIcon,
                    ),
                  ]),
            )
          ],
        ),
        // Text('CoffeeSelected'),
        // Text('SugarCubes'),
        // Row(children: [],)
      ],
    );
  }
}
