import 'package:flutter/material.dart';
import 'package:gamesheildvpn/Const/const.dart';
import 'package:gamesheildvpn/Ui/select_location.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
    iconTheme: const IconThemeData(
      color: kWhite
    ),
        centerTitle: true,
        title: Text(
          'Gamesheild',
          style: kTextStyle.copyWith(
              color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle drawer item click
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle drawer item click
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Connecting Time',
                  style: kTextStyle.copyWith(color: kWhite),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '00:30:26',
                  style: kTextStyle.copyWith(color: kWhite, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40,),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const SelectLocation()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                  color: const Color(0xff494968),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Choose Country ',
                  style: kTextStyle.copyWith(color: kWhite),
                ),
              ),
            ),
          ),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/MoveDown.png',
                        width: 26,
                        height: 26,
                      ),
                      const SizedBox(width: 5,),
                      Text(
                        'Download',
                        style: kTextStyle.copyWith(color: kWhite, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '589 KB/s',
                    style: kTextStyle.copyWith(color: kWhite, fontSize: 20),
                  ),
                ],
              ),
              Container(height: 50, width: 2, color: kWhite,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/MoveUp.png',
                        width: 26,
                        height: 26,
                      ),
                      const SizedBox(width: 5,),
                      Text(
                        'Upload',
                        style: kTextStyle.copyWith(color: kWhite, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '589 KB/s',
                    style: kTextStyle.copyWith(color: kWhite, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40,),
          Image.asset(
            'images/powerSwitch.png',
            width: 265,
            height: 275,
          ),
        ],
      ),
    );
  }
}
