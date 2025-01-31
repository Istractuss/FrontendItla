import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primera App',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
          child:
              TarjetaPerfil() /*Text(
          'Hola mundo',
          style: TextStyle(
            fontSize: 24,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),*/
          ),
    );
  }
}

class EjemploText extends StatelessWidget {
  const EjemploText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Text sencillo',
        ),
        Text(
          'Texto con Estilo',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              letterSpacing: 1.2),
        ),
        Text(
          'Este es un texto largo que puede ocupar múltiples líneas y mostrar cómo se comporta el widget Text con contenido extenso. Este es un texto largo que puede ocupar múltiples líneas y mostrar cómo se comporta el widget Text con contenido extenso. Este es un texto largo que puede ocupar múltiples líneas y mostrar cómo se comporta el widget Text con contenido extenso.',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

class EjemploContainer extends StatelessWidget {
  const EjemploContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: const Center(
            child: Text('Container básico'),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3))
              ],
              border: Border.all(
                color: Colors.red,
                width: 2,
              )),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          child: const Center(
            child: Text(
                'Container decorado hola Container decorado Container decorado'),
          ),
        )
      ],
    );
  }
}

class EjemploLayouts extends StatelessWidget {
  const EjemploLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ],
        ),

        //Ejemplo de Column anidada
        Container(
          color: Colors.grey,
          padding: const EdgeInsets.all(8),
          child: const Column(
            children: [
              Text('Service rate'),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 8),
                  Text('4.9'),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class TarjetaPerfil extends StatelessWidget {
  const TarjetaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildEstadistica(String titulo, String valor, Icon icono) {
      return Column(
        children: [
          icono,
          Text(
            valor,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      );
    }

    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Foto de perfil
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: const Center(
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
          ),
          const SizedBox(height: 16),

          //Información del perfil
          const Text(
            'Alba G.',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Desarrollador Flutter',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),

          //corazon
          const Center(
            child: Row(
              mainAxisSize:
                  MainAxisSize.min, 
              children: [
                Icon(
                  Icons.favorite,
                  size: 20,
                ),
                SizedBox(
                    width: 4), 
                Text("15"),
              ],
            ),
          ),
           const SizedBox(height: 20),
          //tags
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blue),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Flutter'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Flutter'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Flutter'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blueGrey),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Flutter'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //redes
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.heart_broken, color: Colors.grey),
              Icon(Icons.heart_broken, color: Colors.grey),
              Icon(Icons.heart_broken, color: Colors.grey),
              Icon(Icons.heart_broken, color: Colors.grey),
              Icon(Icons.heart_broken, color: Colors.grey),
            ],
          ),
          const SizedBox(height: 20),
          //contacto
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.email),
                label: const Text('Contactar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.download),
                label: const Text('CV'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          //Estadísticas
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildEstadistica('Posts', '255', const Icon(Icons.podcasts)),
              buildEstadistica('Seguidores', '12k', const Icon(Icons.people)),
              buildEstadistica(
                  'Siguiendo', '458', const Icon(Icons.arrow_upward))
            ],
          )
        ],
      ),
    );
  }
}
