import 'package:evently/core/constatnts.dart/app_assets.dart';

class Event {
  late String description;
  late String title;
  late String date;
  late String time;
  late String type;

  Event({
    required this.type,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

  Event.fromJson(Map<String,dynamic> json){
    description = json["description"];
    title = json["title"];
    date = json["date"];
    time = json["time"];
    type = json["type"];
  }

  Map<String,dynamic> toJson(Event event){
    return {
      "description" : event.description,
      "title" : event.title,
      "date" : event.date,
      "time" : event.time,
      "type" : event.type,
    };
  }
  
  static List< Map<String, String>> eventTypes = [
     {
        "type": "All",
        "icon": AppAssets.allIcon,
      },
    
       {
        "type": "Sports",
        "image": AppAssets.sportsEvent,
        "icon": AppAssets.sportsIcon,
      },
       {
        "type": "Book Club",
        "image": AppAssets.bookEvent,
        "icon": AppAssets.bookIcon,
      },
      
       {
        "type": "Birthday",
        "image": AppAssets.birthdayEvent,
        "icon": AppAssets.birthdayIcon,
      },
       {
        "type": "Meeting",
        "image": AppAssets.meetingEvent,
        "icon": AppAssets.meetingIcon,
      },
       {
        "type": "Holiday",
        "image": AppAssets.holidayEvent,
        "icon": AppAssets.holidayIcon,
      },
      {
        "type": "Exhibtion",
        "image": AppAssets.exhibtionEvent,
        "icon": AppAssets.exhibtionIcon,
      },
      {
        "type": "Work Shop",
        "image": AppAssets.workEvent,
        "icon": AppAssets.workingIcon,
      },
       {
        "type": "Eating",
        "image": AppAssets.eatingEvent,
        "icon": AppAssets.eatingIcon,
      },
       {
        "type": "Gaming",
        "image": AppAssets.gamingEvent,
        "icon": AppAssets.galleryIcon,
      },
    
  ];
}
