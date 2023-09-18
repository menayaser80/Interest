import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key,this.text,this.image,this.ontap,this.tr = false,}) : super(key: key);

  final text,image;
  final bool tr;
final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Container(
        decoration: BoxDecoration(
image: DecorationImage(
  image: AssetImage(image),
  fit: BoxFit.cover,
),
          borderRadius: BorderRadius.circular(100.0),
        ),
        child:Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color:tr ? Colors.black.withOpacity(0.3):Colors.green.withOpacity(0.6),
border:Border.all(width: 3,color: tr ? Colors.white:Colors.grey) ,
          ),
          child: Center(child: Text('$text',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),)),

        ),
      ),
    );
  }
}
