import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myList(),
    ),
  );
}

class myList extends StatefulWidget {
  const myList({super.key});

  @override
  State<myList> createState() => _myListState();
}

class _myListState extends State<myList> {
  List<Map<String, dynamic>> myIcon = [
    {
      'NAME': "SEARCH",
      'ICON':
          "https://cdn3.iconfinder.com/data/icons/feather-5/24/search-512.png",
      'TEXT': ""
    },
    {
      'NAME': "HOME",
      'ICON':
          "https://static.vecteezy.com/system/resources/previews/000/568/450/original/home-icon-vector.jpg",
    },
    {
      'NAME': "MENU",
      'ICON': "https://cdn-icons-png.flaticon.com/512/660/660376.png",
    },
    {
      'NAME': "CLOSE",
      'ICON':
          "https://cdn3.iconfinder.com/data/icons/pyconic-icons-1-2/512/close-512.png",
    },
    {
      'NAME': "REFRESH",
      'ICON': "https://cdn-icons-png.flaticon.com/512/7022/7022719.png",
    },
    {
      'NAME': "DONE",
      'ICON':
          "https://static.vecteezy.com/system/resources/thumbnails/000/441/750/small/Basic_Element_15-30__28586_29.jpg"
    },
    {
      'NAME': "ADD",
      'ICON':
          "https://static.vecteezy.com/system/resources/previews/000/443/115/original/vector-add-icon.jpg",
    },
    {
      'NAME': "DELETE",
      'ICON':
          "https://thumb.ac-illust.com/3b/3b5b217ce258702c0956cbf3b146acba_t.jpeg",
    },
    {
      'NAME': "STAR",
      'ICON':
          "https://static.vecteezy.com/system/resources/previews/000/378/728/original/star-vector-icon.jpg",
    },
    {
      'NAME': "LOCATION",
      'ICON':
          "https://png.pngtree.com/png-vector/20191021/ourmid/pngtree-vector-location-icon-png-image_1834331.jpg"
    },
    {
      'NAME': "BACK",
      'ICON':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhsJrhgrCkMyvWUve7e2ScGfBjdh2VM_hpXQ&usqp=CAU",
    },
    {
      'NAME': "DOWNLOAD",
      'ICON':
          "https://media.istockphoto.com/id/844294300/vector/download-icon-isolated-vector.jpg?s=612x612&w=0&k=20&c=VCmvy8uEoTQnt9W0kZzjEBplN_opDkGKF_eQTLfkivs=",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: const Text(
            "Map",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...myIcon
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: 70,
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 3.0,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${e['NAME']}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.white,
                                  child: Image(
                                    image: NetworkImage(
                                      e['ICON'],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  // foregroundImage: NetworkImage(
                                  //   e['ICON'],
                                  // ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
