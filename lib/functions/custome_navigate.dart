  import 'package:go_router/go_router.dart';

void customeNavigate(context,String path) {
    GoRouter.of(context).push(path);
  }
  void customeNavigatePushReplacement(context,String path) {
    GoRouter.of(context).pushReplacement(path);
  }