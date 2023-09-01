import 'package:flutter/material.dart';
import 'package:testt/car_one.dart';

// ignore: camel_case_types
class m_page extends StatefulWidget {
  const m_page({super.key});

  @override
  State<m_page> createState() => _m_pageState();
}

// ignore: camel_case_types
class _m_pageState extends State<m_page> {
  // ignore: non_constant_identifier_names
  List<Widget> Widgets = [
    const Selected_one(),
    const Selected_Two(),
    const Selected_Two(),
    const Selected_Two(),

    const Selected_Two(),
  ];
  int ch = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: ch,
        onTap: (i) {
          setState(() {
            ch = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My watchlist',
            icon: Icon(
              Icons.favorite,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Bids',
            icon: Icon(
              Icons.handyman_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (fff, ddfd) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(82),
                child: Container(
                  color: Colors.red,
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          top: 16,
                          bottom: 16,
                        ),
                        child: TextFormField(
                          style: const TextStyle(height: 0.6),
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                            hintText: 'Search',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(
                        width: 8,
                      ),
                      CircleAvatar(
                        radius: 25,
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
                        radius: 25,
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
                        radius: 25,
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
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.red,
              title: const Text(
                'Motors Divison',
              ),
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Available',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ];
        },
        body: Widgets.elementAt(ch),
      ),
    );
  }
}

// ignore: camel_case_types
class Selected_one extends StatelessWidget {
  const Selected_one({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.pin_end,size: 30,),
                SizedBox(width: 10,),
                Text('Pinned',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (con){
                  return Car_one();
                },),);
              },
              child: Stack(

                  children: [

                    Card(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                Image.asset(
                                  'images/1.jpeg',
                                  width: 150,
                                  height: 110,
                                  fit: BoxFit.cover,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.favorite,
                                      size: 20,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '2022 Lexus LX 600',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                    child: Container(
                                      color: Colors.grey[300],
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.only(left: 2.0, right: 2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.speed_outlined,
                                              size: 20,
                                            ),
                                            Text(
                                              ' 51,317 Km',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'AED',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                      Text(
                                        ' 4.443,600',
                                        style:
                                        TextStyle(color: Colors.green, fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                    child: Container(
                                      height: 1,
                                      width: double.infinity,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.handyman_sharp,
                                              size: 20, color: Colors.grey),
                                          Text(
                                            ' 135',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(Icons.timelapse,
                                              size: 20, color: Colors.grey),
                                          Text(
                                            ' 9d : 00h',
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                      child: Container(
                        color: Colors.grey[300],
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [

                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                'Lot # 408037',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ]
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Stack(

              children: [

                Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                            'images/2.jpeg',
                            width: 150,
                            height: 110,
                            fit: BoxFit.cover,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.favorite_border,
                                size: 20,
color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '2019Bentley Continental',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                              child: Container(
                                color: Colors.grey[300],
                                child: const Padding(
                                  padding:
                                  EdgeInsets.only(left: 2.0, right: 2),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.speed_outlined,
                                        size: 20,
                                      ),
                                      Text(
                                        ' 155,324 Km',
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'AED',
                                  style: TextStyle(color: Colors.green),
                                ),
                                Text(
                                  ' 343,400',
                                  style:
                                  TextStyle(color: Colors.green, fontSize: 25),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                              child: Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey,
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.handyman_sharp,
                                        size: 20, color: Colors.grey),
                                    Text(
                                      ' 70',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.timelapse,
                                        size: 20, color: Colors.grey),
                                    Text(
                                      ' 9d : 00h',
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                  child: Container(
                    color: Colors.grey[300],
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'Lot # 404986',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

               ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/3.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2022 Toyota Land cruiser',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 24,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      ' 5,100',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 60',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/4.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2022 Mercedes cle 45..',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 34,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      ' 1,500',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 133',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/5.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2009 Toyota Corolla',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 215,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      '13,000',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 0',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/1.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2019Bentley Continental',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 155,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      ' 343,400',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 70',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/1.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2019Bentley Continental',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 155,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      ' 343,400',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 70',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),
            Stack(

                children: [

                  Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/1.jpeg',
                                width: 150,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '2019Bentley Continental',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6.0, bottom: 6),
                                  child: Container(
                                    color: Colors.grey[300],
                                    child: const Padding(
                                      padding:
                                      EdgeInsets.only(left: 2.0, right: 2),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.speed_outlined,
                                            size: 20,
                                          ),
                                          Text(
                                            ' 155,324 Km',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'AED',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    Text(
                                      ' 343,400',
                                      style:
                                      TextStyle(color: Colors.green, fontSize: 25),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                                  child: Container(
                                    height: 1,
                                    width: double.infinity,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.handyman_sharp,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 70',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.timelapse,
                                            size: 20, color: Colors.grey),
                                        Text(
                                          ' 9d : 00h',
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 95.0, bottom: 6),
                    child: Container(
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              'Lot # 404986',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ]
            ),




          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Selected_Two extends StatelessWidget {
  const Selected_Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
