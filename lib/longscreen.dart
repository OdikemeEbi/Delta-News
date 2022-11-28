import 'package:flutter/material.dart';

class LongScreen extends StatefulWidget {
  const LongScreen({super.key});

  @override
  State<LongScreen> createState() => _LongScreenState();
}

class _LongScreenState extends State<LongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // centerTitle: true,
        leadingWidth: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 120,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: Container(
            height: 30,
            width: 30,
            child: Image.asset(
              "assets/images/pic1.jpeg",
              // height: 70,
              // width: 30,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Text(
            "Delta News",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 20, 0),
            child: CircleAvatar(
              child: Icon(
                Icons.notifications_rounded,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  children: [
                    Container(
                      // decoration: BoxDecoration(
                      //   border: Border.all(),
                      // ),
                      // color: Color.fromARGB(255, 232, 240, 248),
                      // height: 60,
                      width: MediaQuery.of(context).size.width / 1.26,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Color.fromARGB(255, 227, 233, 244),
                          filled: true,
                          // label: Text("Search"),
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.sort),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      " Popular News",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          "View All",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                width: 500,
                // width: MediaQuery.of(context).size.width / 1.3,
                child: const Image(
                  image: AssetImage("assets/images/pic2.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " Popular News",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      child: const Text(
                        "View Less",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ))
                ],
              ),
              Row(
                children: [
                  MyContainer(
                    name: 'Trending',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MyContainer(
                    name: 'Politics',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MyContainer(
                    name: 'Latest News',
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  MyContainer(
                    name: 'Fashion',
                  ),
                ],
              ),
              Row(
                children: [
                  MyContainer(
                    name: 'Beauty',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MyContainer(
                    name: 'Business',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MyContainer(
                    name: 'Sports',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  MyContainer(
                    name: 'Science',
                  ),
                ],
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      MyRow1(),
                      MyRow1(),
                      MyRow1(),
                      MyRow1(),
                      MyRow1(),
                    ],
                  ),
                ),
              )

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //         border: Border.all(color: Colors.blue),
              //         borderRadius: BorderRadius.all(Radius.circular(20))),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Container(
              //           width: 170,
              //           height: 180,
              //           decoration: const BoxDecoration(
              //               borderRadius: BorderRadius.all(
              //                 Radius.circular(20),
              //               ),
              //               image: DecorationImage(
              //                   image: AssetImage("assets/images/pic2.jpeg"),
              //                   fit: BoxFit.fill)),
              //         ),
              //         Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Row(
              //                 children: const [
              //                   Padding(
              //                     padding: EdgeInsets.all(8.0),
              //                     child: Text(
              //                       "DeltA Pledges Support for\nAiling Henry Nwosu...",
              //                       style: TextStyle(
              //                           fontSize: 20,
              //                           fontWeight: FontWeight.w700),
              //                     ),
              //                   )
              //                 ],
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Row(
              //                   children: [
              //                     Container(
              //                         height: 30,
              //                         width: 30,
              //                         child:
              //                             Image.asset("assets/images/pic1.jpeg")),
              //                     const SizedBox(width: 15),
              //                     const Text(
              //                       "Delta News",
              //                       style: TextStyle(
              //                           fontSize: 20,
              //                           color: Colors.black,
              //                           fontWeight: FontWeight.w500),
              //                     ),
              //                     const SizedBox(
              //                       width: 20,
              //                     ),
              //                     Container(
              //                       height: 40,
              //                       decoration: BoxDecoration(
              //                           borderRadius: const BorderRadius.all(
              //                               Radius.circular(10)),
              //                           border: Border.all(color: Colors.blue)),
              //                       child: const TextButton(
              //                           onPressed: null,
              //                           child: Text(
              //                             "News",
              //                             style: TextStyle(
              //                                 backgroundColor: Colors.white,
              //                                 fontSize: 20,
              //                                 color: Colors.blue,
              //                                 fontWeight: FontWeight.w500),
              //                           )),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //               Padding(
              //                 padding: const EdgeInsets.all(8.0),
              //                 child: Row(
              //                   children: const [
              //                     Icon(
              //                       Icons.thumb_up_alt_outlined,
              //                       color: Colors.blue,
              //                     ),
              //                     SizedBox(
              //                       width: 20,
              //                     ),
              //                     Text(
              //                       "32k",
              //                       style: TextStyle(fontSize: 20),
              //                     ),
              //                     SizedBox(
              //                       width: 20,
              //                     ),
              //                     Icon(
              //                       Icons.message_outlined,
              //                       color: Colors.blue,
              //                     ),
              //                     SizedBox(
              //                       width: 20,
              //                     ),
              //                     Text(
              //                       "11.2k",
              //                       style: TextStyle(fontSize: 20),
              //                     ),
              //                     SizedBox(
              //                       width: 50,
              //                     ),
              //                     Icon(
              //                       Icons.bookmark_outline,
              //                       color: Colors.blue,
              //                     ),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(
                label: "Bookmark", icon: Icon(Icons.bookmark_outline)),
            BottomNavigationBarItem(
                label: "Account", icon: Icon(Icons.person_rounded))
          ]),
    );
  }
}

class MyContainer extends StatelessWidget {
  String name;
  MyContainer({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            this.name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class MyRow1 extends StatelessWidget {
  const MyRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 170,
              height: 180,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/pic2.jpeg"),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "DeltA Pledges Support for\nAiling Henry Nwosu...",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 30,
                            width: 30,
                            child: Image.asset("assets/images/pic1.jpeg")),
                        const SizedBox(width: 15),
                        const Text(
                          "Delta News",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.blue)),
                          child: const TextButton(
                              onPressed: null,
                              child: Text(
                                "News",
                                style: TextStyle(
                                    backgroundColor: Colors.white,
                                    fontSize: 20,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "32k",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.message_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "11.2k",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Icon(
                          Icons.bookmark_outline,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
