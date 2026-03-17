import 'package:flutter/material.dart';

void main() {
  runApp(const app_de_Botao());
}

class app_de_Botao extends StatelessWidget {
  const app_de_Botao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu App de Botão'),
          backgroundColor: Color(0xff0ce8c3),
          foregroundColor: Colors.white,
        ),
        body: const tela_principal(),
      ),
    );
  }
}

class tela_principal extends StatelessWidget {
  const tela_principal({super.key});

// funcao pra mostrar a mensagem. so declaramos ela nos botoes
  void mostrar_alerta(BuildContext context, String titulo, String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext contexto_alerta) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(mensagem),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(contexto_alerta).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const espaco = SizedBox(height: 24);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // primeiro botao
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              mostrar_alerta(context, 'Opa!', 'Você clicou no botão CLIQUE!');
            },
            child: const Text('Clique'),
          ),

          espaco,

          // segundo botao
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              mostrar_alerta(context, 'Sucesso', 'Entrando no sistema...');
            },
            child: const Text('Entrar'),
          ),

          espaco,

          // terceiro botao
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              mostrar_alerta(context, 'Retorno', 'Voltando uma página...');
            },
            child: const Text('Voltar'),
          ),

          espaco,

          // quarto botao
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              mostrar_alerta(context, 'Falou!', 'Saindo do aplicativo!');
            },
            child: const Text('Sair'),
          ),
        ],
      ),
    );
  }
}
