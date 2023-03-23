import 'package:flutter/material.dart';

class CodeForcesFetching extends StatefulWidget {
  const CodeForcesFetching({super.key});

  @override
  State<CodeForcesFetching> createState() => _CodeForcesFetchingState();
}

class _CodeForcesFetchingState extends State<CodeForcesFetching> {
  bool _isLoading = false;
  
  final TextEditingController _controller = TextEditingController();

  late Map<String, dynamic> userData = {};
  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? const CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Column(children: [
                const Text(
                  "Enter your codeforces handle",
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

                    controller: _controller,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person_rounded),
                    ),
                    onFieldSubmitted: (_){

                    },
                  ),
                ),
              ]),
            ),
    );
  }
}
