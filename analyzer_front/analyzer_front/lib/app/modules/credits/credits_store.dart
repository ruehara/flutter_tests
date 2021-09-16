import 'package:analyzer_front/app/analyzer_library.dart';
import 'package:mobx/mobx.dart';

part 'credits_store.g.dart';

class CreditsStore = _CreditsStoreBase with _$CreditsStore;

abstract class _CreditsStoreBase with Store {
  final ScrollController scrollController = ScrollController();
  bool isScrolling = false;
  int speedFactor = 16;

  scroll() {
    double maxExtent = scrollController.position.maxScrollExtent;
    double distanceDifference = maxExtent - scrollController.offset;
    double durationDouble = distanceDifference / speedFactor;

    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: Duration(seconds: durationDouble.toInt()),
        curve: Curves.linear);
  }

  String cast = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
      "  CAST\n\n\n";

  String roles = "$backEndDeveloper\n"
      "$backEndTester\n"
      "$frontEndDeveloper\n"
      "\n"
      "\n"
      "\n"
      "$frontEndTester\n"
      "$productOwner\n"
      "$technicalMentor\n"
      "\n"
      "$managmentMentor\n"
      "\n"
      "$customer\n"
      "\n"
      "\n"
      "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";

  String persons = "$rodrigo\n"
      "$luan\n"
      "$davi\n"
      "$leandro\n"
      "$luan\n"
      "$rodrigo\n"
      "$davi\n"
      "$dyonatan\n"
      "$fabricio\n"
      "$jose\n"
      "$jessica\n"
      "$nathalia\n"
      "$fabricio\n"
      "$ivan\n"
      "$sebastiao\n"
      "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
}
