import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List events = [];
  bool isLoading = false;
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Search',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Color(0xff120D26)),),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),

            child: TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Type Event Name",
                hintStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.search_outlined,color: Color(0xff7974E7),),
              ),
              onFieldSubmitted: (value) {
                _searchEvents(value);
              },

            ),
          ),

          if (isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
          if(!isLoading)
            Expanded(
              child: ListView.builder(
                  itemCount: events.length,
                  itemBuilder: (context,index){
                    return getCard(events[index]);
                  }),
            ),
        ],
      ),
    );
  }

  Widget getCard(index){
    var location = index["venue_name"] + " • " + index["venue_city"] + ", " +  index["venue_country"];
    var datetime= index["date_time"];
    var title= index["title"];
    var bannerImage= index["banner_image"];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
      child: ListTile(
        minVerticalPadding: 0,
        leading: SizedBox(
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image(image: NetworkImage(bannerImage.toString(),),
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
        ),
        title: Text(
          "Wed, Apr 28 •5:30 PM",
        ),
        titleTextStyle: const TextStyle(
          color: Color(0xff5669FF),
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8,),
            Text(title,style: TextStyle(
              color: Color(0xff120D26),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),),
            SizedBox(height: 8,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Icon(Icons.location_on,size: 18,),
                ),
                Expanded(
                  child: Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff747688),
                    ),
                  ),
                ),
              ],
            )

          ],
        ),

        onTap: () {
          Navigator.pushNamed(context, '/event_details',);
        },
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    this._searchEvents();
  }

  _searchEvents([String? query]) async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      isLoading = false;
    });
    var url = "https://sde-007.api.assignment.theinternetfolks.works/v1/event?search=$query";
    var response= await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      var items = json.decode(response.body)['content']['data'];
      setState(() {
        events = items;
      });
    }else{
      setState(() {
        events = [];
      });
    }
  }
}
