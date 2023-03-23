
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProblemSolvedIndicator extends StatelessWidget {
  const ProblemSolvedIndicator(
      {super.key,
      required this.level,
      required this.countSolved,
      required this.countTotal,
      required this.color,
      required this.beatPercentage});
  final String level;
  final int countSolved;
  final int countTotal;
  final double beatPercentage;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(level),
              const SizedBox(width: 20),
              Text(
                countSolved.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('/${countTotal.toString()}'),
              const Spacer(),
              const Text("Beats"),
              const SizedBox(
                width: 5,
              ),
              Text('$beatPercentage%')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            padding: const EdgeInsets.all(0),
            barRadius: const Radius.circular(12),
            width: 240.0,
            lineHeight: 6.0,
            percent: countSolved / countTotal,
            progressColor: color,
          )
        ],
      ),
    );
  }
}