import 'package:flutter/material.dart';
import 'package:tomscanner/widgets/navigation_box.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  const SizedBox(
                    height: 44,
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(9.9),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search_rounded),
                        labelText: 'Search',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: const <Widget>[
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: ImageIcon(
                            AssetImage("assets/images/cloud.png"),
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          width: 18,
                          height: 10,
                        ),
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: ImageIcon(
                            AssetImage("assets/images/crown.png"),
                            color: Color.fromRGBO(255, 183, 67, 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: const BoxDecoration(),
                child: const NavBox(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 6.0),
              child: SizedBox(
                child: Text(
                  'Recent Files',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(181, 253, 253, 253),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      bottom: 20,
                      right: 20,
                      child: FloatingActionButton(
                        onPressed: () async {
                          final ImagePicker _picker = ImagePicker();
                          final XFile? photo = await _picker.pickImage(
                              source: ImageSource.camera);
                          // setState(() {});
                        },
                        child: const Icon(Icons.camera),
                      ))
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
