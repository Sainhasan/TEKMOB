// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypepasswordController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/diamond.png'),
        title: Text('SHRINE'),
        backgroundColor: Color.fromARGB(255, 231, 211, 235),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 30.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 13.0),
                const Text('Registrasi',
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                const Text('Lorem Ipsum dolar sit amet,consectetur adiscing elit',
                           style: TextStyle(
                            fontSize: 12,
                           ),),
              ],
            ),
            const SizedBox(height: 40.0),
            // TODO: Remove filled: true values (103)
            // TODO: Add TextField widgets (101)
            const Text('Masukan Nama User',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),

            const SizedBox(height: 12.0,),

            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: "Username",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  fillColor: Colors.transparent,
                ),
            ),
            //Spasi
            const SizedBox(height: 12.0,),
            
            const Text('Masukan Password',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),

            const SizedBox(height: 12.0,),

            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  fillColor: Colors.transparent,
                ),
              obscureText: true,
            ),

            const SizedBox(height: 12.0,),

            const Text('Masukan Kembali Password',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),

            const SizedBox(height: 12.0,),

            TextField(
              controller: _retypepasswordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  fillColor: Colors.transparent,
                ),
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            const SizedBox(height: 12.0,),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(horizontal: 24.0)),
                // TOFO: Add Buttons
                TextButton(
                  onPressed: (){
                    _usernameController.clear();
                    _passwordController.clear();
                    _retypepasswordController.clear();
                    },
                  child: const Text('Hapus'),
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/home');
                  },
                  child:  const Text('Daftar',
                  style: TextStyle(
                    color: Colors.white,
                    
                  ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100.0,),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 25.0)),
                const Text("Sudah Punya Akun?"),
                TextButton(onPressed: (){}, child: const Text('Sign In',
                style: TextStyle(color: Colors.blue,),
                ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
