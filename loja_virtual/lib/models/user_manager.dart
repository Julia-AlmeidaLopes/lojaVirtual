import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:loja_virtual/models/usuario.dart';


class UserManager{
  
  //final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> singIn(Usuario user) async {
    try {
      print('passei');
      final UserCredential result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: user.email, 
        password: user.senha,
      );
      print(result.user.uid);
    }on PlatformException catch(e){
      print(e);
       print('passei');
    }
  }
}