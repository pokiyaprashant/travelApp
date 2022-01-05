import 'package:flutter/material.dart';

class AppTextButton extends StatefulWidget {
  final String buttonText;
  final Function() onPress;
  const AppTextButton(
      {Key? key, required this.buttonText, required this.onPress})
      : super(key: key);

  @override
  _AppTextButtonState createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 40,
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.red)),
        onPressed: widget.onPress,
        child: Text(
          "${widget.buttonText}",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
