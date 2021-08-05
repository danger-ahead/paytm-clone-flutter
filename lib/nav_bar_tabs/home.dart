import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/Gridmodel.dart';
import 'package:flutter_paytm_ui/model/ImageSliderModel.dart';

class Home extends StatelessWidget {
  static int _currentIndexUp = 0, _currentIndex = 0;
  final BuildContext context;

  Home(this.context);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          Container(
              width: double.maxFinite,
              color: Colors.blue[800],
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    reverse: false,
                    aspectRatio: 5,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      _currentIndexUp = index;
                      (context as Element)
                          .markNeedsBuild(); //Can't use setState()
                    },
                  ),
                  items: List<GridView>.generate((4), (int index) {
                    return GridView.count(
                      crossAxisCount: 4,
                      children: List<GridItemTop>.generate((4), (int index) {
                        return GridItemTop(
                            _getGridList()[index + (_currentIndexUp * 4)]);
                      }),
                    );
                  }),
                ),
              )

//            GridView.builder(
//              gridDelegate:
//                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
//              scrollDirection: Axis.horizontal,
//              itemCount: _getGridList().length,
//              itemBuilder: (context, index) {
//                return GridList(_getGridList()[index]);
//              },
//            ),
              ),
          Container(
            color: Colors.blue[800],
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (int index) {
                return dots(_currentIndexUp, index);
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.highlight),
                  Text('Get Rs.1000 Cashback on Auto/Taxi rides !'),
                  Image.asset(
                    "assets/right-arrow.png",
                    height: 13,
                    width: 13,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            children: List<GridItem>.generate(12, (int index) {
              return GridItem(_getGridItemList()[index]);
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 1, bottom: 5),
            child: Container(
              color: Colors.white,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  autoPlayInterval: Duration(seconds: 2),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  pauseAutoPlayOnTouch: true,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    _currentIndex = index;
                    (context as Element).markNeedsBuild();
                  },
                ),
                items: CarouselSliderList(_getImageSliderList()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<GridModel> _getGridItemList() {
    List<GridModel> list = [];
    list.add(new GridModel("assets/smartphone.png", "Mobile\nprepaid", null));
    list.add(new GridModel("assets/airplane.png", "Flights", null));
    list.add(new GridModel("assets/access.png", "Movie Tickets", null));
    list.add(new GridModel("assets/hand.png", "Events", null));
    list.add(new GridModel(
        "assets/phone-charge.png", "Mobile        Postpaid", null));
    list.add(new GridModel("assets/console.png", "Games", null));
    list.add(new GridModel("assets/gold.png", "Gold", null));
    list.add(new GridModel("assets/iocl_tip.png", "Electricity", null));
    list.add(new GridModel("assets/train_help.png", "Train Tickets", null));
    list.add(
      new GridModel("assets/shopping-bag.png", "Shopping", null),
    );
    list.add(new GridModel("assets/satellite-dish.png", "DTH", null));
    list.add(
        new GridModel("assets/placeholder_inapp_merchants.png", "More", null));
    return list;
  }

  List<GridModel> _getGridList() {
    List<GridModel> list = [];
    list.add(new GridModel("assets/send_money.png", "Pay", Colors.white));
    list.add(new GridModel("assets/money_transfer.png", "UPI", Colors.white));
    list.add(new GridModel(
        "assets/ic_passbook_header.png", "Passbook", Colors.white));
    list.add(new GridModel(
        "assets/calendar_blue.png", "Paytm\nPostpaid", Colors.white));
    list.add(new GridModel(
        "assets/add_money_passbook.png", "Add Money", Colors.white));
    list.add(new GridModel("assets/book.png", "Link Account", Colors.white));
    list.add(new GridModel(
        "assets/ic_passbook_header.png", "Link Account", Colors.white));
    list.add(new GridModel("assets/book.png", "Link Account", Colors.white));

    return list;
  }

  List<ImageSliderModel> _getImageSliderList() {
    List<ImageSliderModel> list = [];

    list.add(new ImageSliderModel("assets/real.jpg"));
    list.add(new ImageSliderModel("assets/real.jpg"));
    list.add(new ImageSliderModel("assets/real.jpg"));
    list.add(new ImageSliderModel("assets/real.jpg"));

    return list;
  }

  CarouselSliderList(List<ImageSliderModel> getImageSliderList) {
    return getImageSliderList.map((i) {
      return Builder(builder: (BuildContext context) {
        return imageSliderItem(i);
      });
    }).toList();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  Widget dots(int current, index) {
    if (current != index) {
      return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dotColor(index),
          ));
    } else {
      return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              color: dotColor(index)));
    }
  }

  Widget imageSliderItem(ImageSliderModel i) {
    return Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            i.path,
            fit: BoxFit.cover,
          ),
        ));
  }

  Color dotColor(int index) {
    return _currentIndexUp == index ? Colors.white : Colors.grey;
  }
}

class GridItem extends StatelessWidget {
  final GridModel gridModel;

  GridItem(this.gridModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1 / 2),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  print('shit');
                },
                icon: Image.asset(
                  gridModel.imagePath,
                  width: 30,
                  height: 30,
                  color: gridModel.color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  gridModel.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItemTop extends StatelessWidget {
  final GridModel gridModel;

  GridItemTop(this.gridModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1 / 2),
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  gridModel.imagePath,
                  width: 30,
                  height: 30,
                  color: gridModel.color,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  gridModel.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}