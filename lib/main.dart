import 'package:flutter/material.dart';
import 'package:my_family/family_data.dart';


void main(){
  runApp(const MyApp());
}



class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Количество столбцов
            childAspectRatio: 4,
          ),
          itemCount: FamilyData.familyData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Container(
                color: Colors.grey.withValues(alpha: 0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(child: 
                    Column(
                      
                    children: [
                      Text(
                        'Имя самого дорого человека:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                      ),
                      Text(
                        '${FamilyData.familyData[index].name} '
                      ),
                    ],
                  ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          'Фамилия самого дорого человека:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '${FamilyData.familyData[index].forName}'
                        )
                      ],
                    ),
                  ),
                    Expanded(
                      child: Column(
                      children: [
                        Text(
                          
                          'Я искренне вам желаю',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Container(
                          width: 300,
                          child: Text(  
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          FamilyData.familyData[index].gratulatios
                        ),
                        )
                        
                      ],
                    )
                       )
                    
                  ],
                ),
              ),
              );
          }

          ),
      ),
    );
  }
}

