
import 'package:get/get.dart';

class DealDetailController extends GetxController{

  List<Map<String, dynamic>> keyMetrics = [];
  // 'FUNDING','TRACTION','FINANCIAL','COMPETITION'

  @override
  Future<void> onInit() async {
    setMetricData();
    super.onInit();

  }

  void setMetricData() {
    keyMetrics.add({'name': 'FUNDING', 'isSelected': false});
    keyMetrics.add({'name': 'TRACTION', 'isSelected': false});
    keyMetrics.add({'name': 'FINANCIAL', 'isSelected': true});
    keyMetrics.add({'name': 'COMPETITION', 'isSelected': false});
  }
}
