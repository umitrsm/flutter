import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';
void main() {
  runApp(MyApp());
}

//void main () => runApp(myApp());
//Eğer fonskiyon sadece tek satırsa bu şekidede yazılabilir

class MyApp extends StatefulWidget {
 
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myAppState();
  }
}
class _myAppState extends State  <MyApp> {
  int _questionNumber=0;


  void _answerQuestion(){
    
   setState(() {
    _questionNumber = _questionNumber +1;
    });
    print('Secilen Cevap');
    if(_questionNumber < 4){
      print('Sonraki Soru');

    }
    else {
      print('Başka Soru Yok!');
    }
  }
  @override
  Widget build(BuildContext context) {
    const question = const [
      {'questionText': 'Favori renginizi nedir?',
      'answers': ['Kırmızı','Sarı', 'Mavi', 'Siyah' ],},
      
      {'questionText':'En sevdiğiniz hayvan nedir?',
      'answers': ['Köpek', 'Kedi','Balık','Kuş'],},
      
      {'questionText':'Hangi Takımı tutuyorsunuz?',
      'answers': ['Galatasaray', 'Beşiktaş','Fenerbahçe','Trabzonspor'],},
      
      {'questionText':'Mehmet in aklınan neden gelmiyor',
      'answers': ['Dünya umrunda değil', 'Bosvermiş','Umursamıyor','Sallamıyor'],},

      {'questionText':'Testi ne kadar beğendiniz?',
      'answers': ['4', '3','2','1'],},
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.lime,
        
        ),
        body: _questionNumber<5 ? Column(//İF KULLANIMI
          children:[ Questions(
            question[_questionNumber]['questionText']
            ),
          ...(question[_questionNumber]['answers'] as List<String>).map((answer){
            return Answers(_answerQuestion, answer);
          }).toList()
          ],
        ) : Center (child: Text('You did it!')),//ELSE KULLANIMI!!!!!!
      ),
    ); //Widget return eden bir fonksiyon
  }
}
