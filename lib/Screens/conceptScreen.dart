import 'package:cod_nsit/Models/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:cod_nsit/ReusableCards/DragableSheet.dart';
import 'package:cod_nsit/ReusableCards/ConceptForm_TF.dart';
import 'package:cod_nsit/Screens/feeds_page.dart';
import 'package:cod_nsit/Models/pending_Feeds.dart';

class ConceptPage extends StatefulWidget {


  

  @override
  _ConceptPageState createState() => _ConceptPageState();
}

class _ConceptPageState extends State<ConceptPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
                      body: SingleChildScrollView(
                                              child: Container(
        decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(15.0),
                                    topRight: const Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0)),
                                    gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [Colors.orangeAccent, Colors.blue]),),
                                    child: Center(
                                      child: Column(
                                        children: <Widget>[
                                          Text('Enter Concept',style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),),
                                          Divider(thickness: 3,),
                                          
                                          conceptForm_tf(tftext: 'Enter Topic',tfTexts: (topicText){
                                            print(topicText);
                                            String tTopic=topicText;
                                            topic.add(tTopic);
                                            
                                          },),
                                          conceptForm_tf(tftext: 'Enter Topic Description',tfTexts: (topicDesText){
                                            
                                          }),
                                          conceptForm_tf(tftext: 'Enter Image Url',tfTexts: (imageURIText){}),
                                          conceptForm_tf(tftext: 'Paste Concept',tfTexts: (conceptText){}),
                                          conceptForm_tf(tftext: 'Enter Reference',tfTexts: (referenceText){}),


                                          SizedBox(height:50),
                                          dragableSheetCard(function: (){},
                                          text: 'View',color: Colors.purple,),
                                          dragableSheetCard(function: (){
                                            

                                             Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => feeds_page()),
      );
                                          },
                                          color: Colors.orange,
                                          text: 'Submit',)
                                          
                                        ],
                                      ),
                                    ),
                                    
        
      ),
                      ),
          ),
    );
  }
}