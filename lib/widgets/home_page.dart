import 'package:flutter/material.dart';
import 'package:flutter_scroller_task_2/data/model/app_bar_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  final int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    List<TopModel> topModel = TopModel.topModel;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 220,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: topModel.length,
                  itemBuilder: (context, index) {
                    final datas = topModel[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: datas.boxColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 25),
                                  child: Text(datas.title,
                                      style: TextStyle(
                                          backgroundColor:
                                              datas.titleBackgroundColor,
                                          color: datas.titleColor,
                                          fontSize: 16)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 25, top: 25),
                                child: Icon(
                                  Icons.bookmark,
                                  color: datas.iconColor,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 25),
                            child: Text(
                              datas.subtitle,
                              style: TextStyle(
                                  color: datas.textColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 40, left: 25),
                                  child: Text(datas.author,
                                      style: TextStyle(
                                          color: datas.textColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, right: 25),
                                child: Text(datas.readTime,
                                    style: TextStyle(
                                        color: datas.textColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
