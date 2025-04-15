import 'package:eventk/Core/utils/assests.dart';
import 'package:eventk/Features/Home/Presentation/Views/widgets/exploreCategoriesListView.dart';
import 'package:eventk/Features/Home/Presentation/Views/widgets/homeText.dart';
import 'package:eventk/Features/Home/Presentation/Views/widgets/iconNotification.dart';
import 'package:eventk/Core/widgets/searchTextField.dart';
import 'package:eventk/Features/Home/Presentation/Views/widgets/popularEventsListView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/*Yara Adel*/
class HomePage extends StatefulWidget {
  HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        automaticallyImplyLeading: false,
        flexibleSpace: Image(
          image: AssetImage(AssestsImages.backgroundEvents),
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SearchFields()),
            IconNotification(),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 30.h, left: 8.w)),
          HomeTextHeading(text: 'Explore Categories'),
          Padding(padding: EdgeInsets.only(top: 12.h)),
          Expanded(child: Explorecategorieslistview()),
          HomeTextHeading(text: 'Popular Events'),
          Populareventslistview(),
        ],
      ),
    );
  }
}
