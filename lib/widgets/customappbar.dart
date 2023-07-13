import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image 77.png',
          height: 240,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        AppBar(
          leading: Theme(
            data: Theme.of(context).copyWith(
              iconTheme: IconThemeData(color: Colors.white), // Set the desired color
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Event Details',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 9),
              child: GestureDetector(
                child: Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3.0,color: Colors.transparent),
                    color: Colors.transparent.withOpacity(0.2),
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 22,
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(240);
}
