import 'package:nLearnPlus/constants.dart';
import 'package:nLearnPlus/screens/assignment_screen/assignment_screen.dart';
import 'package:nLearnPlus/screens/datesheet_screen/datesheet_screen.dart';
import 'package:nLearnPlus/screens/fee_screen/fee_screen.dart';
import 'package:nLearnPlus/screens/my_profile/my_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'widgets/student_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
     
          Container(
            width: 100.w,
            height: 40.h,
            padding: EdgeInsets.all(DefPadNlearn),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        StudentPicture(
                            picAddress: 'assets/images/profile.png',
                            onPress: () {
                             
                              Navigator.pushNamed(
                                  context, MyProfileScreen.routeName);
                            }),

                        SizedBox(
                          height: 10,
                        ),
                        StudentName(
                          studentName: 'Sahansa',
                        ),
                        HalfSBoxxNlearn,
                        StudentClass(studentClass: 'Batch : 21.1'),
                       
                      ],
                    ),
                  ],
                ),
                sizedBox,
         
              ],
            ),
          ),

          //remaining height wil be used
          Expanded(
            child: Container(
              width: 100.w,
              decoration: BoxDecoration(
                color: OtherColorNlearn,
                borderRadius: TopBdrRadNlearn,
              ),
              child: SingleChildScrollView(
                //pad
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                  
                           
                            imagePath:'assets/icons/bookmark-fav-front-premium.png' ,
                            title: 'Modules',
                            cardColor: Color.fromARGB(255, 13, 27, 42)),
                        HomeCard(
                            onPress: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => WebView(
                                  initialUrl: 'https://www.google.com',
                                ),
                              ));
                            },
                           
                           imagePath:'assets/icons/calender-front-premium.png' ,
                            title: 'Time Table',
                            cardColor: Color.fromARGB(255, 252,149,12)),
                            
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //888
                        HomeCard(
                            onPress: () {
                              //directs to assignments
                              Navigator.pushNamed(
                                  context, AssignmentScreen.routeName);
                            },
                           
                            imagePath:'assets/icons/pencil-front-premium.png' ,
                            title: 'Assignments',
                            cardColor: Color.fromARGB(255, 46, 27, 59)),



                        HomeCard(
                            onPress: () {},
                           
                            imagePath:'assets/icons/sheild-front-premium.png' ,
                            title: 'Result',
                            cardColor: Color.fromARGB(255, 91,179,95)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       
                        HomeCard(
                            onPress: () {},
                            
                            imagePath:'assets/icons/rocket-front-premium.png' ,
                            title: 'Logout',
                            cardColor: Color.fromARGB(255, 233,68,64)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final VoidCallback onPress;
  // final String icon;
  final String title;
  final String imagePath;
  final Color cardColor; // new parameter

  const HomeCard({
    Key? key,
    required this.onPress,
    // required this.icon,
    required this.title,
    required this.cardColor, 
    required this.imagePath,
    // required Image child, // new parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 3.h),
        width: 40.w,
        height: 20.h,
        decoration: BoxDecoration(
          color: cardColor, // use the new parameter
          borderRadius: BorderRadius.circular(DefPad2Nlearn / 4.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              //icon,
              imagePath,
              
              height: SizerUtil.deviceType == DeviceType.tablet ? 55.sp : 55.sp,
              width: SizerUtil.deviceType == DeviceType.tablet ? 55.sp : 55.sp,
              //color: OtherColorNlearn,
            ),
           
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}

