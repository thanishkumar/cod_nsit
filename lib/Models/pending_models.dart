import 'package:cod_nsit/Screens/conceptScreen.dart';
import 'package:cod_nsit/Models/pending_Feeds.dart';

class ChatModel {
  final String avatarUrl;
  final String name;
  final String personDescription;
  final String imageUrl;
  final String topicText;
  final String topicDescription;
  final int like;
  final int comment;

  ChatModel(
      {this.name,
      this.avatarUrl,
      this.imageUrl,
      this.personDescription,
      this.topicDescription,
      this.topicText,
      this.like,
      this.comment});
}

List<ChatModel> dummyData = [
   new ChatModel(
    avatarUrl:
        "https://www.gstatic.com/tv/thumb/persons/156570/156570_v9_bd.jpg",
    name: "Norman Reeds",
    personDescription: "Second year CSE",
    imageUrl:
        'https://singularityhub.com/wp-content/uploads/2018/10/man-into-virtual-reality-world_shutterstock_519713428-1068x601.jpg',
    topicText: 'VIRTUAL REALITY',
    topicDescription: 'It containa all about VR and AR',
    like: 28,
    comment: 14,
  ),
  new ChatModel(
    avatarUrl:
        'https://vetstreet.brightspotcdn.com/dims4/default/65bbc05/2147483647/thumbnail/645x380/quality/90/?url=https%3A%2F%2Fvetstreet-brightspot.s3.amazonaws.com%2Fc1%2Ff9%2F13fe778446f1b8a4fcbe7146e4a4%2FAP-TVQEZK-ph645080113.jpg',
    name: "Thanish Kumar",
    personDescription: "Hi Flutter",
    imageUrl: '$imageURL',
    topicText:'$topic' ,
    topicDescription: '$topicDes',
    like: 40,
    comment: 20,
  ),

  
 
];
