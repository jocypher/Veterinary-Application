import 'package:flutter/material.dart';
import '../../../utils/global_variables.dart';

class Events {
  final String eventInfo;
  final DateTime eventDate;

  Events(this.eventInfo, this.eventDate);
}

class EventCardTile extends StatelessWidget {
  final List<Events> events;
  const EventCardTile({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: events.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final event = events[index];
        return Card(
          child: ListTile(
            title: Text(event.eventInfo),
            trailing: Text(event.eventDate.day.toString()),
          ),
        );
      },
    );
  }
}

class EventCardTitle extends StatefulWidget {
  final String text;
  const EventCardTitle({super.key, required this.text});

  @override
  State<EventCardTitle> createState() => _EventCardTitleState();
}

class _EventCardTitleState extends State<EventCardTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListTile(
          title: Text(
            widget.text,
            style: const TextStyle(color: slideTitleColor),
          ),
        ),
      ),
    );
  }
}
