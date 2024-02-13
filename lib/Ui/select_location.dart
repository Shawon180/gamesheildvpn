import 'package:flutter/material.dart';
import 'package:gamesheildvpn/Const/const.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  State<SelectLocation> createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor, drawer: Container(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kWhite,
                      ),
                    ),
                  ),
                ),
                Text("Location",style: kTextStyle.copyWith(color: kWhite,fontSize: 18,fontWeight: FontWeight.bold),),
                Container(
                  decoration: BoxDecoration(
                    color:kSecondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.refresh,
                      color: kWhite,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading:Container(
                  height: 40,width: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/usaFlag.png'))
                    ),
                    ),
                title: Text("United States",style: kTextStyle.copyWith(color: kWhite),),
              subtitle: Text("11 Locations",style: kTextStyle.copyWith(color: kSubTitleColor),),


              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                leading:Container(
                  height: 40,width: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/usaFlag.png'))
                  ),
                ),
                title: Text("United States",style: kTextStyle.copyWith(color: kWhite),),
                subtitle: Text("11 Locations",style: kTextStyle.copyWith(color: kSubTitleColor),),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
