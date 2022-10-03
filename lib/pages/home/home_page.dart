import 'package:flutter/material.dart';
import 'package:ncb_banking_app/pages/home/home_utilities.dart';
import 'package:ncb_banking_app/utilities/magic_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: viewportConstraints.maxHeight,
        ),
        child: IntrinsicHeight(
          child: Stack(
            children: [
              Container(
                height: screenSize.height,
                color: Colors.white,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * .37,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(230.0, 55.0)),
                  child: Image.asset(
                    image_names.backgroundEdited,
                    fit: BoxFit.fill,
                    // width: screenSize.width * 1.5,
                  ),
                ),
              ),
              Container(
                width: screenSize.width,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 27.0, right: 15.0, left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.menu_outlined,
                                size: 37.0,
                                color: Colors.white,
                              )),
                          Image.asset(
                            image_names.logo,
                            width: 40.0,
                          )
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            // fontWeight: FontWeight.w500)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 250.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      roundedContainer(
                        Stack: Stack(children: [Arch()]),
                      ),
                      roundedContainer(
                        Stack: Stack(children: [Arch()]),
                      ),
                      roundedContainer(
                        Stack: Stack(children: [
                          Arch(),
                          Stack(
                            children: [
                              Arch(),
                              Column(
                                children: [
                                  Icon(Icons.credit_card),
                                  Icon(Icons.money_outlined),
                                ],
                              )
                            ],
                          ),
                        ]),
                      ),
                    ],
                  )),
              Positioned(
                  top: 400.0,
                  child: Container(
                    // color: Colors.black,
                    height: screenSize.height * .8,
                    width: screenSize.width,
                    child: Column(
                      children: [
                        Accordion(
                            title: "title",
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.red,
                                  width: 100.0,
                                  height: 100.0,
                                ),
                                Container(
                                  color: Colors.red,
                                  width: 100.0,
                                  height: 100.0,
                                ),
                              ],
                            )),
                        Accordion(
                            title: "title",
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.red,
                                  width: 100.0,
                                  height: 100.0,
                                )
                              ],
                            )),
                        Accordion(
                            title: "title",
                            child: Column(
                              children: [
                                Container(
                                  color: Colors.red,
                                  width: 100.0,
                                  height: 100.0,
                                )
                              ],
                            )),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ));
    }));
  }
}
