import 'package:flutter/material.dart';
import 'package:flutter_web/expanded_right.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const ExpandedRightWidget(),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Flutter Web Test',
                            style: TextStyle(
                              color: Color.fromARGB(255, 11, 35, 55),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 400,
                            child: Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    fillColor: Colors.blue[50],
                                    hintText: 'digite aqui',
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10),
                                      ),
                                    ),
                                    suffixIcon:
                                        const Icon(Icons.search_rounded)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.green,
                              child: Column(
                                children: const [
                                  Text('Cliente xxx', style: TextStyle(color: Colors.white),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Informações: ', style: TextStyle(color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(
                              flex: 3,
                              child: Container(
                                  color: const Color.fromARGB(255, 25, 65, 94),
                                  child: Column(
                                    children: const [
                                      Text('Cliente xxx', style: TextStyle(color: Colors.white),),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text('Informações: ',style: TextStyle(color: Colors.white),),
                                    ],
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
