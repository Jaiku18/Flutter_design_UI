import 'package:flutter/material.dart';

List<String> details = [
  'This design is used by xxxxxyyyy \n you can contact the designer using xxxyyy@gmail.com',
  'This design is used by aaabbb \n you can contact the designer using aaabbb@gmail.com',
  'This design is used by CCCddd \n you can contact the designer using cccddd@gmail.com',
  'This design is used by eeefff \n you can contact the designer using eeefff@gmail.com'
];

class Detail extends StatelessWidget {
  String image;
  int number;
  Detail(this.image, this.number);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                margin: EdgeInsets.only(right: 15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(.2)),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Center(
                  child: Text(details.elementAt(number - 1),
                      style: TextStyle(color: Colors.black87, fontSize: 12)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
