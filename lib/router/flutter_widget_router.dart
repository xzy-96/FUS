
import 'package:FUS/page/study_page/flutter_widget/canvas_page.dart';
import 'package:FUS/page/study_page/flutter_widget/FlutterlogoPage.dart';
import 'package:FUS/page/study_page/flutter_widget/Placeholder_page.dart';
final Map<String, Function> flutterWidgetRouter = {
  'canvasPage': () => (_) => CanvasPage(),
  'flutterlogoPage' : () => (_) =>FlutterlogoPage(),
  'placeholderPage' : () => (_) =>PlaceholderPage()
};