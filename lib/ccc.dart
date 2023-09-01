import 'package:flutter/material.dart';

class ccc extends StatefulWidget {
  const ccc({super.key});

  @override
  State<ccc> createState() => _cccState();
}

class _cccState extends State<ccc> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: const Text(
                'Motors Divison',
              ),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: PreferredSize(

                preferredSize: Size.fromHeight(100),
                child: Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 16,
                                  bottom: 16,
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.search,
                                      ),
                                      hintText: 'Search',
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(35))),
                                ),
                              )),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.filter_list,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                      // ListView.builder(
                      //     itemCount: 5,
                      //     itemBuilder:(con,i){
                      //       return ListView.builder(
                      //         itemCount: 5,
                      //         itemBuilder: (con, i) {
                      //           return Text(' hi');
                      //         },
                      //       );
                      //     })
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body:Container(
          height: 1000,
          color: Colors.yellow,
        )
      ),
    );
  }
}


