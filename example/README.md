
# flutter_responsive_scale

flutter_responsive_scale is an package that is used to build responsive UI using responsive scale.

![](C:/Users/Bhardwaj/Downloads/steppr_list_view.gif)

## Motivation
Main motivation behind this package was one of my project feature is required a responsive UI and simple device query for different platform.
## Authors

- [@subhashDev11](https://github.com/subhashDev11)


## Demo

![steppr_list_view](https://user-images.githubusercontent.com/70679949/202535370-0298b44f-7fc4-4dcd-950f-94d79abed26e.gif)


## Features

- Responsive UI
- Simple UI Utils
- Easy to use
- Responsive Query option - fontScale, yScale and width scale


## Documentation

## Usage/Examples

```dart
import 'package:flutter/material.dart';
import 'package:flutter_responsive_scale/flutter_responsive_scale.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScale(
      config: const ResponsiveScaleConfig(),
      child: MaterialApp(
        title: 'Responsive scale demo',
        theme: ThemeData.dark(),
        home: const ScaleTestPage(
          title: 'Hi , Flutter dev - ',
        ),
      ),
    );
  }
}

class ScaleTestPage extends StatelessWidget {
  const ScaleTestPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: context.scale(7),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: context.scale(16)),
              Text(
                'Designed at ${ResponsiveScale.of(context).width} x ${ResponsiveScale.of(context).height}',
                style: TextStyle(
                  fontSize: context.fontScale(16),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.scale(16),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  bottom: context.scaleY(10),
                ),
                child: Text(
                  'With scale box',
                  style: TextStyle(
                    fontSize: context.fontScale(14),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              RenderBoxes(
                size: Size.square(
                  context.scale(100),
                ),
                color: Colors.red,
                label: const ["100dp", "100dp"],
              ),
              SizedBox(
                height: context.scale(16),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(
                  bottom: context.scaleY(10),
                ),
                child: Text(
                  'Without scale box',
                  style: TextStyle(
                    fontSize: context.fontScale(14),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const RenderBoxes(
                size: Size.square(
                  100,
                ),
                color: Colors.blue,
                label: ["100", "100"],
              ),
              SizedBox(
                height: context.scale(16),
              ),
              const Text(
                'The text font size is fixed at 24',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.scale(16),
              ),
              Text(
                'The text font size is flexible at 24',
                style: TextStyle(
                  fontSize: context.fontScale(24),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: context.scale(48),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RenderBoxes extends StatelessWidget {
  const RenderBoxes({required this.size, this.color, required this.label, Key? key}) : super(key: key);

  final Size size;
  final Color? color;
  final List<String> label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (_) => Container(
          width: size.width,
          height: size.height,
          color: color,
          child: Center(
            child: Text(
              label.join("\nx\n"),
              style: TextStyle(
                fontSize: context.fontScale(14),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

```

## ???? About Me
I'm a flutter developer...


## ???? Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://subhashdev121.github.io/subhash/#/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/subhashcs)
[![medium](https://img.shields.io/badge/medium-000?style=for-the-badge&logo=medium&logoColor=white)](https://medium.com/@subhashchandrashukla)

![Logo](https://i.ibb.co/2szbbHF/code-xposer.png)


## License

[MIT](https://choosealicense.com/licenses/mit/)