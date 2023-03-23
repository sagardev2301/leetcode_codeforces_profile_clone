import 'package:flutter/material.dart';
import 'package:graphdemo/Leetcode/leetcode_data.dart';
import 'package:graphdemo/provider/leetcode_provider.dart';
import 'package:provider/provider.dart' show Consumer;


class LeetCodeFetch extends StatefulWidget {
  LeetCodeFetch({super.key,required this.isLoading});
  bool isLoading;
  @override
  State<LeetCodeFetch> createState() => _LeetCodeFetchState();
}

class _LeetCodeFetchState extends State<LeetCodeFetch> {

  final TextEditingController _userHandle = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer<LeetCodeUser>(builder: (context, leetcode, _) {
      return leetcode.matchedUser.username.isEmpty
              ? Center(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Column(children: [
                      const Text(
                        "Enter your leetcode handle",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: TextFormField(
                            controller: _userHandle,
                            keyboardType: TextInputType.name,
                            decoration: const InputDecoration(
                                icon: Icon(Icons.person_rounded)),
                            onFieldSubmitted: (_) {
                              setState(() {
                                widget.isLoading = true;
                                leetcode.handle = _userHandle.text;
                              });
                              leetcode.fetchData().then((_){
                                setState(() {
                                  widget.isLoading = false;
                                });
                              });
                            } //fetchData(userHandle: _userHandle.text),
                            ),
                      ),
                    ]),
                  ),
              ) 
              : widget.isLoading
          ? const Center(child: CircularProgressIndicator())
          :  const SingleChildScrollView(child: LeetcodeUserData());
    });
  }
}
