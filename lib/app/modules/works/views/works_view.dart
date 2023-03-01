import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/works_controller.dart';

class WorksView extends GetView<WorksController> {
  const WorksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorksView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WorksView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
