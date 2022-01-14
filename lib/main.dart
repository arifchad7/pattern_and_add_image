import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Row(
            //
            //   children: [
            //     // RaisedButton(
            //     //   onPressed: (){},
            //     //   elevation: 20,
            //     //   textColor: Colors.black,
            //     //   child: Text('ex of RaisedButton'),
            //     //   color: Colors.amber,
            //     // ),
            //     // OutlineButton(
            //     //   onPressed: (){},
            //     //
            //     //   textColor: Colors.black,
            //     //   child: Text('ex of OutlineButton'),
            //     //
            //     // ),
            //     // FlatButton(
            //     //   onPressed: (){},
            //     //   color: Colors.cyanAccent,
            //     //   textColor: Colors.red,
            //     //   child: Text('ex of FlatButton'),
            //     //
            //     // ),
            //
            //
            //   ],
            // ),
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2017/10/05/06/46/asia-2818566_960_720.jpg'),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,

            ),
            Slider(
              onChanged: (value){},
              value: 10,
              min: 1,
              max: 100,
              thumbColor: Colors.amber,
              activeColor: Colors.blue,
              inactiveColor: Colors.red,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'এখানে আপনার ইউজারনেম লিখুন',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.people),
                  fillColor: Colors.limeAccent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'এখানে আপনার পাসওয়ার্ড লিখুন',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.password),
                  fillColor: Colors.limeAccent,
                ),
              ),
            ),
            Row(
              children: [
                Text('Remeber Password'),
                Switch(
                  onChanged:(IsEnable){},
                  value: true,
                  activeColor: Colors.red,
                ),
                RaisedButton(
                  onPressed: (){},
                  elevation: 30,
                  textColor: Colors.black,
                  child: Text('Login'),
                  color: Colors.amber,
                ),
                OutlineButton(
                  onPressed: (){},
                  textColor: Colors.black,
                  child: Text('Cancel'),
                ),
                // FlatButton(
                //   onPressed: (){},
                //   color: Colors.cyanAccent,
                //   textColor: Colors.red,
                //   child: Text('Reset Password'),
                //
                // ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.brown,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home_filled),
      ),
    );
  }
}