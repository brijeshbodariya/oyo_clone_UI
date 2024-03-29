import 'package:flutter/material.dart';
import 'package:oyo_clone_ui/constant/constant.dart';
import 'package:oyo_clone_ui/model/aeospecials.dart';
import 'package:oyo_clone_ui/model/aeowordlist.dart';
import 'package:oyo_clone_ui/model/arealocationlist.dart';
import 'package:oyo_clone_ui/model/exploreaeohotelslist.dart';
import 'package:oyo_clone_ui/model/latestaeo.dart';
import 'package:oyo_clone_ui/model/limitedperiodofferlist.dart';
import 'package:oyo_clone_ui/model/readyforsummerlist.dart';
import 'package:oyo_clone_ui/model/weekendgetawayslist.dart';
import 'package:oyo_clone_ui/model/yourwalletslist.dart';
import 'package:oyo_clone_ui/widgets/customshape.dart';

class AeoUI extends StatefulWidget {
  const AeoUI({Key? key}) : super(key: key);

  @override
  _AeoUIState createState() => _AeoUIState();
}

class _AeoUIState extends State<AeoUI> {
  double? _width;
  double? _height;

  List<AreaLocationList>? areaLocationList;
  List<ReadyForSummerList>? readyForSummer;
  List<LimitedPeriodOfferList>? limitedPeriodOffer;
  List<ExploreOyoHotelsList>? exploreOyoHotels;
  List<WeekendGetawaysList>? weekendGetaways;
  List<OyoWordList>? oyoWord;
  List<OyoSpecialsList>? oyoSpecials;
  List<LatestOyoList>? latestOyo;
  List<YourWalletList>? yourWallets;

  @override
  void initState() {
    super.initState();
    areaLocationList = Constants.getLocationList();
    readyForSummer = Constants.getSummerList();
    limitedPeriodOffer = Constants.getLimitedPeriodOfferList();
    exploreOyoHotels = Constants.getExploreOyoHotelsList();
    weekendGetaways = Constants.getWeekendsList();
    oyoSpecials = Constants.getOyoSpecials();
    latestOyo = Constants.getLatestOyo();
    yourWallets = Constants.getYourWallet();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: _height! / 5,
              floating: false,
              leading: const Icon(Icons.menu),
              actions: <Widget>[
                Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: const Icon(Icons.notifications_active))
              ],
              backgroundColor: const Color.fromARGB(255, 196, 26, 61),
              //#f02730
              flexibleSpace: const FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                titlePadding: EdgeInsets.only(top: 25.0),
                title: Center(
                  child: Text(
                    "AEO",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
              bottom: PreferredSize(
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: _width,
                    height: _height! / 14,
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(2),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                          hintText: "Search for Hotel, City or Location",
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 13.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  preferredSize: Size(_width!, _height! / 20)),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: _height! / 6,
                child: ListView.builder(
                    itemCount: areaLocationList!.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildLocationList(areaLocationList![index]);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Grand Getaway Sale',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: _height! / 8,
                      width: _width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/getaway.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Aeo Innings break !',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: _height! / 4,
                      width: _width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/inningsBreak.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Refered win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/referwin.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Daily Super Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: _height! / 4.5,
                      width: _width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/dailySale.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Get Ready for Summer !',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: 90,
                      //height: MediaQuery.of(context).size.height,
                      width: _width,
                      child: ListView.builder(
                          itemCount: readyForSummer!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildSummerList(readyForSummer![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Limited period offers',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: _height! / 4,
                      child: ListView.builder(
                          itemCount: limitedPeriodOffer!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildLimitedPeriodList(
                                limitedPeriodOffer![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Wizard',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          spreadRadius: 0.2,
                          offset: Offset(0.1, 3),
                        ),
                      ]),
                      height: _height! / 3.7,
                      width: _width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/images/wizard.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Explore AEO Hotels and Homes',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height! / 2.3,
                      child: ListView.builder(
                          itemCount: exploreOyoHotels!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildExploreAeoHotelsList(
                                exploreOyoHotels![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Weekend Getaways',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width,
                      height: _height! / 2.8,
                      child: ListView.builder(
                          itemCount: weekendGetaways!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildWeekendGetawaysList(
                                weekendGetaways![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Aeo Specials',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height! / 2.4,
                      child: ListView.builder(
                          itemCount: oyoSpecials!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildAeoSpecialsList(oyoSpecials![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Latest at AEO',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height! / 2.4,
                      child: ListView.builder(
                          itemCount: latestOyo!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildLatestAeoList(latestOyo![index]);
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: const Text(
                        'Shake & Win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: _height! / 4.2,
                      width: _width,
                      child: Card(
                        elevation: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Image.asset(
                            'assets/images/shake_win.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        //color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Play and win',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      height: _height! / 4.5,
                      width: _width,
                      child: Card(
                        elevation: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                          child: Image.asset(
                            'assets/images/playwin.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        //color: Colors.orange,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Your wallets',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: _width,
                      height: _height! / 4.2,
                      child: ListView.builder(
                          itemCount: yourWallets!.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return _buildYourWalletsList(yourWallets![index]);
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.only(top: 10.0),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 196, 26, 61),
                  ),
                  Text('Home',
                      style: TextStyle(
                        color: Color.fromARGB(255, 196, 26, 61),
                      )),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(Icons.favorite_border),
                  Text('Saved'),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(Icons.card_travel),
                  Text('Booking'),
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(Icons.group_add),
                  Text('Invite & Earn'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLocationList(AreaLocationList item) {
    return Container(
      color: Colors.white,
      width: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70.0),
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              item.name,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYourWalletsList(YourWalletList item) {
    return Container(
        width: _width! / 1.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Card(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          color: Colors.orange[100],
          child: Stack(children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Opacity(
                opacity: 0.75,
                child: ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: _height! / 8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange[200]!, Colors.pinkAccent],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Column(
                children: <Widget>[
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: CustomShapeClipper2(),
                      child: Container(
                        //height: _height / 3.5,
                        height: _height! / 7.8,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.blue[500]!, Colors.pinkAccent],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        item.title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w900),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Text(
                            item.subTitleRupee,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image.asset(
                            item.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 150,
                    ),
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          item.totalRupee,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }

  Widget _buildLatestAeoList(LatestOyoList item) {
    return SizedBox(
      width: _width! / 2.1,
      child: Card(
        elevation: 0,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  item.name,
                  style: const TextStyle(
                      fontSize: 13,
                      letterSpacing: 0.1,
                      height: 1.5,
                      fontWeight: FontWeight.w600),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAeoSpecialsList(OyoSpecialsList item) {
    return SizedBox(
      width: _width! / 2.20,
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  item.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.subTitle,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[700],
                          letterSpacing: 0.1,
                          height: 1.5),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeekendGetawaysList(WeekendGetawaysList item) {
    return SizedBox(
      width: _width! / 2.4,
      child: Card(
        elevation: 0,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5)),
          child: Image.asset(
            item.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildExploreAeoHotelsList(ExploreOyoHotelsList item) {
    return SizedBox(
      width: _width! / 2.20,
      child: Card(
        elevation: 2,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  item.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.black,
              height: _height! / 30,
              width: _width! / 5,
              child: Text(
                item.title,
                style: const TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  item.subTitle,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      letterSpacing: 0.1,
                      height: 1.5),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLimitedPeriodList(LimitedPeriodOfferList item) {
    return SizedBox(
      width: _width! / 2.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 2,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)),
            child: Image.asset(
              item.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSummerList(ReadyForSummerList item) {
    return SizedBox(
      width: _width,
      child: Card(
        elevation: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            item.imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
