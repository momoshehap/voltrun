import 'package:get/get.dart';

class FabController extends GetxController {
  int _tapCount = 0;
  int delayIndex=0;
  List<double> _tapTimes = [];
  List delayList = [];
  List numberOfTaps = [];
  void recordTap() {
    _tapCount++;
    var newDelay=_tapTimes.isEmpty?0.0: DateTime.now().second.toDouble()-_tapTimes.last;
    if(_tapTimes.isNotEmpty&&newDelay >=1.0){
       numberOfTaps.add(_tapCount);
       delayList.add(newDelay.toInt());   
      print("delay =" +delayList.toString()); 
      print("taps = "+numberOfTaps.toString()); 
}     

    _tapTimes.add(DateTime.now().second.toDouble());

  }

  void changeWithDelay() async{
    if(delayIndex!=delayList.length){
 await Future.delayed(Duration(seconds: int.parse( delayList[delayIndex].toString())), () {
    update();
      });
    delayIndex++;}

  }

  int get tapCount => _tapCount;

  void reset() {
    _tapCount = 0;
    delayIndex = 0;
    _tapTimes.clear();
    delayList.clear();
    numberOfTaps.clear();
        update();

  }
}

class ColorFapController extends GetxController {

     bool  isDelay=false;


  void changeColorWithDelay(int delayIndex,List delayList) async{
    if(delayIndex!=delayList.length){
      isDelay=true;
      update();
 await Future.delayed(Duration(seconds: int.parse( delayList[delayIndex].toString())), () {
  isDelay=false;
    update();
      });
    }

  }

}
