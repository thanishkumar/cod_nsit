import 'package:flutter/material.dart';

class conceptForm_tf extends StatelessWidget {

  conceptForm_tf({@required this.tftext,this.tfTexts});

 String tftext;
 Function tfTexts;
 final tfcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height:10),
                                              
                                              SizedBox(height:20),
                                              Text('$tftext'),
                                              SizedBox(height:10,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20,right:20),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(15),),
                                                    color: Colors.grey[200],
                                                  ),
                                                  
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: TextField(
                                                      decoration: InputDecoration.collapsed(hintText: null),
                                                      onSubmitted: tfTexts ,
                                                      
                                                      controller: tfcontroller,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              
                                              
                                             
       
      ],
    );
  }
}