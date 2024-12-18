import 'package:flutter/material.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class NewsFeedScreen extends StatefulWidget {
  final String imageBackground;
  const NewsFeedScreen({super.key, required this.imageBackground});

  @override
  State<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends State<NewsFeedScreen> {
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        // backgroundColor: Colors.black12,
        // bottomNavigationBar: SizedBox(
        //   height: screenHeight(context) / 15,
        //   child: BottomNavigationBar(
        //     showSelectedLabels: false,
        //     showUnselectedLabels: false,
        //     items: <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //         icon: Picture(
        //           source: Asset.footer.home,
        //           height: 14,
        //           fit: BoxFit.fill,
        //         ),
        //         label: '',
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Picture(
        //           source: Asset.footer.search,
        //           height: 14,
        //         ),
        //         label: '',
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Picture(
        //           source: Asset.footer.add,
        //           height: 16,
        //         ),
        //         label: '',
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Picture(
        //           source: Asset.footer.chat,
        //           height: 16,
        //         ),
        //         label: '',
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //       ),
        //       BottomNavigationBarItem(
        //         icon: Picture(
        //           source: Asset.footer.profile,
        //           height: 16,
        //         ),
        //         label: '',
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //       )
        //     ],
        //     currentIndex: _selectedIndex,
        //     selectedItemColor: Colors.amber[800],
        //     onTap: _onItemTapped,
        //   ),
        // ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageBackground),
                  fit: BoxFit.fitHeight)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: screenHeight(context) / 8,
                    top: screenHeight(context) / 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Following'),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.white,
                      height: 30,
                      width: 1,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('For You')
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    margin: EdgeInsets.only(
                        top: screenHeight(context) / 2.2, right: 24),
                    // color: Colors.amber,
                    // width: screenWidth(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Picture(source: Asset.icons.heart),
                        const Text('95.6k'),
                        const SizedBox(
                          height: 35,
                        ),
                        Picture(source: Asset.icons.commentss),
                        const Text('95.6k'),
                        const SizedBox(
                          height: 35,
                        ),
                        Picture(source: Asset.icons.share),
                        const Text('1k')
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: RichText(
                  text: TextSpan(
                    text: '@lana_love123\n',
                    style: textTheme(context).bodyMedium,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Whats your favourite song?',
                        style: textTheme(context).displaySmall!.copyWith(
                            fontWeight: FontWeight.w200, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
