import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final IconData? icon;
  final String text;
  final Color backgroundColor;
  final Color itemColor;
  final String? asset;
  const Button(
      {required this.onTap,
      this.icon,
      required this.text,
      required this.backgroundColor,
      required this.itemColor,
      this.asset});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding:
            (icon == null) ? const EdgeInsets.all(4) : const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  icon,
                  color: itemColor,
                ),
              )
            else
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Image.asset(
                  asset!,
                  width: 35,
                  height: 35,
                ),
              ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15.0,
                color: itemColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
