import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String image;
  final String name;
  final String desc;

  Contact(this.image, this.name, this.desc);

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(8), 
        child: Container(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            backgroundImage: AssetImage(image),
          ),
         ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text(desc, style: TextStyle(fontSize: 17),)
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 10), child: IconButton(icon: Icon(Icons.call_sharp), onPressed: (){}))
      ],
    );
  }
}
