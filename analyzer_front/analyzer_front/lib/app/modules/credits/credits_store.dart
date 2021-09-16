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

  String val =
      """























                                CAST 

   $backEndDeveloper  $rodrigo
       $backEndTester  $luan
   $frontEndDeveloper  $davi
                                     $leandro
                                     $luan
                                     $rodrigo
       $frontEndTester  $davi
      $productOwner  $dyonatan
      $technicalMentor  $fabricio
                                     $jose
 $managmentMentor  $jessica
                                     $nathalia
          $customer  $fabricio
                                     $ivan
                                     $sebastiao
























""";
}
