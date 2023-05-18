import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Agecal(),
    ),
  );
}

class Agecal extends StatefulWidget {
  const Agecal({Key? key}) : super(key: key);

  @override
  State<Agecal> createState() => _AgecalState();
}

class _AgecalState extends State<Agecal> {
  DateTime d = DateTime.now();

  List Ofmonth = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  int Birthdate = 0;
  int Birthmonth = 0;
  int Birthyear = 0;

  TextEditingController dateController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  String Presentdate = "00";
  String Presentmonth = "00";
  String Presentyear = "00";

  String Nextdate = "00";
  String Nextmonth = "00";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(0xff203a43),
        centerTitle: true,
        title: const Text(
          "Age Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  const  Text(
                      "Today's Date",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  const  SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "${d.day} ${Ofmonth[d.month - 1]} ,${d.year}",
                        hintStyle: const TextStyle(
                          color: Color(0xff1c003e),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff203a43),
                          ),
                        ),
                        disabledBorder: const OutlineInputBorder(),
                      ),
                      enabled: false,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      "Date Of Birth",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            controller: dateController,
                            onChanged: (val) {
                              setState(() {
                                Birthdate = int.parse(val);
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: "DD",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(
                                  0xffe5e5e5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                            ),
                          ),
                        ),
                       const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            controller: monthController,
                            onChanged: (val) {
                              setState(() {
                                Birthmonth = int.parse(val);
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: "MM",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(
                                  0xffe5e5e5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                            ),
                          ),
                        ),
                       const  SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            controller: yearController,
                            onChanged: (val) {
                              setState(() {
                                Birthyear = int.parse(val);
                              });
                            },
                            decoration: const InputDecoration(
                              hintText: "YYYY",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(
                                  0xffe5e5e5,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff203a43),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Ink(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff13547a),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          dateController.clear();
                          monthController.clear();
                          yearController.clear();

                          Birthdate = 0;
                          Birthmonth = 0;
                          Birthyear = 0;
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 175,
                          child: const Text(
                            "Clear",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                   const SizedBox(
                      width: 14,
                    ),
                    Ink(
                      decoration: BoxDecoration(
                        color: Color(0xff13547a),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xff13547a),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (Birthdate > 0 &&
                                Birthdate <= 31 &&
                                Birthmonth > 0 &&
                                Birthmonth <= 12 &&
                                Birthyear > 0 &&
                                Birthyear <= d.year) {
                              if (Birthyear == d.year) {
                                if (Birthmonth == d.month) {
                                  if (Birthdate <= d.day) {
                                    //Year
                                    (Birthmonth >= d.month)
                                        ? (Birthmonth == d.month)
                                            ? (d.day >= Birthdate)
                                                ? Presentyear =
                                                    (d.year - Birthyear)
                                                        .toString()
                                                : Presentyear =
                                                    (d.year - (Birthyear + 1))
                                                        .toString()
                                            : Presentyear =
                                                (d.year - (Birthyear + 1))
                                                    .toString()
                                        : Presentyear =
                                            (d.year - Birthyear).toString();

                                    //Month
                                    if (Birthmonth == d.month) {
                                      if (Birthdate == d.day) {
                                        Presentmonth =
                                            (Birthmonth - d.month).toString();
                                        Nextmonth =
                                            (12 - (Birthmonth - d.month))
                                                .toString();
                                      } else if (Birthdate < d.day) {
                                        Presentmonth =
                                            (Birthmonth - (d.month)).toString();
                                        Nextmonth = (12 -
                                                ((Birthmonth - (d.month)) + 1))
                                            .toString();
                                      } else {
                                        Nextmonth =
                                            (Birthmonth - d.month).toString();
                                        Presentmonth =
                                            (12 - ((Birthmonth - d.month) + 1))
                                                .toString();
                                      }
                                    } else if (Birthmonth > d.month) {
                                      if (Birthdate == d.day) {
                                        Nextmonth =
                                            (Birthmonth - d.month).toString();
                                        Presentmonth =
                                            (12 - (Birthmonth - d.month))
                                                .toString();
                                      } else if (Birthdate < d.day) {
                                        Nextmonth = (Birthmonth - (d.month + 1))
                                            .toString();
                                        Presentmonth = (12 -
                                                ((Birthmonth - (d.month + 1)) +
                                                    1))
                                            .toString();
                                      }
                                    } else {
                                      Nextmonth =
                                          (Birthmonth - d.month).toString();
                                      Presentmonth =
                                          (12 - ((Birthmonth - d.month) + 1))
                                              .toString();
                                    }
                                  } else {
                                    if (Birthdate == d.day) {
                                      Presentmonth =
                                          (d.month - Birthmonth).toString();
                                      Nextmonth = (12 - (d.month - Birthmonth))
                                          .toString();
                                    } else if (Birthdate < d.day) {
                                      Presentmonth =
                                          (d.month - Birthmonth).toString();
                                      Nextmonth =
                                          (12 - ((d.month - Birthmonth) + 1))
                                              .toString();
                                    } else {
                                      Presentmonth =
                                          (d.month - (Birthmonth + 1))
                                              .toString();
                                      Nextmonth = (12 - (d.month - Birthmonth))
                                          .toString();
                                    }
                                  }
                                  //Day
                                  if (d.day == Birthdate) {
                                    Presentdate =
                                        (d.day - Birthdate).toString();
                                    Nextdate = (d.day - Birthdate).toString();
                                  } else if (d.day > Birthdate) {
                                    Presentdate =
                                        (d.day - Birthdate).toString();
                                    Nextdate =
                                        (31 - (d.day - Birthdate)).toString();
                                  } else {
                                    Nextdate = (Birthdate - d.day).toString();
                                    Presentdate =
                                        (31 - (Birthdate - d.day)).toString();
                                  }
                                } else {
                                  Presentdate = "00";
                                  Presentmonth = "00";
                                  Presentyear = "00";
                                  Nextdate = "00";
                                  Nextmonth = "00";
                                }
                              } else if (Birthyear < d.year) {
                                //Year
                                (Birthmonth >= d.month)
                                    ? (Birthmonth == d.month)
                                        ? (d.day >= Birthdate)
                                            ? Presentyear =
                                                (d.year - Birthyear).toString()
                                            : Presentyear =
                                                (d.year - (Birthyear + 1))
                                                    .toString()
                                        : Presentyear =
                                            (d.year - (Birthyear + 1))
                                                .toString()
                                    : Presentyear =
                                        (d.year - Birthyear).toString();

                                //Month
                                if (Birthmonth == d.month) {
                                  if (Birthdate == d.day) {
                                    Presentmonth =
                                        (Birthmonth - d.month).toString();
                                    Nextmonth = (12 - (Birthmonth - d.month))
                                        .toString();
                                  } else if (Birthdate < d.day) {
                                    Presentmonth =
                                        (Birthmonth - (d.month)).toString();
                                    Nextmonth =
                                        (12 - ((Birthmonth - (d.month)) + 1))
                                            .toString();
                                  } else {
                                    Nextmonth =
                                        (Birthmonth - d.month).toString();
                                    Presentmonth =
                                        (12 - ((Birthmonth - d.month) + 1))
                                            .toString();
                                  }
                                } else if (Birthmonth > d.month) {
                                  if (Birthdate == d.day) {
                                    Nextmonth =
                                        (Birthmonth - d.month).toString();
                                    Presentmonth = (12 - (Birthmonth - d.month))
                                        .toString();
                                  } else if (Birthdate < d.day) {
                                    Nextmonth =
                                        (Birthmonth - (d.month + 1)).toString();
                                    Presentmonth = (12 -
                                            ((Birthmonth - (d.month + 1)) + 1))
                                        .toString();
                                  }
                                } else {
                                  Nextmonth = (Birthmonth - d.month).toString();
                                  Presentmonth =
                                      (12 - ((Birthmonth - d.month) + 1))
                                          .toString();
                                }
                              } else {
                                if (Birthdate == d.day) {
                                  Presentmonth =
                                      (d.month - Birthmonth).toString();
                                  Nextmonth =
                                      (12 - (d.month - Birthmonth)).toString();
                                } else if (Birthdate < d.day) {
                                  Presentmonth =
                                      (d.month - Birthmonth).toString();
                                  Nextmonth =
                                      (12 - ((d.month - Birthmonth) + 1))
                                          .toString();
                                } else {
                                  Presentmonth =
                                      (d.month - (Birthmonth + 1)).toString();
                                  Nextmonth =
                                      (12 - (d.month - Birthmonth)).toString();
                                }
                              }
                              //Day
                              if (d.day == Birthdate) {
                                Presentdate = (d.day - Birthdate).toString();
                                Nextdate = (d.day - Birthdate).toString();
                              } else if (d.day > Birthdate) {
                                Presentdate = (d.day - Birthdate).toString();
                                Nextdate =
                                    (31 - (d.day - Birthdate)).toString();
                              } else {
                                Nextdate = (Birthdate - d.day).toString();
                                Presentdate =
                                    (31 - (Birthdate - d.day)).toString();
                              }
                            } else {
                              Presentdate = "00";
                              Presentmonth = " 00";
                              Presentyear = "00";
                              Nextdate = "00";
                              Nextmonth = "00";
                            }
                          });
                        },
                        splashColor: Colors.white,
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: 175,
                          child: const Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Present age",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff13547a),
                              Color(0xff203a43),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Presentyear,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Year",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Presentmonth,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Presentdate,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Birthday",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff6bbed9),
                              Color(0xff006acb),
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          const  SizedBox(
                              width: 90,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Nextmonth,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "MM",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Nextdate,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "DD",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
