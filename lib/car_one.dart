import 'package:flutter/material.dart';

// ignore: camel_case_types
class Car_one extends StatefulWidget {
  const Car_one({super.key});

  @override
  State<Car_one> createState() => _Car_oneState();
}

// ignore: camel_case_types
class _Car_oneState extends State<Car_one> {
  int ch = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Current Price:'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'AED',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text(
                        ' 4.443,600',
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Min Iccrement:',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'AED 100',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: NestedScrollView(
        headerSliverBuilder: (fff, ddfd) {
          return <Widget>[
            SliverAppBar(
              floating: true,
              elevation: 0,
              backgroundColor: Colors.red,
              title: const Text(
                'Motors Divison',
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Stack(
                  children: [
                    Image.asset(
                      'images/1.jpeg',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 233.0, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey[800],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Lot # 404986',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: Icon(
                            size: 30,
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.handyman,
                          color: Colors.grey[600],
                        ),
                        const Column(
                          children: [
                            Text(
                              'Bids',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '136',
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 2,
                            height: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.speed,
                          color: Colors.grey[600],
                        ),
                        const Column(
                          children: [
                            Text(
                              'Odometer',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '51,317 Km',
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 2,
                            height: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.timer,
                          color: Colors.grey[600],
                        ),
                        const Column(
                          children: [
                            Text(
                              'Time remaining',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '',
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                        top: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.handyman,
                            color: Colors.grey[600],
                            size: 20,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'End data',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '21 Aug, 05:50 PM',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            height: 40,
                            onPressed: () {},
                            color: Colors.white,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.notifications_none,
                                  size: 20,
                                ),
                                Text(
                                  'Notifications',
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: MaterialButton(
                            height: 40,
                            onPressed: () {},
                            color: Colors.white,
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_outlined,
                                  size: 15,
                                ),
                                Text(
                                  ' Add to Calendar ',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Card(
                      color: Colors.grey[100],
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'HIGHLIGHTS',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 12,
                              ),
                              child: Text(
                                'Options',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                              ),
                              child: Text(
                                '- ABS',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Automatic Gear',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Electric Seats',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Navigation System',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Power Steering',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Power Windows',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Rear view camera',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Steering wheel audio system',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                '- Sunroof',
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                'Additional Features & Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                              ),
                              child: Text(
                                'GCC Specifications',
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                'Others',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                              ),
                              child: Text(
                                '- Conditional on provider,s approval-Service'
                                ' contract 4 year or 100,000 kilometers-Under'
                                'Warranty till 30/05/2026 or 100,000 kilometers',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 8.0,
                                top: 8,
                              ),
                              child: Text(
                                  '- The vehicle will be delivered by the company'
                                  ' recovery only according to the set prices.'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.grey[100],
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'SPECIFICATIONS OVERVIEW',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Make',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          'Lexus',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Model',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          'LX 600',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Year',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          '2022',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Keys',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          '2',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Exterior',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          'White',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Doors',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          '4',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Transmision',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          'Automatic',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Odometer',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          '51.317 km',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Fuel Type',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 17),
                                        ),
                                        Text(
                                          'Petrol',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Vin number',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'JTJPB7CX3N4006379',
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Body Type',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Station',
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Seats',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '5',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            height: 40,
                            onPressed: () {},
                            color: Colors.grey[600],
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.support_agent,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' Support',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: MaterialButton(
                            height: 40,
                            onPressed: () {},
                            color: Colors.grey[600],
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.question_mark,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                Text(
                                  ' FAQs ',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Similar Items ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Stack(children: [
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
                                      padding: const EdgeInsets.only(
                                          top: 6.0, bottom: 6),
                                      child: Container(
                                        color: Colors.grey[300],
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 2.0, right: 2),
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
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 25),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 4.0, bottom: 4),
                                      child: Container(
                                        height: 1,
                                        width: double.infinity,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
