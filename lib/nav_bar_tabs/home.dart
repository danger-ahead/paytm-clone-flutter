import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/Gridmodel.dart';
import 'package:flutter_paytm_ui/model/HomeIconButtons.dart';
import 'package:flutter_paytm_ui/model/ImageSliderModel.dart';

class Home extends StatelessWidget {
  static int _currentIndexUp = 0, _currentIndex = 0;
  final BuildContext context;

  Home(this.context);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.blue[200], Colors.white],
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.dehaze, color: Colors.grey),
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: IconButton(
                                icon: Icon(Icons.search, color: Colors.grey),
                                onPressed: () {},
                              )),
                          IconButton(
                            icon: Icon(
                              Icons.notifications_outlined,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48.0),
                  child: Image.asset(
                    "assets/paytm/logo.png",
                    scale: 6,
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    reverse: false,
                    aspectRatio: 4.4,
                    viewportFraction: 1.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      _currentIndexUp = index == 2
                          ? 0
                          : index == 3
                              ? 1
                              : index;
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
              ],
          )
        ),
        Container(
          color: Colors.blue[200],
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (int index) {
              return dots(_currentIndexUp, index);
            }),
          ),
        ),
        Container(
          color: Colors.white,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12.0, bottom: 8.0),
              child: Row(
                children: [
                    Text(
                      'Recharges & Bill Payments',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mobileRecharge,
                electricity,
                taxes,
                fees,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                loans,
                gas,
                dth,
                rechargeOthers,
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 12.0, bottom: 8.0),
              child: Row(
                children: [
                    Text(
                      'Ticket Booking & Travelling',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bus,
                train,
                flight,
                taxi,
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 12.0, bottom: 8.0),
              child: Row(
                children: [
                    Text(
                      'Entertainment',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                movie,
                events,
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 12.0, bottom: 8.0),
              child: Row(
                children: [
                    Text(
                      'Insurance, Stocks & Gold',
                      textScaleFactor: 1.3,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                car,
                bike,
                stocks,
                gold,
              ],
            ),
          ],),
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
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                ),
              ],
            ),
          ),
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
    );
  }

  List<GridModel> _getGridList() {
    List<GridModel> list = [];
    list.add(new GridModel(Icon(Icons.send_outlined), "Pay", Colors.white));
    list.add(new GridModel(
        Icon(Icons.send_to_mobile_outlined), "UPI", Colors.white));
    list.add(new GridModel(Icon(Icons.history), "Passbook", Colors.white));
    list.add(new GridModel(
        Icon(Icons.calendar_today_outlined), "Paytm\nPostpaid", Colors.white));
    list.add(new GridModel(Icon(Icons.add), "Add Money", Colors.white));
    list.add(new GridModel(Icon(Icons.history), "Link Account", Colors.white));
    list.add(new GridModel(Icon(Icons.history), "Link Account", Colors.white));
    list.add(new GridModel(Icon(Icons.history), "Link Account", Colors.white));

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
                icon: gridModel.icon,
                // Image.asset(
                //   gridModel.imagePath,
                //   width: 30,
                //   height: 30,
                //   color: gridModel.color,
                // ),
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
