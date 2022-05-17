import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({ required this.child,this.height = kToolbarHeight}) : super(child: child,preferredSize:  Size.fromHeight(height));

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),
        elevation: 2,
        color: Colors.white,
        child: Container(
          height: preferredSize.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}