import 'package:flutter/material.dart';
import 'package:graphdemo/Leetcode/widget/recent_submission.dart';
import 'package:graphdemo/Leetcode/widget/solved_question_info.dart';
import 'package:graphdemo/Leetcode/widget/user_info.dart';
import 'package:graphdemo/provider/leetcode_provider.dart';
import 'package:provider/provider.dart';

class LeetcodeUserData extends StatelessWidget {
  const LeetcodeUserData({super.key});

  @override
  Widget build(BuildContext context) {
    final leetcode = Provider.of<LeetCodeUser>(context, listen: false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTile(
          childWidget: UserProfileInfo(leetcode: leetcode),
        ),
        CustomTile(
          childWidget: UserSolvedInfo(leetcode: leetcode),
        ),
        CustomTile(
          childWidget: UserRecentSubmission(leetcode: leetcode),
        )
      ],
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({super.key, required this.childWidget});
  final Widget childWidget;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: childWidget,
      ),
    );
  }
}
