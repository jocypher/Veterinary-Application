import 'package:flutter/material.dart';

class RecentlyViewedItems {
  final String itemName;
  final String itemType;
  final int itemYear;

  RecentlyViewedItems(this.itemName, this.itemType, this.itemYear);
}

// ignore: must_be_immutable
class RecentlyViewed extends StatelessWidget {
  List<RecentlyViewedItems> recentlyViewedItems;
  RecentlyViewed({super.key, required this.recentlyViewedItems});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Recently Viewed", style: TextStyle(fontWeight: FontWeight.w400, color: Color.fromRGBO(55, 65, 81, 1), fontFamily: "Poppins")),
          const Divider(
            color: Color.fromRGBO(0, 0, 0, 1),
            thickness: 0,
          ),
          Container(
            margin: const EdgeInsets.only(right: 26, left: 2),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name", style: TextStyle(color: Color.fromRGBO(55, 65, 81, 0.59)),),
                Text("Type",style: TextStyle(color: Color.fromRGBO(55, 65, 81, 0.59))), 
                Text("Year",style: TextStyle(color: Color.fromRGBO(55, 65, 81, 0.59)))],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) {
                final items = recentlyViewedItems[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text(items.itemName, overflow: TextOverflow.ellipsis,)),
                      Expanded(child: Text(items.itemType, textAlign: TextAlign.center, style: const TextStyle(color: Color.fromRGBO(55, 65, 81, 0.59), fontWeight: FontWeight.w300),)),
                      Expanded(child: Text(items.itemYear.toString(),textAlign: TextAlign.right,style: const TextStyle(color: Color.fromRGBO(55, 65, 81, 0.59), fontWeight: FontWeight.w300)))
                      ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(height: 5,color: Color.fromRGBO(55, 65, 81, 0.25), ),
              ),
              itemCount: recentlyViewedItems.length)
        ],
      ),
    );
  }
}


