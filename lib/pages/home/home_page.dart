import 'package:flutter/material.dart';
import 'package:my_portfolio/example/projects.dart';
// import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/responsive.dart';
// import 'package:my_portfolio/widgets/cards/project_card.dart';
import '../../widgets/cards/project_card.dart';
import '../../widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.share,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          onPressed: () {
            print('Button Pressed');
          }),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(
                    userName: 'Andrew V',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Projects',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Responsive(
                      mobile: mobileTabletBuilder(350),
                      tablet: mobileTabletBuilder(450),
                      desktop: desktopBuilder())
                  // SizedBox(
                  //   height: 350,
                  //   child: ListView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: projects.length,
                  //     itemBuilder: (context, index) {
                  //       return ProjectCard(project: projects[index]);
                  //     },
                  // children: const [
                  //   ProjectCard(
                  //     projectName: 'Software Analytics',
                  //     projectYear: 2022,
                  //     projectDesc:
                  //         """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum""",
                  //     projectImg:
                  //         'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  //   ),
                  //   ProjectCard(
                  //     projectName: 'Software Analytics',
                  //     projectYear: 2022,
                  //     projectDesc:
                  //         """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum""",
                  //     projectImg:
                  //         'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  //   ),
                  //   ProjectCard(
                  //     projectName: 'Software Analytics',
                  //     projectYear: 2022,
                  //     projectDesc:
                  //         """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum""",
                  //     projectImg:
                  //         'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  //   ),
                  //   ProjectCard(
                  //     projectName: 'Software Analytics',
                  //     projectYear: 2022,
                  //     projectDesc:
                  //         """Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum""",
                  //     projectImg:
                  //         'https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
                  //   ),
                  // ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(project: projects[index]);
        },
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectCard(
          project: projects[index],
        );
      },
    );
  }
}
