import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.book();
                },
                child: Text("Buku"),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {
                  controller.peminjaman();
                },
                child: Text("Peminjaman"),
              ),
            ],
          )
      ),
    );
  }
}
