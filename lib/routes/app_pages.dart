import 'package:get/get.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';
import 'package:quiz_app/screens/questions_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = <GetPage>[
    GetPage(
      name: Routes.start,
      page: () => StartScreen(() => Get.offNamed(Routes.questions)),
    ),
    GetPage(name: Routes.questions, page: () => const QuestionsScreen()),
    GetPage(name: Routes.results, page: () => const ResultsScreen()),
  ];
}
