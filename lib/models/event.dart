import 'package:evently/core/constatnts.dart/app_assets.dart';

class Event {
  String description;
  String title;
  String date;
  String time;
  String type;

  Event({
    required this.type,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });

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
        "icon": AppAssets.heartIcon,
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
