enum Foodpic {
  menu1(image: "assets/images/1.png"),
  menu2(image: "assets/images/2.png"),
  menu3(image: "assets/images/3.png"),
  menu4(image: "assets/images/4.png"),
  menu5(image: "assets/images/5.png"),
  menu6(image: "assets/images/6.png"),
  menu7(image: "assets/images/7.png");

  const Foodpic ({required this.image});
  final String image;
}
  

class FoodMenu {
  FoodMenu({
      required this.name,
      required this.type,
      required this.component,
      required this.price,
      required this.foodpic,
  });

  String name;
  String type;
  String component;
  int price;
  Foodpic foodpic;
}

List<FoodMenu> emp = [
  FoodMenu(
      name: "สุกี้ผักรวม",
      type: "ต้ม",
      component: "ไข่ไก่,ผักสด",
      price: 299,
      foodpic: Foodpic.menu1,
    ),
  FoodMenu(
      name: "สลัดผัก",
      type: "สุขภาพ",
      component: "แครอท,มะเขือเทศ,ผักรวม",
      price: 159,
      foodpic: Foodpic.menu2,
    ),
  FoodMenu(
      name: "สเต็กหมู",
      type: "สเต็ก",
      component: "สะโพกหมู,เรดโฮก,ผัก",
      price: 299,
      foodpic: Foodpic.menu3,
    ),
  FoodMenu(
      name: "สเต็กเนื้อ",
      type: "สเต็ก",
      component: "สันคอวัว,ไข่ดาว,เบคอน",
      price: 359,
      foodpic: Foodpic.menu4,
    ),
  FoodMenu(
      name: "แฮมเบอร์เกอร์",
      type: "ฟาสฟู๊ด",
      component: "ขนมฟัง,หมูบด,ชีส",
      price: 189,
      foodpic: Foodpic.menu5,
    ),
  FoodMenu(
      name: "พิซซ่า",
      type: "ฟาสฟู๊ด",
      component: "แป้งพิซซ่า,เบคอน,พริก",
      price: 139,
      foodpic: Foodpic.menu6,
    ),
  FoodMenu(
      name: "ก๋วยเตี๋ยวต้มยำ",
      type: "ก๋วยเตี๋ยว",
      component: "เส้น,ไข่ต้ม,ลูกชิ้น,หมูสไลด์",
      price: 88,
      foodpic: Foodpic.menu7,
    ),
  ];