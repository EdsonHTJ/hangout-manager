import 'package:billmanager/shared/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final Function onClick;
  final String text;
  final Icon icon;
  final Color color;
  const LoginButton(
      {Key? key,
      required this.onClick,
      required this.text,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  var isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () => widget.onClick,
        onTapDown: (d) {
          setState(() {
            isPressed = true;
          });
        },
        onTapUp: (d) {
          setState(() {
            isPressed = false;
          });
        },
        child: _buttonWidget(),
      ),
    );
  }

  Widget _buttonWidget() {
    var _color =
        isPressed ? AppColors.buttonPressedColor : AppColors.buttonPrimaryColor;
    return AnimatedContainer(
      width: 200,
      height: 100,
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            widget.icon,
            Text(widget.text, style: Theme.of(context).textTheme.button),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
