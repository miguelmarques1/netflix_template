import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:netflix_template/src/core/helpers/content.dart';
import 'package:netflix_template/src/core/styles/colors_app.dart';
import 'package:netflix_template/src/core/styles/text_styles_app.dart';
import 'package:netflix_template/src/core/widgets/app_counter.dart';
import 'package:netflix_template/src/core/widgets/app_logo.dart';
import 'package:netflix_template/src/core/widgets/app_button.dart';
import 'package:netflix_template/src/core/widgets/app_content.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  List<Content> contents = [
    Content('assets/images/devices.jpeg', 'Watch on any device', 'Stream on your phone, tablet, laptop, and TV without paying more.'),
    Content('assets/images/download.jpeg', '3, 2, 1... Download!', 'Downloads available on all plans except Basic with ads.'),
    Content('assets/images/no_contracts.jpeg', 'No pesky contracts', 'Join today, cancel anytime.'),
    Content(null, 'How do I watch?', 'Members that subscribe to Netflix can watch here in the app.')
  ];
  final _pageController = PageController(
    initialPage: 0
  );
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Stack(
            children: [
              PageView.builder(
                controller: _pageController,
                itemCount: 4,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: index == 3 ? const DecorationImage(
                        image: AssetImage('assets/images/cartaz.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.softLight)
                      ) : null,
                    ),
                    child: Center(
                      child: AppContent(
                        subtitle: contents[index].subtitle, 
                        title: contents[index].title, 
                        image: contents[index].image
                      ),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.topLeft,
                child: AppLogo(
                  size: MediaQuery.of(context).size.height * .09,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                    height: MediaQuery.of(context).size.height * .09,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Center(
                      child: GestureDetector(
                        child: Text('Help',
                          style: context.textStyles.primary.copyWith(
                            color: Colors.white
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.fromLTRB(4.0, 4.0, MediaQuery.of(context).size.width * .15, 4.0),
                    height: MediaQuery.of(context).size.height * .09,
                    width: MediaQuery.of(context).size.width * .2,
                    child: Center(
                      child: GestureDetector(
                        child: Text('Privacy',
                          style: context.textStyles.primary.copyWith(
                            color: Colors.white
                          ),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppCounter(
                  currentPage: currentPage,
                  itemCount: 4,
                  size: 6,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppButton(
                  text: 'SIGN IN',
                  onPressed: () {
                    Modular.to.pushNamed('/login');
                  },
                )
              )
            ],
          )
      );
  }
}