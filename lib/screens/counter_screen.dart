import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  void _decrementarContador() {
    setState(() {
      _contador--;
    });
  }

  void _reiniciarContador() {
    setState(() {
      _contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Contador Flutter'),
        foregroundColor: Colors.white,
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has presionado el botón esta cantidad de veces:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_contador',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            onPressed: _reiniciarContador,
            tooltip: 'Reiniciar',
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            onPressed: _decrementarContador,
            tooltip: 'Restar',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            backgroundColor: Colors.orange,
            foregroundColor: Colors.white,
            onPressed: _incrementarContador,
            tooltip: 'Incrementar',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
