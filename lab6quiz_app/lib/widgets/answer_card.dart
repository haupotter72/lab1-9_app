import 'package:flutter/material.dart';


class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.question,
    required this.isSelected,
    required this.currentIndex,
    required this.correctAnswerIndex,
    required this.selectedAnswerIndex,
  });

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer = currentIndex == correctAnswerIndex;
    bool isWrongAnswer = selectedAnswerIndex != null &&
        currentIndex == selectedAnswerIndex &&
        currentIndex != correctAnswerIndex;

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedAnswerIndex == null
                ? Colors.white 
                : isCorrectAnswer
                    ? Colors.green 
                    : isWrongAnswer
                        ? Colors.red 
                        : Colors.white, 
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                question,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 10),
            if (selectedAnswerIndex != null)
              isCorrectAnswer
                  ? buildCorrectIcon() 
                  : isWrongAnswer
                      ? buildWrongIcon() 
                      : const SizedBox.shrink(), 
          ],
        ),
      ),
    );
  }
}


Widget buildCorrectIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.green,
      child: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );


Widget buildWrongIcon() => const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.red,
      child: Icon(
        Icons.close,
        color: Colors.white,
      ),
    );
