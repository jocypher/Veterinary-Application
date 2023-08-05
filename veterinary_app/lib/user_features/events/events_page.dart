import 'package:flutter/material.dart';
import '../../common/widgets/custom_app_bar.dart';
import '../../common/widgets/custom_heading.dart';
import '../../common/widgets/nav_bar.dart';
import '../../utils/global_variables.dart';
import 'events_widget/event_search_box.dart';
import 'events_widget/events_page_widget.dart';

class EventsPage extends StatefulWidget {
  static const String routeName = '/event-page';
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

List<Events> events = [
  Events("School of veterinary culture day", DateTime.now()),
  Events("Teaching begins", DateTime.now()),
  Events("Registration for resit exams", DateTime.now()),
  Events("Course registration deadline", DateTime.now()),
  Events("Interim Assessment", DateTime.now()),
  Events("Course Evaluation", DateTime.now()),
  Events("Teaching Ends", DateTime.now()),
  Events("End of semester Exams", DateTime.now()),
  Events("World Health registration", DateTime.now())

];

class _EventsPageState extends State<EventsPage> {
  final TextEditingController eventsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBarDrawer(),
      appBar: const CustomAppBar(
        color: Colors.white,
        title: "VetMed",
      ),
      bottomNavigationBar:const SizedBox(
        height: 40,
        width: double.infinity,
        
        ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(children: [
              const Center(
                  child: CustomHeading(
                text: "Events",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: loginColor),
              )),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                      child: EventsSearchBox(
                    textEditingController: eventsController,
                    searchIcon: const Icon(Icons.search),
                    searchText: "Search",
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 15,fontStyle: FontStyle.italic),
                  )),
                ],
              ),
              const SizedBox(height: 15,),
            const EventCardTitle(text: "Title"),
              Container(
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10))),
                  child: EventCardTile(events: events))
            ]),
          ),
        ),
      ),
    );
  }
}
