import 'package:felagi/Screens/option.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboard extends StatelessWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 90, 5, 0),
          child: IntroductionScreen(
              pages: [
                PageViewModel(
                    decoration: PageDecoration(
                        titleTextStyle: TextStyle(
                            color: Colors.teal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        bodyTextStyle:
                            TextStyle(fontSize: 15, color: Colors.blueGrey)),
                    title: 'Build Your CV',
                    body:
                        'Help you to Enhance & organize your profile. Create professional resumes, CV and bio-data online for free, in minutes.',
                    image: buildimage('assets/cvlogo.png')),
                PageViewModel(
                    decoration: PageDecoration(
                        titleTextStyle: TextStyle(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        bodyTextStyle:
                            TextStyle(fontSize: 15, color: Colors.blueGrey)),
                    title: 'Job search',
                    body:
                        'With Felagi, you can search millions of jobs online to find the next step in your career. With tools for job search, resumes, company reviews and more..',
                    image: buildimage('assets/job-hunt.png')),
                PageViewModel(
                    decoration: PageDecoration(
                        titleTextStyle: TextStyle(
                            color: Colors.amber[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        bodyTextStyle:
                            TextStyle(fontSize: 15, color: Colors.blueGrey)),
                    footer: btn(),
                    title: 'Negotiate Like a Pro!',
                    body:
                        'We have been working hard to make changes behind the scenes and to deliver you a better experience - all so you can more easily find the right fit.',
                    image: buildimage('assets/pm.png')),
              ],
              done: Text("Done"),
              onDone: () => goToHome(context),
              showSkipButton: true,
              showDoneButton: true,
              skip: Text(
                "Skip",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              next: Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
                size: 20,
              ),
              showNextButton: true,
              dotsDecorator: getDotsDecoration()),
        )),
      );
  void goToHome(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => Option()));

  Widget buildimage(String path) => Center(
        child: Image.asset(
          path,
          // width: 350,
        ),
      );
  ElevatedButton btn() =>
      ElevatedButton(onPressed: () {}, child: Text("Let Get Started"));
  DotsDecorator getDotsDecoration() => DotsDecorator(
      color: Colors.grey,
      size: Size(10, 10),
      activeSize: Size(22, 10),
      activeColor: Colors.teal,
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
}
