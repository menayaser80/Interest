import 'package:flutter/material.dart';
import 'package:intersest/gridview.dart';

class Intrests extends StatefulWidget {
  const Intrests({Key? key}) : super(key: key);

  @override
  State<Intrests> createState() => _IntrestsState();
}

class _IntrestsState extends State<Intrests> {
  List dataselect=[];
List merna =[
  {
    "image":"assets/images/programming.jpg",
    "text":"programming",
    'tr':true,

  },
  {
    "image":"assets/images/anatomy.jpg",
    "text":"anatomy",
    'tr':true,

  },
  {
    "image":"assets/images/art.jpg",
    "text":"arts",
    'tr':true,

  },
  {
    "image":"assets/images/music.jpg",
    "text":"music",
    'tr':true,

  },
  {
    "image":"assets/images/marketing.jpg",
    "text":"marketing",
    'tr':true,
  },
  {
    "image":"assets/images/botany.jpg",
    "text":"botany",
    'tr':true,

  },
  {
    "image":"assets/images/graphic.jpg",
    "text":"Graphic Design",
    'tr':true,

  },
  {
    "image":"assets/images/photography.jpg",
    "text":"Photography",
    'tr':true,

  },

];
double rating=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              'What are your interests?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'select up to 3 topics so that we can recommend the best learning modules and videos for you',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: merna.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 2.3,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 30.0,
                  ) ,
                  itemBuilder:(context,index)
                {
                  return Grid(text: merna[index]["text"],image:merna[index]["image"],tr:merna[index]["tr"] ,
                  ontap: (){
                    if(merna[index]["tr"]==false){
                      setState(() {
                        merna[index]["tr"]=true;                      });

                    }else
                      {
                        setState(() {
                          merna[index]["tr"]=false;
                        });
                      }
                  },
                  );
                },
              ),
            ),
            Container(
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: TextButton(onPressed: (){

              },child: Text('Done',style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),),),
            ),
            TextButton(onPressed: (){}, child: Text('skip for now',style: TextStyle(
              color: Colors.blue,
              fontSize: 15.0,
            ),)),

          ],
        ),
      ),
    );
  }
}
