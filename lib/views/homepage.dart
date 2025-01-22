import 'package:cleanui/constants/color_const.dart';
import 'package:cleanui/constants/image_const.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> optionsList = [
    {
      'a': 'The peace in the early mornings',
    },
    {
      'b': 'The magical golden hours',
    },
    {
      'c': 'Wind-down time after dinners',
    },
    {
      'd': 'The serenity past midnight',
    },
  ];

  Map<String, String>? selectedOption;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.9),
                    ],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                // blendMode: BlendMode.dstIn,
                blendMode: BlendMode.srcOver,
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: FittedBox(
                    child: Image.asset(
                      ImageConst.background,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '“Mine is definitely the peace in the morning.”',
                style: TextStyle(
                  fontSize: 12,
                  color: ColorConst.primaryLight,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                itemCount: optionsList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  mainAxisExtent: 75.0,
                ),
                itemBuilder: (context, index) {
                  return Center(
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            width: 200.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: ColorConst.gridCardColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      ),
                                      shape: BoxShape.circle),
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    optionsList[index]
                                        .entries
                                        .first
                                        .key
                                        .toString()
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: ColorConst.gridCardColorText,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Flexible(
                                  child: Text(
                                    optionsList[index].entries.first.value,
                                    maxLines: 3,
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ColorConst.gridCardColorText,
                                        height: 1.3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pick your option.\nSee who has a similar mind.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: WebsafeSvg.asset(
                            ImageConst.microphone,
                            height: 60,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: WebsafeSvg.asset(
                            ImageConst.nextbutton,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: ColorConst.primaryLight,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConst.primaryLight,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        WebsafeSvg.asset(
                          ImageConst.clock,
                          height: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '22h 00m',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Row(
                      children: [
                        WebsafeSvg.asset(
                          ImageConst.person,
                          height: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '103',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 470,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(ImageConst.joey),
                    radius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Angelina, 28',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      FittedBox(
                        child: Text(
                          'What is your favorite time\nof the day?',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
