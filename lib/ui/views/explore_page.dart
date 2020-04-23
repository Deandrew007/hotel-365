import 'package:flutter/material.dart';
import 'package:hotel365/core/enums/viewstate.dart';
import 'package:hotel365/core/models/attractions_listing.dart';
import 'package:hotel365/ui/views/baseview.dart';
import 'package:provider/provider.dart';
import 'package:hotel365/core/viewmodels/explore_model.dart';
import 'package:hotel365/service_locator.dart';
import 'package:hotel365/ui/shared/styles.dart';
import 'package:hotel365/ui/widgets/content_tile.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ExplorePageModel>(
      onModelReady: (model){
        model.getAttractions();
      },
        builder: (context, model, child) => Scaffold(
          body: model.state == ViewState.Idle?
          Container(
            child: SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: AppBar().preferredSize.height * 1.5),
                      Text('Explore the world on your budget',
                          style: headerStyle),
                      SizedBox(height: 32),
                      buildIconRow(),
                      ContentTitle('Hotels'),
                      buildHotelsList(model.attractions),
                      ContentTitle('Travel BLogs'),
                      //builBlogList(),
                    ],
                  )),
            ),
            //bottomNavigationBar: buildBottomAppBar(),
          )
          : Center(child: CircularProgressIndicator()),
        ),
      );
  }

  Widget buildIconRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.green[100],
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.hotel),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Hotels', style: titleStyle),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.green[100],
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.favorite),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Favorites', style: titleStyle),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Ink(
                decoration: ShapeDecoration(
                  color: Colors.green[100],
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  icon: Icon(Icons.restaurant),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Restuarants', style: titleStyle),
              ),
            ],
          )
        ]);
  }

  Widget buildHotelsList(List<Attractions> attractions) {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: attractions.length,
        itemBuilder: (context, index) => AttractionListItem(
            attraction: attractions[index],
            onTap: () {},
          ),
        ),

    );
  }

    buildBottomAppBar() {}

}
