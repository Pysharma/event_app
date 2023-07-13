import 'package:flutter/material.dart';

import '../widgets/customappbar.dart';


class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text('International Band Music Concert',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 35,
                      color: Color(0xff120D26)
                  ),
                ),
              ),
              SizedBox(height: 8,),
              ListTile(
                minLeadingWidth: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('assets/TIF Icon 1.png',width: 48,height: 48,),
                ),

                title: Text(
                  "The Internet Folks",
                ),
                titleTextStyle: const TextStyle(
                  color: Color(0xff0D0C26),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                minVerticalPadding: 0,
                subtitle: Text(
                  "Organiser",
                ),
                subtitleTextStyle: const TextStyle(
                  color: Color(0xff706E8F),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),

                onTap: () { },

              ),
              ListTile(
                minLeadingWidth: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('assets/Date.png',width: 48,height: 48,),
                ),

                title: Text(
                  "14 December, 2021",
                ),
                titleTextStyle: const TextStyle(
                  color: Color(0xff0D0C26),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                minVerticalPadding: 0,
                subtitle: Text(
                  "Tuesday, 4:00PM - 9:00PM",
                ),
                subtitleTextStyle: const TextStyle(
                  color: Color(0xff706E8F),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),

                onTap: () { },

              ),
              ListTile(
                minLeadingWidth: 0,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('assets/Location.png',width: 48,height: 48,),
                ),

                title: Text(
                  "Gala Convention Center",
                ),
                titleTextStyle: const TextStyle(
                  color: Color(0xff0D0C26),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
                minVerticalPadding: 0,
                subtitle: Text(
                  "36 Guild Street London, UK ",
                ),
                subtitleTextStyle: const TextStyle(
                  color: Color(0xff706E8F),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),

                onTap: () { },

              ),

              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                child: Text('About Event',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xff120D26)
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                child: Text('Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More...',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff120D26)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          child: Container(
            width: 271,
            height: 58,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),

              ),
              backgroundColor: Color(0xff5669FF).withOpacity(0.75),
              onPressed: (){ },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
            children: [
            Align(
            alignment: Alignment.centerRight,
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff5669FF),
                  ),
                ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'BOOK NOW',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
            ),
            ],
          ),
              ),
            ),

          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
