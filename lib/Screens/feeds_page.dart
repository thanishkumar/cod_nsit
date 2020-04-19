import 'package:cod_nsit/ReusableCards/ConceptForm_TF.dart';
import 'package:cod_nsit/Screens/conceptScreen.dart';
import 'package:flutter/material.dart';
import 'package:cod_nsit/ReusableCards/resuable_feedsCard.dart';
import 'package:cod_nsit/ReusableCards/reusableSubmitone.dart';
import 'package:cod_nsit/ReusableCards/DragableSheet.dart';


class feeds_page extends StatefulWidget {
  @override
  _feeds_pageState createState() => _feeds_pageState();
}

class _feeds_pageState extends State<feeds_page> {
  TabController _controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child: Container(child: Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height : 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://www.pymnts.com/wp-content/uploads/2019/09/virtual-reality-The-Void-Amazon-retail.jpg'),
                        fit: BoxFit.fill
                        )
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left:95),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 20,),
                                CircleAvatar(radius: 40,
                                  backgroundImage: NetworkImage("https://vetstreet.brightspotcdn.com/dims4/default/65bbc05/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fc1%2Ff9%2F13fe778446f1b8a4fcbe7146e4a4%2FAP-TVQEZK-ph645080113.jpg"),
                                  
                                ),
                                Text('Thanish Los',style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.red,
                                  
                                  fontWeight: FontWeight.bold,
                                ), ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                ),
                 ListTile(
              title: Text('Account'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ), ListTile(
              title: Text('General '),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ), ListTile(
              title: Text('About'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),  ListTile(
              title: Text('Sign-out'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),             
              ],
            ),
            ),
          ),
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.more),
                color: Colors.orangeAccent,
                onPressed: () {}),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.add,size: 28,),
                  color: Colors.orangeAccent,
                  onPressed: () {
                     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConceptPage()),
      );
                  })
            ],
            title: Text(
              'COD NSIT',
              style: TextStyle(color: Colors.orangeAccent),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("FEEDS "),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SUBMIT"),
                    ),
                  ),
                ]),
          ),
          body: Stack(children: <Widget>[
                      TabBarView(children: [
              Reusable_FeedsCard(),

                  
                  reusablesubmitPendindCard(

                  ),
                                ] 
                      )   ,
                SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 200,
            bottom: 8
          ),
          child: DraggableScrollableSheet(
            expand: true,
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 0.6,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.blue[100],
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                     child: Column(
                       children: <Widget>[
                         Text('Filter',style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: <Widget>[
                          
                          Container(
                              child: Column(
                                children: <Widget>[
                                 dragableSheetCard(function: (){},text: 'Final',color:Colors.yellowAccent ,),
                                 dragableSheetCard(function: (){},text: 'Third',color: Colors.yellowAccent,),
                                 dragableSheetCard(function: (){},text: 'Second',color: Colors.yellowAccent,),
                                 dragableSheetCard(function: (){},text: 'First',color:Colors.yellowAccent,),
                                ],
                              ),
                            ),
                          Container(
                            height: 170,
                            color: Colors.black12,
                            width: 2,
                          ),
                         Container(
                             child: Column(
                                children: <Widget>[
                                 dragableSheetCard(function: (){},text: 'CSE&IT',color:Colors.yellowAccent ,),
                                 dragableSheetCard(function: (){},text: 'ECE',color: Colors.yellowAccent,),
                                 dragableSheetCard(function: (){},text: 'EEE',color: Colors.yellowAccent,),
                                 dragableSheetCard(function: (){},text: 'CIVIL',color:Colors.yellowAccent,),
                                dragableSheetCard(function: (){},text: 'MECH',color:Colors.yellowAccent,),
                                
                                ],),
                           ),
                           Container(
                            height: 170,
                            color: Colors.black12,
                            width: 2,
                          ),
                         Container(
                             child: Column(
                                children: <Widget>[
                                 dragableSheetCard(function: (){},text: 'CORE',color:Colors.yellowAccent ,),
                                 dragableSheetCard(function: (){},text: 'GENERAL',color: Colors.yellowAccent,),
                                SizedBox(
                                    height: 40,
                                ),
                                 dragableSheetCard(function: (){},text: 'ALL',color:Colors.yellowAccent,),
                                ],),
                           )
                             ],
                           )
                       ],
                     ),
                        
                        
                     
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
                            ],
            ),
          ),

        );
  }
}
