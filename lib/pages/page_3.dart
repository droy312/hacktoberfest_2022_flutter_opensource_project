import 'package:flutter/material.dart';

const kSeatAvailableColor = Color(0xFFE0F7FA);
const kSeatBookedColor = Color(0xFFFF5252);
const kSeatSelectedColor = Color(0xFF69F0AE);

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 28,
                    height: 30,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 5,
                            ),
                            AnimatedContainer(
                              padding: const EdgeInsets.all(20.0),
                              duration: const Duration(
                                microseconds: 1000,
                              ),
                              width: 20,
                              height: 30,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: kSeatAvailableColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 7.5,
                            ),
                            Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: 15,
                                  height: 5,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(2.0),
                                      topRight: Radius.circular(2.0),
                                    ),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.black,
                                    ),
                                    color: kSeatAvailableColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                              height: 12.5,
                            ),
                            Container(
                              width: 5,
                              height: 17.5,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(1.0),
                                  topRight: Radius.circular(1.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                                color: kSeatAvailableColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 22.5,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 5,
                                    height: 12.5,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 17.5,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 0.01,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(1.0),
                                        topRight: Radius.circular(1.0),
                                      ),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Colors.black,
                                      ),
                                      color: kSeatAvailableColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Available',
                    style:
                        TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 28,
                    height: 30,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 5,
                            ),
                            AnimatedContainer(
                              padding: EdgeInsets.all(20.0),
                              duration: Duration(
                                microseconds: 1000,
                              ),
                              width: 20,
                              height: 30,
                              margin: EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: kSeatBookedColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 7.5,
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: 15,
                                  height: 5,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(2.0),
                                      topRight: Radius.circular(2.0),
                                    ),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.black,
                                    ),
                                    color: kSeatBookedColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                              height: 12.5,
                            ),
                            Container(
                              width: 5,
                              height: 17.5,
                              margin: EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(1.0),
                                  topRight: Radius.circular(1.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                                color: kSeatBookedColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 22.5,
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 5,
                                    height: 12.5,
                                  ),
                                  Container(
                                    width: 5,
                                    height: 17.5,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 0.01,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(1.0),
                                        topRight: Radius.circular(1.0),
                                      ),
                                      border: Border.all(
                                        width: 0.5,
                                        color: Colors.black,
                                      ),
                                      color: kSeatBookedColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Booked',
                    style:
                        TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 28,
                    height: 30,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 5,
                            ),
                            AnimatedContainer(
                              padding: const EdgeInsets.all(20.0),
                              duration: const Duration(
                                microseconds: 1000,
                              ),
                              width: 20,
                              height: 30,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                color: kSeatSelectedColor,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 7.5,
                            ),
                            Column(
                              children: <Widget>[
                                const SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  width: 15,
                                  height: 5,
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(2.0),
                                      topRight: Radius.circular(2.0),
                                    ),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.black,
                                    ),
                                    color: kSeatSelectedColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            const SizedBox(
                              width: 10,
                              height: 12.5,
                            ),
                            Container(
                              width: 5,
                              height: 17.5,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 0.01,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(1.0),
                                  topRight: Radius.circular(1.0),
                                ),
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.black,
                                ),
                                color: kSeatSelectedColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            const SizedBox(
                              width: 22.5,
                            ),
                            Column(
                              children: <Widget>[
                                const SizedBox(
                                  width: 5,
                                  height: 12.5,
                                ),
                                Container(
                                  width: 5,
                                  height: 17.5,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 0.01,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(1.0),
                                      topRight: Radius.circular(1.0),
                                    ),
                                    border: Border.all(
                                      width: 0.5,
                                      color: Colors.black,
                                    ),
                                    color: kSeatSelectedColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Selected',
                    style:
                        TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const <Widget>[],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'A',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'B',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'C',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'D',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'E',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'F',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'G',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'H',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'I',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'J',
                        style: TextStyle(
                            fontSize: 12.5, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      SeatIcon(seatNumber: '1'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '2'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '3'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '4'),
                      SeatIcon(seatNumber: '5'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '6'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '7'),
                      SizedBox(width: 2),
                      SeatIcon(seatNumber: '8'),
                      SizedBox(width: 20),
                      SeatIcon(seatNumber: '9'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '10'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '11'),
                      SizedBox(width: 2),
                      SeatIconB(seatNumber: '12'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SeatIcon extends StatefulWidget {
  final String seatNumber;

  const SeatIcon({required this.seatNumber});

  @override
  _SeatIconState createState() => _SeatIconState();
}

class _SeatIconState extends State<SeatIcon> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
//        selected
//            ?  _settingModalBottomSheet(context)
//            :Text('');
      },
      child: Container(
        width: 28,
        height: 30,
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                AnimatedContainer(
                  padding: const EdgeInsets.all(20.0),
                  duration: const Duration(
                    microseconds: 1000,
                  ),
                  width: 20,
                  height: 30,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0.01,
                  ),
                  decoration: BoxDecoration(
                    color: selected ? kSeatSelectedColor : kSeatAvailableColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 11,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.seatNumber,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 7.5,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 15,
                      height: 5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2.0),
                          topRight: Radius.circular(2.0),
                        ),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                        ),
                        color:
                            selected ? kSeatSelectedColor : kSeatAvailableColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                  height: 12.5,
                ),
                Container(
                  width: 5,
                  height: 17.5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0.01,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(1.0),
                      topRight: Radius.circular(1.0),
                    ),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: selected ? kSeatSelectedColor : kSeatAvailableColor,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 22.5,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      width: 5,
                      height: 12.5,
                    ),
                    Container(
                      width: 5,
                      height: 17.5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(1.0),
                          topRight: Radius.circular(1.0),
                        ),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                        ),
                        color: selected
                            ? kSeatSelectedColor
                            : kSeatAvailableColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SeatIconB extends StatefulWidget {
  final String seatNumber;

  const SeatIconB({required this.seatNumber});

  @override
  _SeatIconBState createState() => _SeatIconBState();
}

class _SeatIconBState extends State<SeatIconB> {
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[Text('Seat No: ${widget.seatNumber}')],
          );
        });
  }

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
//        selected
//            ?  _settingModalBottomSheet(context)
//            :Text('');
      },
      child: Container(
        width: 28,
        height: 30,
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 5,
                ),
                AnimatedContainer(
                  padding: const EdgeInsets.all(20.0),
                  duration: const Duration(
                    microseconds: 1000,
                  ),
                  width: 20,
                  height: 30,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0.01,
                  ),
                  decoration: BoxDecoration(
                    color: selected ? kSeatSelectedColor : kSeatAvailableColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 9,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      widget.seatNumber,
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 7.5,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 15,
                      height: 5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(2.0),
                          topRight: Radius.circular(2.0),
                        ),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                        ),
                        color:
                            selected ? kSeatSelectedColor : kSeatAvailableColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                  height: 12.5,
                ),
                Container(
                  width: 5,
                  height: 17.5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 0.01,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(1.0),
                      topRight: Radius.circular(1.0),
                    ),
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black,
                    ),
                    color: selected ? kSeatSelectedColor : kSeatAvailableColor,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 22.5,
                ),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      width: 5,
                      height: 12.5,
                    ),
                    Container(
                      width: 5,
                      height: 17.5,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 0.01,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(1.0),
                          topRight: Radius.circular(1.0),
                        ),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black,
                        ),
                        color: selected
                            ? kSeatSelectedColor
                            : kSeatAvailableColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
