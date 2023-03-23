import 'package:flutter/material.dart';
import '../../provider/leetcode_provider.dart';
import 'profile_handler.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    Key? key,
    required this.leetcode,
  }) : super(key: key);

  final LeetCodeUser leetcode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    leetcode.matchedUser.profile!.userAvatar.toString()),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    leetcode.matchedUser.profile!.realName.toString(),
                    style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        leetcode.matchedUser.username.toString(),
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.brown,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.network(
                            fit: BoxFit.contain,
                            'https://leetcode.com/static/images/badges/2022/lg/2022-annual-100.png'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ProfileHandler(
                      text: 'Rank ', place: leetcode.matchedUser.profile!.ranking),
                ],
              ),
            )
          ],
        ),
        if(leetcode.matchedUser.profile!.countryName!.isNotEmpty)
          Row(
            children: 
            [
              const Icon(Icons.location_on), 
              const SizedBox(
                width:30,
              ),
              Text(leetcode.matchedUser.profile!.countryName.toString())
          ],
          )
      ],
    );
  }
}
