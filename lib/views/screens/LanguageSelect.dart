import 'package:flutter/material.dart';
import 'package:sambhav/utils/color_code.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  State<LanguageSelect> createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  bool value = false;
  String selected = "";
  List languageSelect = [
    {'title': "English", "value": true},
    {'title': "Hindi", "value": false},
    {'title': "Marathi", "value": false},
  ];
  bool? _checkBox = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: const Image(
                image: AssetImage('assets/enterScreen.png'),
                width: 250,
              ),
            ),
            Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "Please select your Language",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                  Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(bottom: 10),
                      child: const Text(
                        "कृपया अपनी भाषा चुनें",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                        children: List.generate(
                      languageSelect.length,
                      (index) => Container(
                        margin: const EdgeInsets.all(5),
                        //height: 50,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 1,
                          color: Colors.black26,
                        ))),
                        child: CheckboxListTile(
                          checkColor: Colors.black,
                          activeColor: Colors.green,
                          tileColor: Colors.yellow,
                          title: Text(
                            languageSelect[index]["title"],
                            textAlign: TextAlign.center,
                          ),
                          value: languageSelect[index]["value"],
                          onChanged: (val) {
                            setState(() {
                              for (var element in languageSelect) {
                                element["value"] = false;
                              }
                              languageSelect[index]["value"] = true;
                              selected =
                                  "${languageSelect[index]["title"]}, ${languageSelect[index]["value"]}";
                            });
                          },
                        ),
                      ),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25, bottom: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Language seleceted successfully")));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorCode.middleCircle,
                        shape: CircleBorder(), //<-- SEE HERE
                        padding: EdgeInsets.all(20),
                      ),
                      child: const Icon(
                        //<-- SEE HERE
                        Icons.keyboard_arrow_right,
                        color: ColorCode.white,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
