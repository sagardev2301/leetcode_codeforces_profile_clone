import 'package:flutter/material.dart';
import '../../provider/leetcode_provider.dart';

class UserRecentSubmission extends StatelessWidget {
  const UserRecentSubmission({
    Key? key,
    required this.leetcode,
  }) : super(key: key);

  final LeetCodeUser leetcode;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.4001,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 35,
            width: 170,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 205, 205),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1.5,
                  color: Colors.black38,
                )),
            child: Row(
              children: const [
                Icon(
                  Icons.task_outlined,
                  size: 20,
                ),
                Text(
                  "Recent Submissions",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                height: height * 0.34,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: leetcode.recentSubmission.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(
                              '${leetcode.recentSubmission[index]['title']}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Divider(
                            height: 1.5,
                          )
                        ],
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
