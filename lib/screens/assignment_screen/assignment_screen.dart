import 'package:nLearnPlus/constants.dart';
import 'package:nLearnPlus/screens/assignment_screen/data/assignment_data.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'widgets/assignment_widgets.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({Key? key}) : super(key: key);
  static String routeName = 'AssignmentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignments'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: OtherColorNlearn,
                borderRadius: TopBdrRadNlearn,
              ),
              child: ListView.builder(
                  padding: EdgeInsets.all(DefPadNlearn),
                  itemCount: assignment.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: DefPadNlearn),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(DefPadNlearn),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(DefPadNlearn),
                              color: OtherColorNlearn,
                              boxShadow: [
                                BoxShadow(
                                  color: TextLightColorNlearn,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 5.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                    color: ContainerColorNlearn.withOpacity(0.4),
                                    borderRadius:
                                        BorderRadius.circular(DefPadNlearn),
                                  ),
                                 
                                ),
                                HalfSBoxxNlearn,
                                Text(
                                  assignment[index].topicName,
                                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                    color: TextBlackColorNlearn,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                HalfSBoxxNlearn,
                                // AssignmentDetailRow(
                                //   title: 'Assign Date',
                                //   statusValue: assignment[index].assignDate,
                                // ),
                                HalfSBoxxNlearn,
                                AssignmentDetailRow(
                                  title: 'Due Date',
                                  statusValue: assignment[index].lastDate,
                                ),
                                HalfSBoxxNlearn,
                                AssignmentDetailRow(
                                  title: 'Status',
                                  statusValue: assignment[index].status,
                                ),
                                HalfSBoxxNlearn,
                                //use condition here to display button
                                if (assignment[index].status == 'Pending')
                                  //then show button
                                  AssignmentButton(
                                    onPress: () {
                                      //submit here
                                    },
                                    title: 'To be Submitted',
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
