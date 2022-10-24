import 'package:flutter/material.dart';
import 'package:responsive_login_ui/views/home_widgets/home_list_model.dart';

class HomeListItem extends StatefulWidget {
  final HomeListModel homeListModel;
  HomeListItem({required this.homeListModel});

  @override
  State<HomeListItem> createState() => _HomeListItemState();
}

class _HomeListItemState extends State<HomeListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //container da sombra
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
            spreadRadius: 3,
            offset: Offset(3, 7),
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(children: [
        Container(
          height: 15,
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //mage.asset(widget.homeListModel.assetIcon),
                      const Padding(padding: EdgeInsets.only(left: 12)),
                      Text(
                        widget.homeListModel.title,
                        style: const TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.delete,
                    color: Colors.red,
                  )
                ]),
          ),
        ),
      ]),
    );
  }
}
