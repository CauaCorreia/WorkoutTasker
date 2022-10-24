import 'package:flutter/material.dart';
import 'home_list_model.dart';

class HomeModalAdd extends StatefulWidget {
  final List<HomeListModel> listModels;
  final Function fncRefresh;
  const HomeModalAdd(
      {super.key, required this.listModels, required this.fncRefresh});

  @override
  State<HomeModalAdd> createState() => _HomeModalAddState();
}

class _HomeModalAddState extends State<HomeModalAdd> {
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
              "Adicione seu treino",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Digite o nome do seu treino",
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25),
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
    HomeListModel hlm = HomeListModel(
      title: _nameController.text,
    );
    setState(() {
      widget.listModels.add(hlm);
    });

    widget.fncRefresh();

    Navigator.pop(context);
  }
}
