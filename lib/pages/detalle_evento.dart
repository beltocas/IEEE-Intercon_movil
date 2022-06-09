import 'package:flutter/material.dart';

class DetalleEvento extends StatefulWidget {
  const DetalleEvento({Key? key}) : super(key: key);

  @override
  State<DetalleEvento> createState() => _DetalleEventoState();
}

class _DetalleEventoState extends State<DetalleEvento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Portada(),
            Categoria(),
            Titulo(),
            Descripcion(),
            Calendario(),
            Inscribirse(),
          ],
        ),
      ),
    );
  }
}

class Portada extends StatelessWidget {
  const Portada({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/evento.jpg',
          fit: BoxFit.contain,
        ),
        Container(
          padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 0, 0),
          child: FloatingActionButton(
            onPressed: () {
              print('Regresar ...');
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
          ),
        )
      ],
    );
  }
}

class Categoria extends StatelessWidget {
  const Categoria({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 20, 25, 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Categoría',
            style: TextStyle(
              color: Color(0xFF979797),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.favorite,
            color: Color(0xFFF7931E),
            size: 24,
          ),
          SizedBox(width: 10),
          Text(
            '146',
            style: TextStyle(
              color: Color(0xFFF7931E),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              'Gratuito',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 20),
      child: const Text(
        'Advances in aerospace imaging and signal processing in Peru',
        style: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Descripcion extends StatelessWidget {
  const Descripcion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 30),
      child: const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Orci odio vulputate consequat elit. Pharetra enim habitasse pretium magna in. Sociis ultrices aliquam, massa commodo arcu. Maecenas interdum mauris amet, enim vitae, consequat cursus purus semper.',
        style: TextStyle(
          color: Color(0xFF979797),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Calendario extends StatelessWidget {
  const Calendario({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Icon(
            Icons.calendar_month,
            color: Colors.black,
            size: 24,
          ),
          SizedBox(width: 10),
          Text(
            '21/06/2022',
            style: TextStyle(
              color: Color(0xFF979797),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Text(
              'Asientos restantes: ',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            '60',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Inscribirse extends StatelessWidget {
  const Inscribirse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(25, 0, 25, 25),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('Favorito ...');
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(241, 62),
              textStyle: const TextStyle(fontSize: 20),
              primary: const Color(0xFF076572),
            ),
            child: const Text(
              'Inscríbete',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              print('Inscríbete ...');
            },
          ),
        ],
      ),
    );
  }
}
