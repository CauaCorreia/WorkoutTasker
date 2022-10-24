import 'package:flutter/material.dart';
import '../../../models/user.dart';

class HomeTrainerModalAdd extends StatefulWidget {
  final List<User>? listModels;
  final Function? fncRefresh;
  const HomeTrainerModalAdd(
      {super.key, required this.listModels, required this.fncRefresh});

  @override
  State<HomeTrainerModalAdd> createState() => _HomeTrainerModalAddState();
}

class _HomeTrainerModalAddState extends State<HomeTrainerModalAdd> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Adicinar Aluno",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Digite o codigo de seu aluno",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
            ),
            const Text(
              "Insira o codigo unico do aluno para adicionar ele na sua relação de alunos.",
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
            ),
            ElevatedButton(
              onPressed: () {
                addInList();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text("Adicionar"),
            )
          ],
        )),
      ),
    );
  }

  addInList() {
    // ignore: todo
    //TODO fazer conexão com o firebase
    User hlm = User(
      name: DateTime.now().toString(),
      id: "123546",
    );
    setState(() {
      widget.listModels!.add(hlm);
    });

    widget.fncRefresh!();

    Navigator.pop(context);
  }
}
