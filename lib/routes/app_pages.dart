import 'package:get/get.dart';
import 'package:medix_demo_app/screens/Chat/chat_view.dart';
import 'package:medix_demo_app/screens/appointments/appointments_view.dart';
import 'package:medix_demo_app/screens/booking_1/booking_1_view.dart';
import 'package:medix_demo_app/screens/booking_2/booking_2_view.dart';
import 'package:medix_demo_app/screens/booking_3/booking_3_view.dart';
import 'package:medix_demo_app/screens/chat_room/chat_room_view.dart';
import 'package:medix_demo_app/screens/doctor_profile/doctor_profile_view.dart';
import 'package:medix_demo_app/screens/done/done_view.dart';
import 'package:medix_demo_app/screens/home/home_view.dart';
import 'package:medix_demo_app/screens/profile/profile_view.dart';
import 'package:medix_demo_app/screens/search_doctors/search_doctors_view.dart';

import '../screens/call/call_view.dart';
import '../screens/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
    ),
    GetPage(
      name: _Paths.APPOINTMENTS,
      page: () => const AppointmentsView(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
    ),
    GetPage(
      name: _Paths.SEARCH_DOCTORS,
      page: () => const SearchDoctorsView(),
    ),
    GetPage(
      name: _Paths.DOCTOR_PROFILE,
      page: () => const DoctorProfileView(),
    ),
    GetPage(
      name: _Paths.BOOKING_1,
      page: () => const Booking1View(),
    ),
    GetPage(
      name: _Paths.BOOKING_2,
      page: () => const Booking2View(),
    ),
    GetPage(
      name: _Paths.BOOKING_3,
      page: () => const Booking3View(),
    ),
    GetPage(
      name: _Paths.DONE,
      page: () => const DoneView(),
    ),
    GetPage(
      name: _Paths.CHATROOM,
      page: () => const ChatRoomView(),
    ),
    GetPage(
      name: _Paths.CALL,
      page: () => const CallView(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
    ),
  ];
}
