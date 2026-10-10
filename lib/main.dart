import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TasbeehScreen(title: 'السبحة الرقمية'),
    );
  }
}

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key, required this.title});

  final String title;

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
  
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int _counter = 0;
  int _currentIndex = 0;
 final List<String> _prayers = [
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar :AppBar( 
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 214, 224, 217),
          fontFamily: 'Ruqaa'
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/imageScreen.jfif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
    
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const Text(
                  'الدعاء الحالي',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 214, 224, 217),
                    fontFamily: 'Lateef'
                  ),
                ),
               Text(
                  _prayers[_currentIndex],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 214, 224, 217),
                    fontFamily: 'Lateef'
                  ),
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'عدد التسبيحات',
                  style:  TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 214, 224, 217),
                    fontFamily: 'Lateef'
                  ),
                ),
                 Text(
                  '$_counter',
                  style: const TextStyle(
                    fontSize: 85,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 214, 224, 217),
                    fontFamily: 'Lateef'
                  ),
                ),
              ],
            ),
              
            Row(
              mainAxisAlignment: MainAxisAlignment.values[5],
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shadowColor: const Color.fromARGB(255, 122, 125, 123),
                    overlayColor: const Color.fromARGB(255, 1, 51, 16),
                    backgroundColor: Colors.transparent,
                  
                    side: const BorderSide(
                      color: Color.fromARGB(255, 191, 197, 193),
                      width: 2,
                    ),
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                onPressed: (){
                  setState(() {
                    _counter = 0;
                    _currentIndex = 0;
                  });
                }, 
                child: Icon(
                  Icons.refresh,
                  size: 30,
                  color: const Color.fromARGB(255, 164, 166, 164),
                )),
              
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_counter < 33) {
                        _counter++;
                      } else {
                        _currentIndex = (_currentIndex + 1) % _prayers.length;
                        _counter = 0;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color.fromARGB(255, 122, 125, 123),
                    overlayColor: const Color.fromARGB(255, 1, 51, 16),
                    backgroundColor: Colors.transparent,
                  
                    side: const BorderSide(
                      color: Color.fromARGB(255, 191, 197, 193),
                      width: 2,
                    ),
                    padding: const EdgeInsets.all(30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.touch_app,
                        size: 30,
                        color: const Color.fromARGB(255, 164, 166, 164),
                      ),
                      const Text(
                        'اضغط هنا',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 164, 166, 164),
                          fontFamily: 'Lateef'
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
  
}
