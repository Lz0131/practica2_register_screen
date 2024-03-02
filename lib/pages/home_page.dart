import 'package:flutter/material.dart';
import 'package:practica2_register_screen/models/data.dart';
import 'package:practica2_register_screen/pages/details_shoes.dart';
import 'package:practica2_register_screen/widgets/custom_app_bar.dart';
import 'package:practica2_register_screen/widgets/custom_bottom_bar.dart';

class HomePageShoes extends StatefulWidget {
  const HomePageShoes({Key? key}) : super(key: key);

  @override
  State<HomePageShoes> createState() => _HomePageShoesState();
}

class _HomePageShoesState extends State<HomePageShoes> {
  final _pageController = PageController(viewportFraction: 0.75);

  double _currentPage = 0.0;
  double indexPage = 0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
      if (_currentPage >= 0 && _currentPage < 0.7) {
        indexPage = 0;
      } else if (_currentPage > 0.7 && _currentPage < 1.7) {
        indexPage = 1;
      } else if (_currentPage > 1.7 && _currentPage < 2.7) {
        indexPage = 2;
      }
    });
  }

  final listShoesList = listShoes.toList();
  Color getColor() {
    late Color color;
    if (_currentPage >= 0 && _currentPage < 0.7) {
      color = listShoesList[0].listImage[0].color;
    } else if (_currentPage > 0.7 && _currentPage < 1.7) {
      color = listShoesList[1].listImage[1].color;
    } else if (_currentPage > 1.7 && _currentPage < 2.7) {
      color = listShoesList[2].listImage[2].color;
    }
    return color;
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: List.generate(
                  listCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                      listCategory[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: index == indexPage ? getColor() : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: listShoes.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  final shoes = listShoesList[index];
                  final listTitle = shoes.category.split(' ');
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return DetailShoesPage(shoes: shoes);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: index == indexPage ? 30 : 60.0),
                      child: Transform.translate(
                        offset: Offset(index == indexPage ? 0 : 20, 0),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin: EdgeInsets.only(
                              top: index == indexPage ? 30 : 50,
                              bottom: 30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.white,
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 40,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        shoes.category,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        shoes.name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        shoes.price,
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      FittedBox(
                                        child: Text(
                                          '$listTitle',
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: constraints.maxHeight * 0.1,
                                  left: -constraints.maxWidth * 0.5,
                                  right: constraints.maxWidth * 0.0,
                                  bottom: -constraints.maxHeight * 0.4,
                                  child: Hero(
                                    tag: shoes.name,
                                    child: Image(
                                      image: AssetImage(
                                        shoes.listImage[0].image,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Material(
                                    color: shoes.listImage[0].color,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(36),
                                      bottomRight: Radius.circular(36),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: InkWell(
                                      onTap: () {},
                                      child: const SizedBox(
                                        height: 80,
                                        width: 80,
                                        child: Icon(
                                          Icons.add,
                                          size: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 90,
            padding: const EdgeInsets.all(15),
            child: CustomBottonBar(color: getColor()),
          )
        ],
      ),
    );
  }
}
