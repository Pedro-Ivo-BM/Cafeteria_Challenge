import 'package:flutter/material.dart';

class SplashScreenWidget extends StatelessWidget {
  const SplashScreenWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}


// Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         // decoration: BoxDecoration(
//         //   gradient: ColorsTheme.redeBackgroundSplashScreenLinearGradient,
//         // ),
//         child: Center(
//           child: Transform.scale(
//             scale: LayoutConstants.redeLogoSplashScreenScale,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Flexible(
//                   child: SvgPicture.asset(
//                     AssetsConstant.redeLogoSplash,
//                     color: ColorsTheme.neutral.shade100,
//                   ),
//                 ),
//                 Flexible(
//                   child: SvgPicture.asset(
//                     AssetsConstant.redeTextSplash,
//                     color: ColorsTheme.neutral.shade100,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),