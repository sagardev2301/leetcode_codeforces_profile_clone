import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:graphdemo/models/userProblemSolved/userProblemSolved.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../models/matchedUser/matchedUser.dart';

class LeetCodeUser with ChangeNotifier {
  //late String name = '';
  // late String imageUrl = '';
  // late double rating = 0;
  // late int rank = 0;
  // late Map<String, dynamic> solvedStats;
  late String handle = '';
  late List<dynamic> recentSubmission = [];
  int eT = 618;
  int mT = 1344;
  int hT = 562;
  MatchedUser matchedUser = MatchedUser(username: "");
  UserProblemSolved userProblemSolved = UserProblemSolved(problemsSolvedBeatsStats: []);

  // Completed
  Future<void> fetchUserInfo() async {
    // if (handle.isEmpty) {
    //   print("handle empty");
    //   return;
    // }
    HttpLink link = HttpLink("https://leetcode.com/graphql/");

    GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
    QueryResult queryResult =
        await qlClient.query(QueryOptions(document: gql(r'''
                  query userPublicProfile($username: String!) {
                    matchedUser(username: $username) {
                      contestBadge {
                        name
                        expired
                        hoverText
                        icon
                      }
                      username
                      githubUrl
                      twitterUrl
                      linkedinUrl
                      profile {
                        ranking
                        userAvatar
                        realName
                        aboutMe
                        school
                        websites
                        countryName
                        company
                        jobTitle
                        skillTags
                        postViewCount
                        postViewCountDiff
                        reputation
                        reputationDiff
                        solutionCount
                        solutionCountDiff
                        categoryDiscussCount
                        categoryDiscussCountDiff
                      }
                    }
                  }
                  '''), variables: {"username": handle}));
    if (queryResult.data != null) {
      matchedUser = MatchedUser.fromJson(queryResult.data!['matchedUser']);
      notifyListeners();
    }
    print(matchedUser.profile!.realName);
  }

  Future<void> fetchRecentSubmission() async {
    if (handle.isEmpty) {
      return;
    }
    HttpLink link = HttpLink("https://leetcode.com/graphql/");

    GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
    QueryResult queryResult = await qlClient.query(QueryOptions(
        document: gql(
            '''query recentAcSubmissions(\$username: String!, \$limit: Int!) {
  recentAcSubmissionList(username: \$username, limit: \$limit) {
    id
    title
    titleSlug
    timestamp
  }
}
'''),
        variables: {"username": handle, "limit": 15}));

    if (queryResult.data != null) {
      recentSubmission = queryResult.data!['recentAcSubmissionList'];
      notifyListeners();
    }
    // if (queryResult.context.entry<HttpLinkResponseContext>()?.statusCode ==
    //     200) {
    //   recentSubmission = queryResult.data!['recentAcSubmissionList'];
    //   notifyListeners();
    // }
  }

  Future<void> fetchUserRating() async {
    if (handle.isEmpty) {
      return;
    }
    HttpLink link = HttpLink("https://leetcode.com/graphql/");

    GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
    QueryResult queryResult = await qlClient.query(QueryOptions(
        document: gql('''query userContestRankingInfo(\$username: String!) {
  userContestRanking(username: \$username) {
    attendedContestsCount
    rating
    globalRanking
    totalParticipants
    topPercentage
    badge {
      name
    }
  }
  userContestRankingHistory(username: \$username) {
    attended
    trendDirection
    problemsSolved
    totalProblems
    finishTimeInSeconds
    rating
    ranking
    contest {
      title
      startTime
    }
  }
}
'''), variables: {"username": handle}));

    // if (queryResult.context.entry<HttpLinkResponseContext>()?.statusCode ==
    //     200) {
    //   rating = queryResult.data!['userContestRanking']['rating'];
    //   notifyListeners();
    // }
  }

  Future<void> fetchNumProblemSolved() async {
    if (handle.isEmpty) {
      return;
    }
    HttpLink link = HttpLink("https://leetcode.com/graphql/");

    GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
    QueryResult queryResult =
        await qlClient.query(QueryOptions(document: gql(r'''
    query userProblemsSolved($username: String!) {
      allQuestionsCount {
        difficulty
        count
      }
      matchedUser(username: $username) {
        problemsSolvedBeatsStats {
          difficulty
          percentage
        }
        submitStatsGlobal {
          acSubmissionNum {
            difficulty
            count
          }
        }
      }
    }'''), variables: {"username": handle}));

    if (queryResult.data != null) {
      eT = queryResult.data!['allQuestionsCount'][1]['count'];
      mT = queryResult.data!['allQuestionsCount'][2]['count'];
      hT = queryResult.data!['allQuestionsCount'][3]['count'];
      userProblemSolved =
          UserProblemSolved.fromJson(queryResult.data!['matchedUser']);
      notifyListeners();
    }
  }

  Future<void> fetchData() async {
    fetchUserInfo();
    fetchNumProblemSolved();
    fetchRecentSubmission();
    fetchUserRating();
    notifyListeners();
  }
}
