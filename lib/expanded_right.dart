import 'package:flutter/material.dart';

class ExpandedRightWidget extends StatefulWidget {
  const ExpandedRightWidget({Key? key}) : super(key: key);

  @override
  State<ExpandedRightWidget> createState() => _ExpandedRightWidgetState();
}

class _ExpandedRightWidgetState extends State<ExpandedRightWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // o flex default é igual a 1, esse ocupa 1/6 da tela
      child: Container(
        color: const Color.fromARGB(255, 25, 65, 94),
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.flutter_dash_rounded,
                size: 70,
                color: Colors.white,
              ),
            ),
            _menuItens('Clientes', Icons.portrait_sharp),
            _menuItens('Produtos', Icons.ad_units),
            _menuItens('Perfil', Icons.person_off_outlined),
            _menuItens('Compras', Icons.shopping_cart_sharp),
            _menuItens('Detalhes', Icons.details_rounded),
            _menuItens('Outros', Icons.other_houses_outlined),
          ],
        ),
      ),
    );
  }

  Widget _menuItens(texto, icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        horizontalTitleGap: 0.0,
        onTap: () {},
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
}
