import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    required this.icon,
    Key? key,
  }) : super(key: key);
  final IconData icon;

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double ctWidth = 0;
  double ctHeight = 0;
  Color iconColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80.0),
        border: Border.all(
          width: 10,
          color: Colors.white,
        ),
        color: Colors.white,
      ),
      width: 180,
      height: 180,
      child: MouseRegion(
        onExit: (a) {
          setState(() {
            ctWidth = 0;
            ctHeight = 0;
            iconColor = Colors.black;
          });
        },
        onEnter: (a) {
          setState(() {
            ctWidth = 180;
            ctHeight = 180;
            iconColor = Colors.white;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              constraints: const BoxConstraints(
                maxWidth: 180,
                maxHeight: 180,
              ),
              duration: const Duration(milliseconds: 350),
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              alignment: Alignment.center,
              width: ctWidth,
              height: ctHeight,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(90),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  widget.icon,
                  size: 100,
                  color: iconColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
