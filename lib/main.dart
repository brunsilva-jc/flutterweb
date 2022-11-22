import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Web Example Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();

  String texto = 'Web Example Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // right widget to use on ALL Pages
            Expanded(
              // o flex default é igual a 1, esse ocupa 1/6 da tela
              child: Container(
                color: const Color.fromARGB(255, 25, 65, 94),
                child: Column(
                  children: [
                    DrawerHeader(
                      child: GestureDetector(
                        onTap: () {
                          _pageController.jumpToPage(0);
                        },
                        child: const Icon(
                          Icons.flutter_dash_sharp,
                          size: 70,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    _menuItens('Clientes', Icons.portrait_sharp, 1),
                    _menuItens('Produtos', Icons.ad_units, 2),
                    _menuItens('Perfil', Icons.person_off_outlined, 3),
                    _menuItens('Compras', Icons.shopping_cart_sharp, 4),
                    _menuItens('Detalhes', Icons.details_rounded, 5),
                    _menuItens('Outros', Icons.other_houses_outlined, 6),
                  ],
                ),
              ),
            ),
            Expanded(
              // esta parte ocupará 5/6 da tela
              flex: 5,
              child: PageView(
                controller: _pageController,
                children: [
                  //home
                  _buildPage('Web Example Home', Colors.white),
                  //pages
                  // _buildPage('Página de clientes', Colors.white),
                  SingleChildScrollView(scrollDirection: Axis.vertical ,child: _clientWidget()),
                  _buildPage('Página de Produtos', Colors.white),
                  _buildPage('Página de Perfil', Colors.white),
                  _buildPage('Página de compras', Colors.white),
                  _buildPage('Página de detalhes', Colors.white),
                  _buildPage('Página outros', Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(texto, color) {
    return Container(
      color: color,
      child: Column(
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
          const SizedBox(
            height: 300,
          ),
          Center(
            child: Text(
              texto,
              style: const TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItens(texto, icon, index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        horizontalTitleGap: 0.0,
        onTap: () => _pageController.jumpToPage(index),
        leading: Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
        title: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _clientWidget() {
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
                        hintText: 'Digite aqui',
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,),
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
        const SizedBox(
          height: 150,
        ),
        Column(
          children: [
            const Text(
              'Cadastro Clientes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              children: [
                for(int i=0; i<10; i++)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 25, 65, 94),
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.person),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Nome Cliente tal'),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text('Numero Identificação'),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(Icons.read_more),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
