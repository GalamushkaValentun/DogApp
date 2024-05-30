import 'package:dogs/screens/start_screen/authorization_screen.dart';
import 'package:dogs/screens/start_screen/registration_screen.dart';
import 'package:dogs/screens/user_button/accaunt_screen.dart';
import 'package:dogs/screens/user_button/chat.dart';
import 'package:dogs/screens/user_button/dog_breeds/beagle.dart';
import 'package:dogs/screens/user_button/dog_breeds/french_bulldog.dart';
import 'package:dogs/screens/user_button/dog_breeds/german_shepherd.dart';
import 'package:dogs/screens/user_button/dog_breeds/golden_retriever.dart';
import 'package:dogs/screens/user_button/dog_breeds/jack_russell_terrier.dart';
import 'package:dogs/screens/user_button/dog_breeds/labrador_retriever.dart';
import 'package:dogs/screens/user_button/dog_breeds/poodle.dart';
import 'package:dogs/screens/user_button/dog_breeds/siberian_husky.dart';
import 'package:dogs/screens/user_button/info_screen.dart';
import 'package:dogs/screens/user_button/map_screen.dart';
import 'package:dogs/screens/user_button/people_nearby_map.dart';
import 'package:dogs/screens/user_button/settings.dart';
import 'package:dogs/screens/user_button/walk/lviv_walk.dart';
import 'package:dogs/screens/user_button/walk/start_walk.dart';
import 'package:dogs/screens/user_home_screen.dart';
import 'package:dogs/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final GlobalKey mapKey = GlobalKey();
final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      }),
  GoRoute(
      path: '/registration_screen',
      builder: (context, state) {
        return const RegistrationScreen();
      }),
  GoRoute(
      path: "/authorization_screen",
      builder: (context, state) {
        return const AuthorizationScreen();
      }),
  GoRoute(
      path: "/user_home_screen",
      builder: (context, state) {
        return const UserHomeScreen();
      }),
  GoRoute(
      path: "/settings",
      builder: (context, state) {
        return const Settings();
      }),
  GoRoute(
      path: "/chat",
      builder: (context, state) {
        return const ChatScreen();
      }),
  GoRoute(
      path: "/info",
      builder: (context, state) {
        return const InfoScreen();
      }),
  GoRoute(
      path: "/labrador_retriever",
      builder: (context, state) {
        return const LabradorRetrieverScreen();
      }),
  GoRoute(
      path: "/german_shepherd",
      builder: (context, state) {
        return const GermanShepherdScreen();
      }),
  GoRoute(
      path: "/beagle",
      builder: (context, state) {
        return const BeagleScreen();
      }),
  GoRoute(
      path: "/french_bulldog",
      builder: (context, state) {
        return const FrenchBulldogScreen();
      }),
  GoRoute(
      path: "/golden_retriever",
      builder: (context, state) {
        return const GoldenRetrieverScreen();
      }),
  GoRoute(
      path: "/jack_russell_terrier",
      builder: (context, state) {
        return const JackRussellTerrierScreen();
      }),
  GoRoute(
      path: "/poodle",
      builder: (context, state) {
        return const PoodleScreen();
      }),
  GoRoute(
      path: "/siberian_husky",
      builder: (context, state) {
        return const SiberianHuskyScreen();
      }),
  GoRoute(
      path: "/accaunt",
      builder: (context, state) {
        return const AccountScreen();
      }),
  GoRoute(
      path: "/start_walk",
      builder: (context, state) {
        return const StartWalkScreen();
      }),
  GoRoute(
      path: "/lviv_walk",
      builder: (context, state) {
        return const LvivWalkScreen();
      }),
  GoRoute(
      path: "/map",
      builder: (context, state) {
        return MapScreen(key: mapKey);
      }),
  GoRoute(
      path: "/people_nearby_map",
      builder: (context, state) {
        return const PeopleNearbyMap();
      })
]);
