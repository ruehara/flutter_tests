import 'package:flutter_test/flutter_test.dart';
import 'package:analyzer_front/app/modules/report/report_store.dart';
 
void main() {
  late ReportStore store;

  setUpAll(() {
    store = ReportStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}