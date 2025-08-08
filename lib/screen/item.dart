import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilelab2cet223/models/foodmenu.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  Color getColorByType(String type) {
    switch (type) {
      case "ต้ม":
        return Colors.lightBlue;
      case "สุขภาพ":
        return Colors.lightGreen;
      case "ผัด":
        return const Color.fromARGB(255, 20, 167, 142);
      case "สเต็ก":
        return Colors.orange;
      case "ฟาสฟู๊ด":
        return const Color.fromARGB(255, 155, 82, 82);
      case "ก๋วยเตี๋ยว":
        return const Color.fromARGB(255, 212, 176, 208);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: getColorByType(emp[index].type),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    emp[index].name,
                    style: GoogleFonts.kodchasan(
                      textStyle: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "ประเภทอาหาร: ${emp[index].type}",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "ราคา: ${emp[index].price} บาท",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Image.asset(
                emp[index].foodpic.image,
                width: 100,
                height: 100,
              )
            ],
          ),
        );
      },
    );
  }
}