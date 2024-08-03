import 'package:flutter/material.dart';
import 'package:classroom/screens/home/widgets/home_item.dart';

import '../../routes/route_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
      
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  RichText(
                    text: const TextSpan(
                      text: "Hello,\n",
                      style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                      children: [
                         TextSpan(
                          text: "Good Morning",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ]
                    ),
                  ),
                  Icon(Icons.menu,color: Colors.black,)
                ],
              ),
              const SizedBox(
                height: 25,
              ),
       HomeItem(
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteConstants.studentsList);
                  },
                  color: Color(0xffAAC9BF),
                  icon: Icons.school,
                  iconColor: Color(0xff0FAB76),
                  title: "Students"),
                     HomeItem(
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteConstants.subjectsList);
                  },
                  color: Color(0xffD8EBFD),
                   iconColor: Color(0xff3595FF),
                  icon: Icons.book,
                  title: "Subjects"),
              HomeItem(
                  onTap: () {
                    Navigator.of(context).pushNamed(RouteConstants.classroomList);
                  },
                  color: Color(0xffFFE0DD),
                  icon: Icons.door_sliding,
                   iconColor: Color(0xffF9614F),
                  title: "Classroom"),
              
           
            ]),
          ),
        ),
      ),
    );
  }
}
