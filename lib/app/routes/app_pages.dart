import 'package:get/get.dart';

import '../modules/Chat/bindings/chat_binding.dart';
import '../modules/Chat/views/chat_view.dart';
import '../modules/appointments/bindings/appointments_binding.dart';
import '../modules/appointments/views/appointments_view.dart';
import '../modules/booking_1/bindings/booking_1_binding.dart';
import '../modules/booking_1/views/booking_1_view.dart';
import '../modules/booking_2/bindings/booking_2_binding.dart';
import '../modules/booking_2/views/booking_2_view.dart';
import '../modules/booking_3/bindings/booking_3_binding.dart';
import '../modules/booking_3/views/booking_3_view.dart';
import '../modules/doctor_profile/bindings/doctor_profile_binding.dart';
import '../modules/doctor_profile/views/doctor_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/search_doctors/bindings/search_doctors_binding.dart';
import '../modules/search_doctors/views/search_doctors_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENTS,
      page: () => const AppointmentsView(),
      binding: AppointmentsBinding(),
    ),
    GetPage(
      name: _Paths.CONVERSATION,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_DOCTORS,
      page: () => const SearchDoctorsView(),
      binding: SearchDoctorsBinding(),
    ),
    GetPage(
      name: _Paths.DOCTOR_PROFILE,
      page: () => const DoctorProfileView(),
      binding: DoctorProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING_1,
      page: () => const Booking1View(),
      binding: Booking1Binding(),
    ),
    GetPage(
      name: _Paths.BOOKING_2,
      page: () => const Booking2View(),
      binding: Booking2Binding(),
    ),
    GetPage(
      name: _Paths.BOOKING_3,
      page: () => const Booking3View(),
      binding: Booking3Binding(),
    ),
  ];
}
