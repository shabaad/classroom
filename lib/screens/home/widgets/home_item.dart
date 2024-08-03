import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.color,
      required this.iconColor,
      this.onTap});
  final String title;
  final IconData icon;
  final Color color;
  final Color iconColor;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 150,
          width: double.infinity,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: color),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: 50,
                  color: iconColor,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
