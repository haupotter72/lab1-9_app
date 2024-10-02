import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.activeColor = Colors.blue,
    this.disabledColor = Colors.black,  
    this.textColor = Colors.white,     
  });

  final VoidCallback? onPressed;
  final String label;
  final Color activeColor;
  final Color disabledColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Card(
          color: onPressed != null ? activeColor : disabledColor,
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: textColor, 
              ),
            ),
          ),
        ),
      ),
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.pressed)) {
              return Colors.blue.withOpacity(0.2); 
            }
            return null;
          },
        ),
      ),
    );
  }
}
