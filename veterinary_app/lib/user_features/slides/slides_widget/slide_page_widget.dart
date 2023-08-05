import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';


class Slides{
  final String slideInfo;
  

  Slides( this.slideInfo);
}
class SlideCardTile extends StatelessWidget {
  final List<Slides> slides;
  const SlideCardTile({super.key, required this.slides});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: slides.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final slide = slides[index];
        return Card(
          child: ListTile(
            title: Text(slide.slideInfo),
          ),
        );
      },
    );
  }
}

class SlideTitleCardTile extends StatefulWidget {
  final String text;
  const SlideTitleCardTile({super.key, required this.text});

  @override
  State<SlideTitleCardTile> createState() => _SlideTitleCardTileState();
}

class _SlideTitleCardTileState extends State<SlideTitleCardTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListTile(
          title: Text(widget.text,style: const TextStyle(color: slideTitleColor),),
        ),
      ),
    );
  }
}
