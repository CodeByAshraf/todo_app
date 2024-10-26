import 'package:go_router/go_router.dart';
import 'package:todo_app/routes/routes_string.dart';
import 'package:todo_app/widget/home.dart';
import 'package:todo_app/widget/task_details.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutesString.homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: AppRoutesString.taskDetails,
      builder: (context, state) => const TaskDetails(),
    ),
  ],
);
