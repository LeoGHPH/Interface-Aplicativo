import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Titulo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 52, 159, 225)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'INTERFACE DE APLICATIVO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.blue,
                  child: const Text('Tela do app:'),
                ),
              
              ),
            
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                
              Expanded(
          child: Container(
                  alignment: Alignment.center,
                  //color: Colors.yellow,
                 // child: Text('primeira coluna'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 2
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 5)
                      ),
                    ],
                  ),
                  child: const Text('MEU APLICATIVO'),
                ),
              ),
          
              
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.yellow,
                  //child: Text('terceira linha'),
                ),
              ),
                  
            ],
          ),
        ),
            
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  //color: Colors.green,
                  child: const Text('Layout inferior:'),
                ),
              ),
            
          ], 
        ),
      ),
    );
          
      
    

            
        
        
  }
}




