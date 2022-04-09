import 'package:oyo_clone_ui/model/aeospecials.dart';
import 'package:oyo_clone_ui/model/arealocationlist.dart';
import 'package:oyo_clone_ui/model/exploreaeohotelslist.dart';
import 'package:oyo_clone_ui/model/latestaeo.dart';
import 'package:oyo_clone_ui/model/limitedperiodofferlist.dart';
import 'package:oyo_clone_ui/model/readyforsummerlist.dart';
import 'package:oyo_clone_ui/model/weekendgetawayslist.dart';
import 'package:oyo_clone_ui/model/yourwalletslist.dart';

class Constants {
  static const String aeoUi = 'OYO_UI';
  static const String splashScreen = 'SPLASH_SCREEN';

  static List<AreaLocationList> getLocationList() {
    return [
      AreaLocationList('assets/images/nearby.png', 'Nearby'),
      AreaLocationList('assets/images/nanital.jpg', 'Nainital'),
      AreaLocationList('assets/images/delhi.jpeg', 'Delhi'),
      AreaLocationList('assets/images/agra.jpeg', 'Agra'),
      AreaLocationList('assets/images/goa.jpeg', 'Goa'),
      AreaLocationList('assets/images/musoorie.jpeg', 'Musoorie'),
      AreaLocationList('assets/images/banglore.jpeg', 'Banglore'),
      AreaLocationList('assets/images/hyedrabaad.jpeg', 'Hyedrabaad'),
      AreaLocationList('assets/images/kolkata.jpeg', 'Kolkata'),
      AreaLocationList('assets/images/mumbai.jpeg', 'Mumbai'),
      AreaLocationList('assets/images/noida.jpeg', 'Noida'),
      AreaLocationList('assets/images/pune.jpeg', 'Pune'),
      AreaLocationList('assets/images/mnali.jpeg', 'Mnali'),
    ];
  }

  static List<ReadyForSummerList> getSummerList() {
    return [
      ReadyForSummerList('assets/images/getRadyForSummer.jpg'),
      ReadyForSummerList('assets/images/readyforsummer2.jpg'),
    ];
  }

  static List<LimitedPeriodOfferList> getLimitedPeriodOfferList() {
    return [
      LimitedPeriodOfferList('assets/images/offer1.jpg'),
      LimitedPeriodOfferList('assets/images/offers_1.jpeg'),
      LimitedPeriodOfferList('assets/images/offers_2.jpeg')
    ];
  }

  static List<ExploreOyoHotelsList> getExploreOyoHotelsList() {
    return [
      ExploreOyoHotelsList('assets/images/explore1.jpg', 'HOME',
          'Home stays with luxuriors spaces and awesome feel for the'),
      ExploreOyoHotelsList('assets/images/explore2.jpg', 'COLLECTION',
          'A space for new age Business travellers for smoother work trips'),
      ExploreOyoHotelsList('assets/images/explore3.jpg', 'TOWNHOUSE',
          'Smart hotel rooms with luxurious space that are designed'),
      ExploreOyoHotelsList('assets/images/explore4.jpg', 'SILVERKEY',
          'Fully serviced, professionally managed apartments'),
    ];
  }

  static List<WeekendGetawaysList> getWeekendsList() {
    return [
      WeekendGetawaysList('assets/images/weekend_3.jpg'),
      WeekendGetawaysList('assets/images/goaBeach.jpg'),
      WeekendGetawaysList('assets/images/hills.jpg'),
    ];
  }

  static List<OyoSpecialsList> getOyoSpecials() {
    return [
      OyoSpecialsList('assets/images/explore1.jpg', '@AEO Near You',
          'Travelling? Choose from these best stays in india'),
      OyoSpecialsList('assets/images/explore4.jpg', 'AEO WORKSPACES',
          'Workspaces to make every moment work!'),
      OyoSpecialsList('assets/images/explore3.jpg', 'AEO LIFE',
          'Find long-term accommodation satrting,@Rs.5999 per month'),
      OyoSpecialsList('assets/images/explore2.jpg', 'AEO HOTEL',
          'Travelling? Choose from these best stays in india'),
      OyoSpecialsList('assets/images/explore1.jpg', 'AEO TOTAL HOLIDAYS',
          'Travel packages with an AEO Hotels stay,AEO Cal and AEO'),
    ];
  }

  static List<LatestOyoList> getLatestOyo() {
    return [
      LatestOyoList('assets/images/latest_1.jpg',
          'Book your meal before check-in to save more on your money'),
      LatestOyoList('assets/images/latest_2.jpg',
          'Skipping, breakfast? Dont pay for it and save on bookings '),
    ];
  }

  static List<YourWalletList> getYourWallet() {
    return [
      YourWalletList('AEO', 'Rupee', 'assets/images/aeologic.png', '₹.  0'),
      YourWalletList('AEO', 'Wallet', 'assets/images/aeologic.png', '₹.  0'),
    ];
  }
}
