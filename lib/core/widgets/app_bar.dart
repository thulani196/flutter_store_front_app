import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );

  const CustomAppBar(
      {super.key,
      this.title = '',
      this.leading,
      this.titleWidget,
      this.showActionIcon = false,
      this.onMenuActionTap});

  final String title;
  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;
  final VoidCallback? onMenuActionTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Color.fromRGBO(0, 0, 0, 0.05)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Stack(
          children: [
            Positioned.fill(
              child: titleWidget == null
                  ? Center(
                      child: Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(15, 105, 201, 1))))
                  : Center(child: titleWidget!),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leading ??
                    Transform.translate(
                        offset: const Offset(-14, 0),
                        child: const BackButton()),
                if (showActionIcon)
                  Transform.translate(
                    offset: const Offset(10,
                        0), // transform to align icons with body content =>  - CircularButton.padding
                    child: InkWell(
                        onTap: onMenuActionTap,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.notifications_none_outlined,
                                  color: Colors.black),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                              ),
                              Icon(Icons.shopping_cart_outlined,
                                  color: Colors.black),
                            ],
                          ),
                        )),
                  )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
