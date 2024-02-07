import 'package:flutter/material.dart';
import 'package:instagram_ui/model/highlights.dart';
import 'package:instagram_ui/util/accountgrid.dart';
import 'package:instagram_ui/util/useraccountbuttons.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.lock_outlined),
                  Text('3wess__'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        Column(
                          children: [Text('0'), Text('posts')],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [Text('135'), Text('followers')],
                          ),
                        ),
                        Column(
                          children: [Text('97'), Text('following')],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AccountButtons(text: 'Edit profile'),
                  const AccountButtons(text: 'Share profile'),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(6)),
                    child: const Icon(
                      Icons.person_add_outlined,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlights.length,
                itemBuilder: (context, index) {
                  return highlights[index];
                },
              ),
            ),
            Container(
              child: TabBar(
                tabs: [
                  const Tab(
                    icon: Icon(Icons.window_outlined),
                  ),
                  const Tab(
                    icon: Icon(Icons.person_pin_outlined),
                  )
                ],
              ),
            ),
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              child: TabBarView(
                children: [
                  AccountGrid(),
                  AccountGrid(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
