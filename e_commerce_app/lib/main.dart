import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Application()),
  );
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<Map<String, dynamic>> data = [
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/comp/BGK7BN/a-female-photographer-is-shooting-someone-or-something-BGK7BN.jpg",
      'COMPANY_NAME': "TESLA",
      'CEO_NAME': "ELON MUSK",
      'CEO_IMAGE': "assets/images/tesla.png",
    },
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/comp/2G2H5C1/photo-of-pretty-adorable-young-lady-dressed-casual-clothes-looking-camera-isolated-white-color-background-2G2H5C1.jpg",
      'COMPANY_NAME': "TATA MOTORS",
      'CEO_NAME': "RATAN TATA",
      'CEO_IMAGE': "assets/images/tatamotors.png",
    },
    {
      'COMPANY_LOGO':
          "https://www.shutterstock.com/image-photo/girl-taking-pictures-her-camera-260nw-2394935219.jpg",
      'COMPANY_NAME': "APPLE",
      'CEO_NAME': "TIM COOK",
      'CEO_IMAGE': "assets/images/apple.png",
    },
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/comp/2F9F3W0/young-woman-in-modest-clothes-taking-a-photo-image-on-her-digital-camera-over-pink-background-shes-wearing-polka-dot-dress-and-headband-2F9F3W0.jpg",
      'COMPANY_NAME': "GOOGLE",
      'CEO_NAME': "SUNDER PICHAI",
      'CEO_IMAGE': "assets/images/google.png",
    },
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/comp/FBBDWE/cheerful-female-photographer-wearing-casual-style-clothes-smiling-FBBDWE.jpg",
      'COMPANY_NAME': "WIPRO",
      'CEO_NAME': "THIERRAY DELAPORTE",
      'CEO_IMAGE': "assets/images/wipro.png",
    },
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/compfr/pyeg09/jeune-femme-prend-des-photos-sur-une-rue-de-la-ville-pyeg09.jpg",
      'COMPANY_NAME': "INFOSYS",
      'CEO_NAME': "SALIL PAREKH",
      'CEO_IMAGE': "assets/images/infosys.png",
    },
    {
      'COMPANY_LOGO':
          "https://www.shutterstock.com/image-photo/busy-photographer-lady-capturing-three-260nw-1025292727.jpg",
      'COMPANY_NAME': "RELIANCE",
      'CEO_NAME': "MUKESHBHAI AMBANI",
      'CEO_IMAGE': "assets/images/reliance.png",
    },
    {
      'COMPANY_LOGO':
          "https://c8.alamy.com/comp/EHAAT7/photography-student-a-13-14-15-year-old-teenage-girl-using-a-big-heavy-EHAAT7.jpg",
      'COMPANY_NAME': "APOLLOTYRE",
      'CEO_NAME': "NIRAJ KANWAR",
      'CEO_IMAGE': "assets/images/apollotyre.png",
    },
  ];

  // List<String> imagePaths = [
  //   "assets/images/tesla.png",
  //   "assets/images/tatamotors.png",
  //   "assets/images/apple.png",
  //   "assets/images/google.png",
  //   "assets/images/wipro.png",
  //   "assets/images/infosys.png",
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: Colors.black,
          elevation: 0,
          title: const Text(
            "MNC CEOs",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...data.map(
                  (e) => Container(
                    height: 90,
                    width: double.infinity,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(0, 5),
                          ),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(-5, 0),
                          ),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(5, 0),
                          ),
                        ]
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      e['COMPANY_LOGO'],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${e['COMPANY_NAME']}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "${e['CEO_NAME']}",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 140,
                              ),
                              // CircleAvatar(
                              //   radius: 29,
                              //   foregroundImage: AssetImage(
                              //     e['CEO_IMAGE'],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
