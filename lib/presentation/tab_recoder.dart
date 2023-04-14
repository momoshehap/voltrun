import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../business_logic/fab_controler.dart';

class TapRecorder extends StatelessWidget {
  final FabController fabController = Get.put(FabController());
  final ColorFapController colorFapController = Get.put(ColorFapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAB Taps Recorder"),
      ),
      body: GetBuilder<FabController>(
        builder: (controller) =>Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  fabController.numberOfTaps.isEmpty?'Number of taps: 0 ':  'Number of taps:'+  fabController.numberOfTaps[fabController.delayIndex-1].toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: fabController.reset,
                child: const Text("Reset"),

                
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GetBuilder<FabController>(
        builder: (controller) => GestureDetector(onLongPress: (){ controller.changeWithDelay();
        colorFapController.changeColorWithDelay(controller.delayIndex,controller.delayList);
        
        },
         
          child: GetBuilder<ColorFapController>(
        builder: (colorController) => FloatingActionButton(
              onPressed: controller.recordTap,
              backgroundColor:
                  
                  !colorController.isDelay? Colors.blue[900] : Colors.red,
              child: const Icon(Icons.add),
            ),
          ),
        ),
      ),
    );
  }
}
