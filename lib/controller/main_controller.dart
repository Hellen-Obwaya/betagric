import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/utils.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();

//init firestore variable
  var firestore;
  //creating collection variable
  var donations = <String, dynamic>{}.obs;

  //for events
  var allEvents = <String, dynamic>{}.obs;

  //variable for selecting a single donation
  var donationsSelectedId = "".obs;
  //selecting single event
  var eventSelectedId = "".obs;

  @override
  void onReady() {
    super.onReady();
    firestore = FirebaseFirestore.instance;
    //bindstream for realtime list
    donations.bindStream(donationStream());
  }

  setEvents(type) {
    allEvents.bindStream(eventStream(type));
    update();
  }

  //create donation
  createDonation(name, location, contact) async {
    Utils.showLoading(message: "Sending donation");
    try {
      await (firestore as FirebaseFirestore).collection('Donations').add({
        "name": name,
        "location": location,
        "contact": contact,
        'created': DateTime.now().millisecondsSinceEpoch
      });
      Utils.showSuccess("success");
      return true;
    } catch (e) {
      print(e);
      Utils.showError('Failed to add. try again');
    }
    Utils.dismissLoader();
    return false;
  }

  //stream list in realtime
  Stream<Map<String, dynamic>> donationStream() {
    var ref = FirebaseFirestore.instance
        .collection('Donations')
        .orderBy('created')
        .snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

//<---FOR EVENTS--->
  Stream<Map<String, dynamic>> eventStream(type) {
    var ref = FirebaseFirestore.instance
        .collection('Events')
        .orderBy('created')
        .where("type", isEqualTo: "$type")
        .snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

  //Select Item Id
  selectDonation(id) {
    donationsSelectedId.value = id;
    update();
  }

  selectEvent(id) {
    donationsSelectedId.value = id;
    update();
  }

//send event to google calendar
  sendToCalendar(
      {title, description, location, startDate, endDate, String? url}) async {
    var eventObject = Event(
      title: title,
      description: description,
      location: location,
      startDate: startDate,
      endDate: endDate,
      allDay: false,
      iosParams: IOSParams(
        reminder: Duration(minutes: 30),
        url: url,
      ),
    );
    var send = await Add2Calendar.addEvent2Cal(eventObject);

    if (send) {
      Utils.showSuccess("Event saved to your calendar");
    } else {
      Utils.showError("An error occured. Try again");
    }
  }

  //make phone call
  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
