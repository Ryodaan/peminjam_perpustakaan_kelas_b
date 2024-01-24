import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController>{
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddBookView'),
        centerTitle: true,
      ),
      body:
      Center(
        child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.namaController,
                  decoration: InputDecoration(hintText: "Masukan Nama"),
                  validator: (value){
                    if (value!.length < 5){
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(hintText: "Masukan Username"),
                  validator: (value){
                    if (value!.length < 5){
                      return "User name tidak boleh kosong";
                    }
                    return null;
                  },
                ), TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(hintText: "Masukan Password"),
                  validator: (value){
                    if (value!.length < 5){
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ), TextFormField(
                  controller: controller.telpController,
                  decoration: InputDecoration(hintText: "Masukan telepon"),
                  validator: (value){
                    if (value!.length < 2){
                      return "Telepon tidak boleh kosong";
                    }
                    return null;
                  },
                ), TextFormField(
                  controller: controller.alamatController,
                  decoration: InputDecoration(hintText: "Masukan alamat"),
                  validator: (value){
                    if (value!.length < 2){
                      return "Alamat tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value?
                CircularProgressIndicator():
                ElevatedButton(onPressed: (){
                  controller.register();
                }, child: Text("Registrasi"))
                )
              ],
            )
        ),
      ),

    );
  }
}