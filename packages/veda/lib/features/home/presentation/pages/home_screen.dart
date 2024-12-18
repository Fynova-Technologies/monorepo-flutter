import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:veda/config/route/paths.dart';
import 'package:veda/features/home/presentation/widgets/alert_dialog.dart';
import 'package:veda_components/veda_componenets.dart';
import 'package:veda_resources/veda_resources.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight(context) / 6),
              child: Container(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 18, vertical: screenHeight(context) / 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Picture(source: Asset.icons.menu),
                      Picture(
                        source: Asset.icons.slogo,
                        height: screenHeight(context) / 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          showMyDialog(context);
                        },
                        child: Picture(source: Asset.icons.camera),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(
                              0, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    child: TextFormField(
                      cursorColor: const Color(0xffcccccc),
                      style: textTheme(context).bodySmall!.copyWith(
                          color: const Color.fromARGB(255, 59, 45, 45)),
                      decoration: InputDecoration(
                        hintText: "Search and lookup your favorites",
                        hintStyle: textTheme(context).bodySmall!.copyWith(
                              fontWeight: FontWeight.w200,
                              fontSize: 10,
                              color: const Color(0xffcccccc),
                            ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Picture(
                            source: Asset.footer.search,
                            colorFilter: const ColorFilter.mode(
                                Color(0xffcccccc), BlendMode.modulate),
                          ),
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(
                              0, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Builder(builder: (context) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentTabIndex = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  Picture(
                                    width: currentTabIndex == 0 ? 25 : 20,
                                    height: currentTabIndex == 0 ? 25 : 20,
                                    source: Asset.header.trending,
                                    colorFilter: ColorFilter.mode(
                                        currentTabIndex == 0
                                            ? Colors.blue
                                            : Colors.grey,
                                        BlendMode.modulate),
                                  ),
                                  Text(
                                    "Trending",
                                    style:
                                        textTheme(context).bodySmall!.copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              color: currentTabIndex == 0
                                                  ? Colors.blue
                                                  : Colors.grey,
                                            ),
                                  )
                                ],
                              ),
                            );
                          }),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentTabIndex = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Picture(
                                  width: currentTabIndex == 1 ? 25 : 20,
                                  height: currentTabIndex == 1 ? 25 : 20,
                                  source: Asset.header.like,
                                  colorFilter: ColorFilter.mode(
                                      currentTabIndex == 1
                                          ? Colors.blue
                                          : Colors.grey,
                                      BlendMode.modulate),
                                ),
                                Text(
                                  "Popular",
                                  style: textTheme(context).bodySmall!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: currentTabIndex == 1
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentTabIndex = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Picture(
                                  source: Asset.header.latest,
                                  width: currentTabIndex == 2 ? 25 : 20,
                                  height: currentTabIndex == 2 ? 25 : 20,
                                  colorFilter: ColorFilter.mode(
                                      currentTabIndex == 2
                                          ? Colors.blue
                                          : Colors.grey,
                                      BlendMode.modulate),
                                ),
                                Text(
                                  "Latest",
                                  style: textTheme(context).bodySmall!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: currentTabIndex == 2
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentTabIndex = 3;
                              });
                            },
                            child: Column(
                              children: [
                                Picture(
                                  source: Asset.header.following,
                                  width: currentTabIndex == 3 ? 25 : 20,
                                  height: currentTabIndex == 3 ? 25 : 20,
                                  colorFilter: ColorFilter.mode(
                                      currentTabIndex == 3
                                          ? Colors.blue
                                          : Colors.grey,
                                      BlendMode.modulate),
                                ),
                                Text(
                                  "Following",
                                  style: textTheme(context).bodySmall!.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                        color: currentTabIndex == 3
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  currentTabIndex == 1
                      ? Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "Popular",
                                style: textTheme(context).bodyMedium!.copyWith(
                                    color: colorScheme(context).background),
                              ),
                            ),
                          ),
                        )
                      : currentTabIndex == 2
                          ? Expanded(
                              child: Container(
                                child: Center(
                                  child: Text(
                                    "Latest",
                                    style: textTheme(context)
                                        .bodyMedium!
                                        .copyWith(
                                            color: colorScheme(context)
                                                .background),
                                  ),
                                ),
                              ),
                            )
                          : currentTabIndex == 3
                              ? Expanded(
                                  child: Container(
                                    child: Center(
                                      child: Text(
                                        "Following",
                                        style: textTheme(context)
                                            .bodyMedium!
                                            .copyWith(
                                                color: colorScheme(context)
                                                    .background),
                                      ),
                                    ),
                                  ),
                                )
                              : Expanded(
                                  child: Container(
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    child: Column(
                                      children: [
                                        FeedCategory(
                                          label: "Stories",
                                          isStory: true,
                                          newsFeed: stories,
                                          noOfImages: 6,
                                        ),
                                        FeedCategory(
                                          label: "Trending",
                                          isStory: false,
                                          newsFeed: trending,
                                        ),
                                        FeedCategory(
                                          label: "Best Working",
                                          isStory: false,
                                          newsFeed: bestWorking,
                                          noOfImages: 7,
                                        ),
                                        FeedCategory(
                                          label: "Dancing",
                                          isStory: false,
                                          newsFeed: dancing,
                                        ),
                                      ],
                                    ),
                                  ),
                                ))

                  // const FeedCategory(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedCategory extends StatelessWidget {
  final bool isStory;
  final String label;
  final int noOfImages;
  final List<String> newsFeed;
  const FeedCategory(
      {super.key,
      this.isStory = false,
      required this.label,
      required this.newsFeed,
      this.noOfImages = 4});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textTheme(context).bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
        ),
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                noOfImages,
                (index) => StoryContainer(
                    isStory: isStory, index: index, newsfeed: newsFeed),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class StoryContainer extends StatelessWidget {
  final bool isStory;
  final int index;
  final List<String> newsfeed;
  const StoryContainer(
      {super.key,
      required this.index,
      this.isStory = false,
      required this.newsfeed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Paths.newsFeedScreenRoute.path, extra: newsfeed[index]);
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
            height: screenHeight(context) / 7,
            width: screenWidth(context) / 5,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                    image: AssetImage(newsfeed[index]), fit: BoxFit.fill)),
          ),
          isStory
              ? Positioned(
                  bottom: 15,
                  left: 20,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: Offset(0, 2),
                            color: Colors.white,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(newsfeed[index]),
                            fit: BoxFit.fill)),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
