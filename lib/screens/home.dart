import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hello, Mark",
                  style: TextStyle(fontSize: 36),
                ),
                Flexible(
                  child: Container(
                    height: height / 7,
                    width: double.maxFinite,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "BALANCE",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text("INR 10000",
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: height / 7,
                        width: double.maxFinite,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "TOTAL EXPENSE",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("INR 1000",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: height / 7,
                        width: double.maxFinite,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total INCOME",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text("INR 10000",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Recent Transaction",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: width / 7,
                    ),
                    TextButton(
                        child: const Text(
                          "View All ",
                          style: TextStyle(fontSize: 16),
                        ),
                        onPressed: () {}),
                  ],
                ),
                Flexible(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          title: Text('Railway'),
                          subtitle: Text('Transportation'),
                          trailing: Text("INR 10"),
                          leading: Icon(Icons.train),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}
