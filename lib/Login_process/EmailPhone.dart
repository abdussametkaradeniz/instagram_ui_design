import 'package:flutter/material.dart';

class EmailPhone extends StatefulWidget {
  const EmailPhone({Key? key}) : super(key: key);

  @override
  State<EmailPhone> createState() => _EmailPhoneState();
}

class _EmailPhoneState extends State<EmailPhone> {
  @override
  Widget build(BuildContext context) {
    int CurrentTab = 0;
    List<String> items = ["EMAIL", "PHONE"];
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: double.infinity,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          CurrentTab = index;
                        });
                      },
                      child: Container(
                        width: 80,
                        height: 45,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: CurrentTab == index
                              ? Colors.white
                              : Colors.white54,
                        ),
                        child: Center(
                          child: Text(
                            items[index],
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                        visible: CurrentTab == index,
                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                        ))
                  ],
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: 500,
            child: Column(
              children: [
                CurrentTab == 0 ? Text("email") : Text("phone")
                //buraya content gelecek
              ],
            ),
          ),
        ],
      ),
    );
  }
}
