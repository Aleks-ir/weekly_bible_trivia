import 'package:flutter/material.dart';

MaterialButton menuMaterialButton(String title, bool isActive, VoidCallback callback,
    {Color colorActive: Colors.teal, Color colorBackground: Colors.black12, Color textColor: Colors.white, double radiusCircular : 30}) {
  return MaterialButton(
    highlightElevation: 0,
    onPressed: callback,
    textColor: textColor,
    color: isActive ? colorActive : colorBackground,
    child: SizedBox(
      child: Text(title),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(radiusCircular))),
  );
}

OutlinedButton menuOutlinedButton(String title, VoidCallback callback,
    {Color textColor: Colors.black87}) {
  return OutlinedButton(
    onPressed: callback,
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.teal.shade100),
      shape:
      MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    ),
    child: Text(title, style: TextStyle(color: textColor, fontSize: 12), strutStyle: StrutStyle()),
  );
}


FloatingActionButton menuFloatingButton(Icon icon, bool isActive, VoidCallback callback,
    {Color color : Colors.teal}) {
  return FloatingActionButton(
    highlightElevation: 0,
    splashColor: color,
    onPressed: callback,
    child: icon,
    foregroundColor: Colors.white,
    elevation: 0,
    backgroundColor: isActive ? color : Colors.black38,
  );
}



Widget  animatedHomeButton({required String title, double height: 100,
  double width: 100,}) {
  return Container(
    height: width,
    width: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 6.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.greenAccent,
            Colors.teal,
          ],
        )),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
  );
}

MaterialButton authButton(Widget childWidget, VoidCallback callback,
    {Color color: Colors.teal, Color textColor: Colors.white}) {
  return MaterialButton(
    onPressed: callback,
    textColor: textColor,
    color: color,
    child: SizedBox(
      child: childWidget,
    ),
    height: 45,
    minWidth: 600,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  );
}