import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kavach/pages/chatpage.dart';
import 'package:kavach/pages/initiationScreen.dart';
import 'package:kavach/pages/sosPage.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          backgroundColor: Colors.transparent,
          elevation: 5,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Iconsax.alarm),
              label: 'SOS',
            ),
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.chat_outlined), label: 'Chat'),
            NavigationDestination(icon: Icon(Iconsax.map), label: 'Map'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  NavigationController() {
    screens = [
      const SOSpage(),
      const InitiationScreen(),
      const Home(),
    ];
  }

  late final List<Widget> screens;
}
