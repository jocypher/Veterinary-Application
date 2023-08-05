import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';



class FeedBackPage extends StatefulWidget {
  static const String routeName = '/feedback';
  const FeedBackPage({super.key});

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.only(bottom: 50, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                     Text("Thanks for the feedback!", style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300),),
                     Text("We appreciate it",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 15, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300))
                  ],
                ),
      ),
      backgroundColor: primaryColor,
      drawer: const NavBarDrawer(),
      appBar: CustomAppBar(title: "VetMed", color: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Center(
              child: CustomHeading(text: "Feedback", 
              style: TextStyle(fontSize: 30,color: loginColor, fontFamily: "Poppins",fontWeight: FontWeight.w600))),
             const SizedBox(height: 30,),
              const Text("Drop us your feedbacks!", style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w400)),
              const SizedBox(height: 15,),
              Container(
                height: 250,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  boxShadow: const[
                     BoxShadow(color: Colors.black12,offset: Offset(-1, -1), blurRadius: 1)],
                  color: feedbackColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: const TextField(
                  decoration : InputDecoration(
                    border: InputBorder.none,
                    hintText: "feel free to say anything about the app"), style: TextStyle(color: feedbackTextColor,fontWeight: FontWeight.w300, fontStyle: FontStyle.italic),),
              ),
              const SizedBox(height: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Rate your app!"),
                    Row(

                children: [
                Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20 ),
              decoration: BoxDecoration(color: resetColor, borderRadius: BorderRadius.circular(15)),
              child: const Text('Reset', style: TextStyle(color: Colors.white),),
                ),
                const SizedBox(width:15),
                Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20 ),
              decoration: BoxDecoration(color: loginColor, borderRadius: BorderRadius.circular(15)),
              child: const Text('Send', style: TextStyle(color: Colors.white),),
                )
              ],)
                  ],
                ),
              Row(children: [
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
              itemCount: 5,
              itemSize: 25,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
                  ),
            onRatingUpdate: (rating) {
                 print(rating);
              },
),
              ],)
              ],),
              

          ]
          ),
         
      ),
    );
  }
}
