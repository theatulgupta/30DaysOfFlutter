import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widgets/themes.dart';

class CatalogueHeader extends StatelessWidget {
  const CatalogueHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalogue App".text.xl4.bold.color(MyTheme.darkBluish).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}