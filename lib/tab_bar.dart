import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:graphdemo/CodeForces/codeforces_fetch.dart';
import 'package:graphdemo/Leetcode/leetcode_fetch.dart';
import 'package:provider/provider.dart';
import 'package:simple_icons/simple_icons.dart';

import 'provider/leetcode_provider.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final leetcode = Provider.of<LeetCodeUser>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("GraphQL Demo"),
        bottom: TabBar(
            dragStartBehavior: DragStartBehavior.start,
            controller: _tabController,
            tabs: [
              Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                    Icon(SimpleIcons.leetcode),
                    SizedBox(width: 10),
                    Text(
                      "Leetcode",
                      style: TextStyle(fontSize: 20),
                    )
                  ])),
              Tab(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(SimpleIcons.codeforces),
                      SizedBox(width: 10),
                      Text(
                        "Codeforces",
                        style: TextStyle(fontSize: 20),
                      )
                    ]),
              ),
            ]),
        actions: [
          IconButton(
              onPressed: () {
                if(leetcode.handle.isNotEmpty){
                  leetcode.fetchData();
                }
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          LeetCodeFetch(
            isLoading: isLoading,
          ),
          const CodeForcesFetching()
        ],
      ),
    );
  }
}
