/*
  * Util/Dependency imports
 */
import 'package:flutter/material.dart';
import 'package:app/utils/app.routes.dart';
import 'package:app/utils/global.vars.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 400,
                height: 70,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.deepPurple,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          " Lietotāja iestatījumi",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

        // Button to sign-out
        Positioned(
          bottom: 15,
          right: 8,
          child: SizedBox(
            width: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.signInRoute);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: GlobalVariables.redBtn,
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    "Iziet",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
