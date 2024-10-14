import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ButSintoma extends StatelessWidget {
  final String imageAssetPath;
  final String feel;  
  final String textN;
  final String content;


  const ButSintoma({
    Key? key,
    required this.imageAssetPath,
    required this.feel,
    required this.textN,
    required this.content
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Sintomas(
              imageAssetPath: imageAssetPath,
              feel: feel,
              textN: textN,
              content: content,
            ),
          ),
        );
      },
    child: Container(
      width: 160,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
              color: Colors.white38,
              blurRadius: 5,
              spreadRadius: 0,
          ),
        ],
      ),
    child: Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox( //Icono
            width: 25,
            height: 50,
            child: Text(
              feel,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          //Texto
          Flexible(
            child: Text(
              textN,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 1.2, // Espaciado entre líneas,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    ),
    ),
    );
  }
}

//Contenedor sintoma
class Sintomas extends StatefulWidget {
  final String imageAssetPath;
  final String feel;
  final String textN;
  final String content;


  const Sintomas({
    super.key,
    required this.imageAssetPath,
    required this.textN,
    required this.content,
    required this.feel,
  });

  @override
  State<Sintomas> createState() =>_NewSintomaState();
}

class _NewSintomaState extends State<Sintomas> {
  double _borderRadiusMultiplier = 1;

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final maxScreenSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SintomasD(
              borderRadiusAnimationValue: (value) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  _borderRadiusMultiplier = value;
                });
              });
              },
              textN: widget.textN,
              imageAssetPath: widget.imageAssetPath,
              minExtent: topPadding + 56,
              maxExtent: maxScreenSizeHeight / 2,
              topPadding: topPadding,
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: AnimatedContainer(   //Contenedor del sintoma completa
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40 * _borderRadiusMultiplier),
                color: Colors.white,
              ),
              duration: const Duration(milliseconds: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.content),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class SintomasD extends SliverPersistentHeaderDelegate {
  final String imageAssetPath;
  final String textN;
  final double topPadding;

  final Function(double value) borderRadiusAnimationValue;

  @override
  final double maxExtent;
  @override
  final double minExtent;

  const SintomasD({
    required this.borderRadiusAnimationValue,
    required this.imageAssetPath,
    required this.textN,
    required this.maxExtent,
    required this.minExtent,
    required this.topPadding,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    final screenWidth = MediaQuery.of(context).size.width;
    const animationDuration = Duration(milliseconds: 200);

    final showCategoryDate = shrinkOffset < 100;

    final calcForTitleAnimations = (maxExtent - shrinkOffset - topPadding - 56 - 100) / 100;

    final titleAnimationValue = calcForTitleAnimations > 1.0
        ? 1.0
        : calcForTitleAnimations < 0.0
            ? 0.0
            : calcForTitleAnimations;

    final calcForTopBarAnimations = (maxExtent - shrinkOffset - topPadding - 56) / 50;

    final topBarAnimationValue = calcForTopBarAnimations > 1.0
        ? 1.0
        : calcForTopBarAnimations < 0.0
            ? 0.0
            : calcForTopBarAnimations;

    borderRadiusAnimationValue(topBarAnimationValue);

    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          imageAssetPath,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: maxExtent / 2,
            width: screenWidth,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black12,
                  Colors.black38,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: AnimatedOpacity(
            opacity: titleAnimationValue,
            duration: animationDuration,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox( //Titulo
                    width: MediaQuery.of(context).size.width - 40,
                    child: Text(
                      textN,
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: animationDuration,
                    height: showCategoryDate ? 10 : 0,
                  ),
                ],
              ),
            ),
          ),
        ),
        //Barra fija en el contenedor de la noticia completa
        Positioned(
          top: 0,
          child: AnimatedContainer(
            duration: animationDuration,
            height: 56 + topPadding,
            color: Colors.white.withOpacity(1 - topBarAnimationValue),
            width: screenWidth,
            child: Column(
              children: [
                SizedBox(
                  height: topPadding,
                ),
                Row(
                  children: [
                    AnimatedContainer(
                      duration: animationDuration,
                      width: topBarAnimationValue * 10,
                    ),
                    AnimatedCrossFade(
                      duration: animationDuration,
                      crossFadeState: topBarAnimationValue > 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      secondChild: AppRoundedButton(
                        iconData: CupertinoIcons.left_chevron,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      firstChild: AppRoundedButtonBlur(
                        iconData: CupertinoIcons.left_chevron,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: AnimatedCrossFade(
                        duration: animationDuration,
                        crossFadeState: topBarAnimationValue > 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                        secondChild: Text(
                          textN,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        firstChild: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AppRoundedButtonBlur(
                              iconData: CupertinoIcons.bookmark,
                              onTap: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            AppRoundedButtonBlur(
                              iconData: Icons.more_horiz,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: animationDuration,
                      width: topBarAnimationValue * 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;

  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration => OverScrollHeaderStretchConfiguration();
}

//Botones de la barra fija del contenedor de la noticia completa
class AppRoundedButton extends StatelessWidget {
  final Function()? onTap;
  final IconData iconData;
  const AppRoundedButton({super.key, this.onTap, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(56),
      child: InkWell(
        borderRadius: BorderRadius.circular(56),
        onTap: onTap,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Icon(
            iconData,
          ),
        ),
      ),
    );
  }
}

class AppRoundedButtonBlur extends StatelessWidget {
  final Function()? onTap;
  final IconData iconData;
  const AppRoundedButtonBlur({super.key, this.onTap, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white10,
      borderRadius: BorderRadius.circular(56),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(56),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(56),
            onTap: onTap,
            child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(
                iconData,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}