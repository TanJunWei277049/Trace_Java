import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text:'What is this?',
    options:[
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: true),
      const Option(text:'A flow of water',isCorrect: false),
    ],
  ),
  Question(
    text:'What is this?',
    options:[
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: true),
      const Option(text:'A flow of water',isCorrect: false),
    ],
  ),
  Question(
    text:'What is this?',
    options:[
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: true),
      const Option(text:'A flow of water',isCorrect: false),
    ],
  ),
  Question(
    text:'What is this?',
    options:[
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: true),
      const Option(text:'A flow of water',isCorrect: false),
    ],
  ),
  Question(
    text:'What is this?',
    options:[
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: false),
      const Option(text:'A flow of water',isCorrect: true),
      const Option(text:'A flow of water',isCorrect: false),
    ],
  ),
];

class _QuizState extends State<Quiz> {

  int _questionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 32),
          Text('Question $_questionNumber/${questions.length}'),
          const Divider(thickness:1,),
          Expanded(
            child: PageView.builder(
              itemCount: questions.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final _question = question[index];
                return buildQuestion(_question);
              },
            ),
          ),
        ],
      ),
    );
  }

  Column buildQuestion (Question question){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        Text(question.text,
        style: const TextStyle(fontSize: 25),),
        const SizedBox(height: 32,),
        Expanded(
          child: OptionWidget(
            question: question,
            onClickedOption: (option) {
              if (question.isLocked){
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
              }
            },
          )
        )
      ],
    );
  }
}

class OptionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;

  const OptionWidget({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView (
    child: Column(
      children: question.options
      .map((option) => buildOption(context, option))
      .toList(),
    ),
  );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.text,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
  }

}