import 'package:flutter/material.dart';
import 'package:loja_virtual/models/user_manager.dart';
import 'package:loja_virtual/models/usuario.dart';
import 'package:provider/provider.dart';
import 'package:loja_virtual/validator/validator.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fazer Login'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: ListView(
              padding: EdgeInsets.all(17),
              shrinkWrap: true,
              children: <Widget>[
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  validator: (email) {
                    if (!validarEmail(email)) return 'E-mail inválido';
                    return null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: senhaController,
                  decoration: InputDecoration(hintText: 'Senha'),
                  obscureText: true,
                  validator: (senha) {
                    if (senha.isEmpty || senha.length < 6)
                      return 'Senha inválida';
                    return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: Text('Esqueci minha senha'),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 43,
                  child: RaisedButton(
                    onPressed: () {
                      if(formKey.currentState.validate()){
                       context.read<UserManager>().singIn(
                         Usuario(
                           email: emailController.text,
                           senha: senhaController.text
                         )
                       );
                      }
                    },
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
