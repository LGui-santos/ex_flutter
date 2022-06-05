import 'package:app_numerico/controller/NumeroController.dart';
import 'package:app_numerico/model/numero.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Numérico'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Número',
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Numero.instance.getNum().toString(),
                style: const TextStyle(
                  fontSize: 70,
                  color: Colors.black,
                ),
              ),
              
            ],
          ),
          SizedBox(
            height: 40,
          ),
            Text(
                Numero.instance.getNum() % 2 == 0 ? 'Este número é par'
                : 'Este número é ímpar',
              style: const TextStyle(
                fontSize: 20,
              ),

            ),
            SizedBox(
              height: 30,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                setState(() {
                  NumeroController.instance.sumNum();
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Colors.greenAccent
              ),
              child: const Text(
                '+5',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                setState(() {
                  NumeroController.instance.subtractNum();
                  Numero.instance.getNum() > 0 ? null :
                  showDialog(context: context, 
                builder: (BuildContext context) => AlertDialog(
          title: const Text('Atenção'),
          content: const Text('Número negativo!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
                );
                });
              },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  primary: Colors.orangeAccent
                ),
                child: const Text(
                  '-5',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    NumeroController.instance.multiplyNum();
                  });
                },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                    primary: Colors.blueAccent
                  ),
                  child: const Text(
                    'x 2',
                    style: TextStyle(fontSize: 20, color:Colors.white),
                  ),
                )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                Numero.instance.getNum() != 0 ? NumeroController.instance.resetNum()
                : showDialog(context: context, 
                builder: (BuildContext context) => AlertDialog(
          title: const Text('Atenção'),
          content: const Text('Número já está zerado!'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
                ); 
              });
            },
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                primary: Colors.yellowAccent,
                
              ),
              child: const Text(
                'Zerar Número',
                style: TextStyle(fontSize: 20, color: Colors.white),
                
              ),
          ),
        ],        
      ),
      
    );
  }
}