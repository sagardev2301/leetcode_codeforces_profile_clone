import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../provider/leetcode_provider.dart';
import 'problemSolvedIndicator.dart';

class UserSolvedInfo extends StatelessWidget {
  const UserSolvedInfo({Key? key, required this.leetcode}) : super(key: key);
  final LeetCodeUser leetcode;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.19,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Solved Problems",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black38,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 6.0,
                  progressColor: Colors.amber,
                  percent: 
                  (
                    leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![1].count! +
                    leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![2].count! +
                    leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![3].count!
                  ) /
                      (leetcode.eT +
                          leetcode.mT +
                          leetcode.hT),
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        (
                          leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![1].count! +
                          leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![2].count! +
                          leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![3].count!).toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Solved')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  ProblemSolvedIndicator(
                      level: "Easy",
                      color: Colors.lightBlue,
                      countSolved: leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![1].count!,
                      countTotal: leetcode.eT,
                      beatPercentage: leetcode.userProblemSolved.problemsSolvedBeatsStats[0].percentage!),
                  const SizedBox(
                    height: 5,
                  ),
                  ProblemSolvedIndicator(
                      level: "Medium",
                      color: Colors.lime,
                      countSolved:  leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![2].count! ,
                      countTotal: leetcode.mT,
                      beatPercentage: leetcode.userProblemSolved.problemsSolvedBeatsStats[1].percentage!),
                  const SizedBox(
                    height: 5,
                  ),
                  ProblemSolvedIndicator(
                      level: "Hard",
                      color: Colors.red,
                      countSolved:leetcode.userProblemSolved.submitStatsGlobal!.acSubmissionNum![3].count!,
                      countTotal: leetcode.hT,
                      beatPercentage: leetcode.userProblemSolved.problemsSolvedBeatsStats[2].percentage!),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
