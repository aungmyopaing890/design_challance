import 'package:designchallange1/ui/Views/history/history_view.dart';
import 'package:designchallange1/ui/Views/home/home_view.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomeView(),
  '/history': (context) => const HistoryView(),
};
