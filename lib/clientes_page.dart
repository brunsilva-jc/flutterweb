import 'package:flutter/material.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
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
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        suffixIcon: const Icon(Icons.search_rounded)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            const Text(
              'Cadastro de Clientes',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            _builClientCards(),
          ],
        ),
      ],
    );
  }

  Widget _builClientCards() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 25, 65, 94),
          ),
        ),
        height: 200,
      ),
    );
  }
}
