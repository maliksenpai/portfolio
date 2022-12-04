import 'package:portfolio/model/certificate.dart';
import 'package:portfolio/model/experience.dart';
import 'package:portfolio/model/language.dart';
import 'package:portfolio/model/project.dart';

const String title = "Portfolio Page";
const String name = "Enes Malik Acun";
const String role = "Mobile/Frontend Developer";
const String personDescription =
    "Developing software has been a pleasure for me for a long time. I try myself in different fields and try to gain experience. I have the most experience in frontend and mobile development. However, I also have a little backend experience. React and Flutter are my favorite technologies. Welcome to my page";
const String githubLink = "https://github.com/maliksenpai";
const String linkedInLink =
    "https://www.linkedin.com/in/enes-malik-acun-13852514b/";
const String emailAddress = "e.acunn@hotmail.com";
List<Experience> experiences = [
  Experience(
    companyName: 'OBSS',
    description:
        'I am working on OBSS as a front end developer. During this process, I received training and earned several certificates in this field. I\'ve worked on projects with React and Nextjs while working on OBSS. I spend most of my time working with javascript',
    startTime: DateTime(2021, 12, 1),
    endTime: DateTime.now(),
  ),
  Experience(
    companyName: 'Alchemy Smart',
    description:
        'I worked both as a frontend developer and as a mobile developer in Alchemy Smart. During this period, I worked in 1 defense industry project and 1 IoT project. While working here, I mostly used Java and Flutter. Although my main field is frontend but I also helped with backend development.',
    startTime: DateTime(2021, 2, 15),
    endTime: DateTime(2021, 11, 21),
  ),
  Experience(
    companyName: 'Neytek Yazılım',
    description:
        'I worked as a mobile developer in Neytek Software. I did the application development with Kotlin language. However, with the cancellation of the project, I quit my job in a short time.',
    startTime: DateTime(2020, 10, 1),
    endTime: DateTime(2020, 11, 1),
  ),
  Experience(
    companyName: 'Mobsmile Ltd (Intership)',
    description:
        'In this internship, I worked on mobile development. I learned the intricacies of Android development and added a lot to myself in this field. I also learned a lot about Material UI.',
    startTime: DateTime(2019, 8, 1),
    endTime: DateTime(2019, 9, 2),
  ),
  Experience(
    companyName: 'Visipurs',
    description:
        'My first job and project. We started as a startup project and I mostly worked as a frontend developer in this project. However, with the cancellation of the project, I quit my job.',
    startTime: DateTime(2018, 10, 1),
    endTime: DateTime(2019, 1, 1),
  ),
];

List<Project> projects = [
  Project(
    projectName: 'Aselsan Project',
    projectDescription:
    '''I'm working for Aselsan project as Frontend Developer since 09/2022''',
    projectUrl: '',
    projectImageUrl: "assets/images/aselsan.png",
  ),
  Project(
    projectName: 'Front-End Developer in Defense Industry Project',
    projectDescription: 'I worked for Aselsan project as Frontend Developer. (02/2021 - 11/2021)',
    projectUrl: '',
    projectImageUrl: "assets/images/aselsan.png",
  ),
  Project(
    projectName: 'DETSIS',
    projectDescription:
        '''I worked on DETSIS as frontend developer. In this project I took charge refactor about project's systematic and UI. The data in the DETSIS are defined in the system by the relevant public institutions and organizations, and the relevant institutions and organizations are responsible for the accuracy and up-to-dateness of the data.''',
    projectUrl: 'https://detsis.gov.tr/',
    projectImageUrl: "assets/images/detsis.png",
  ),
  Project(
    projectName: 'React Validatable Form',
    projectDescription:
        'Form that can be used in React and similar projects (React Native, Nextjs...). It is an open source project that provides control of processes.',
    projectUrl: 'https://github.com/obss/react-validatable-form',
    projectImageUrl: "assets/images/rvf.png",
  ),
  Project(
    projectName: 'Kards Project Management (Open Source Project)',
    projectDescription:
        'I helped Kards project for vanilla web development in my free times. A simple cards-based kanban board web app heavily inspired by Trello, the UI is also pretty similar to that of Trello. You can create upto 512 unique kanban boards with different names, which holds cards. Each card can hold an unlimited number of items/tasks each. All items support drag and drop between cards as well as within the same card to reoder. All data is stored locally on the computer by the browser. This whole project was written in HTML, CSS, and pure vanilla JavaScript with no external dependencies',
    projectUrl: 'https://github.com/maliksenpai/kards',
    projectImageUrl: "assets/images/kards.png",
  ),
  Project(
    projectName: 'Flutter Collapsible Sidebar (Open Source Project)',
    projectDescription:
        'I helped Flutter Collapsible Sidebar project for Flutter in my free times. A collapsible sidebar for Flutter apps implementing the Material Design',
    projectUrl: 'https://github.com/maliksenpai/flutter_collapsible_sidebar',
    projectImageUrl: "assets/images/fcs.png",
  ),
  Project(
    projectName:
        'Language Development Application with Kotlin With the Help of Firebase and Topic Analysis with Machine Learning',
    projectDescription:
        'In the android language development application made with Kotlin, exercises were prepared for activities such as writing, translation and speaking. And the user can take a photo and detect the text in the photo with the help of Firebase and translate it into the language he wants. In addition, these articles are stored in the database. An application that detects which areas the users using the application are interested in with the Bayesian method.',
    projectUrl: 'https://github.com/maliksenpai/bitirme',
    projectImageUrl: "assets/images/graduate_project.png",
  ),
  Project(
    projectName: 'Flutter Gamemate Finder App',
    projectDescription:
        'Application developed with Flutter and using firebase services as backend. In it, auth operations have been made, pagination and filter-style database operations. It was built with and the code was developed for flutter as cleanly as possible. In addition, every operating system, which is one of the biggest shortcomings in hybrid languages, a suitable interface is intended to solve the problem and a large amount of this it has solved the problem.',
    projectUrl: 'https://github.com/maliksenpai/findgamemates',
    projectImageUrl: "assets/images/gamemate.png",
  ),
  Project(
    projectName: 'Youtube Clone',
    projectDescription:
        'I made a project with React that has similar functionality to Youtube. I used Firebase as backend in this project. The project includes many features such as Auth management, video playback, video uploading, commenting and liking videos, subscribing to channels and past videos. In addition, technologies such as Redux, Pagination, Responsive Design, Redux Toolkit, which are important issues of React, were also used.',
    projectUrl: 'https://github.com/maliksenpai/youtube-clone',
    projectImageUrl: "assets/images/youtube.png",
  ),
  Project(
    projectName: 'React Real World Project',
    projectDescription:
        'A Medium-like app that works with a ready-made Backend developed with React. Within the application, new posts can be created, posts can be edited, comments can be added, profile can be edited and the structure of the page changes according to simple auth operations.',
    projectUrl: 'https://github.com/maliksenpai/real-world-project',
    projectImageUrl: "assets/images/realworld.png",
  ),
  Project(
    projectName: 'Iot Application with Flutter',
    projectDescription:
        'I worked on the design and development of an iot application made with Flutter.',
    projectUrl: '',
    projectImageUrl: "assets/images/iot_flutter.png",
  ),
  Project(
    projectName: 'React and React Native Messaging App',
    projectDescription:
        'It is a messaging application that can work on React and react native together and uses firebase services as a backend, with simple-level operations. React-Native Link: https://github.com/maliksenpai/ReactNativeChat ReactJs Link: https://github.com/maliksenpai/ReactJsChat',
    projectUrl: 'https://github.com/maliksenpai/ReactNativeChat',
    projectImageUrl: "assets/images/react_chat.png",
  ),
  Project(
    projectName: 'E-Commerce Application with Flutter',
    projectDescription:
        'E-commerce application developed with Flutter. Firebase Realtime Database is used for the back-end part of this application. The application has been developed with the Getx state library and has a clean code structure.',
    projectUrl: 'https://github.com/maliksenpai/flutter_e_commerce',
    projectImageUrl: "assets/images/phone-image.png",
  ),
  Project(
    projectName: 'Paint App',
    projectDescription:
        'It is a drawing application made with Flutter. There are features such as arrangement of layers, different brush types and sizes in the application. However, it was suspended due to optimization problems in the project.',
    projectUrl: 'https://github.com/maliksenpai/PaintApp',
    projectImageUrl: "assets/images/paint.png",
  ),
  Project(
    projectName: 'MediaPlayerTube',
    projectDescription:
        'In this application developed with Flutter, you can both listen to music and watch videos. Both are developed for android and ios. In addition, Provider is used in the application.',
    projectUrl: 'https://github.com/maliksenpai/media_player_tube',
    projectImageUrl: "assets/images/media_player.png",
  ),
  Project(
    projectName: 'Kotlin Animlist',
    projectDescription:
        'It is an android application developed with Kotlin language. Data from an API is listed in this application. This data contains anime information and these animes can be added to favorites. These favorites are stored in the database inside the phone. The application is as clean as possible and the most important android development technologies are used.',
    projectUrl: 'https://github.com/maliksenpai/AnimList',
    projectImageUrl: "assets/images/animlist.png",
  ),
  Project(
    projectName: 'React E-Commerce',
    projectDescription:
        'In this application developed with React, the data held by Firebase is listed. These items can be added to the cart and purchased experimentally. In addition, auth transactions were made with Firebase.',
    projectUrl: 'https://github.com/maliksenpai/firebase-e-commerce',
    projectImageUrl: "assets/images/react_e_commerce.png",
  ),
  Project(
    projectName: '5e Turkish',
    projectDescription:
        'It is an application made to show the rules of the 5e game and the information about the game to the players comfortably. Data is retrieved from JSONs within the application and displayed to the user in a convenient way. The application was made with Kotlin.',
    projectUrl: 'https://github.com/maliksenpai/5eCeviri',
    projectImageUrl: "assets/images/5eturkish.png",
  ),
  Project(
    projectName: 'React Native Galery App',
    projectDescription:
        'It is a React Native application developed with Javascript. In this application, the information of old works of art is listed with an API and these works of art can be examined in detail. In addition, works of art can be added to favorites and stored in the database in the phone itself. In addition, there are pagination and filter search in the application.',
    projectUrl: 'https://github.com/maliksenpai/FindTeamMate',
    projectImageUrl: "assets/images/galery_app.png",
  ),
  Project(
    projectName: 'Kotlin Start-Up Application',
    projectDescription:
        'Android application made to create a start-up team with Kotlin or to find new people for the team. Backend part is made with Firebase.',
    projectUrl: 'https://github.com/maliksenpai/FindTeamMate',
    projectImageUrl: "assets/images/kotlin_startup.png",
  ),
];

Map<String, Language> languages = {
  "Flutter": Language(
    level: 9.0,
    description:
        'I have about 2.5 years of experience with Flutter. I have developed projects both professionally and individually. I also help people on Stackoverflow. I developed a lot of projects with Flutter because projects can be developed very quickly. I have a lot of experience with widely used libraries such as Getx, Bloc, Dio. That\'s why I can quickly adapt to most projects.',
  ),
  "Javascript-React": Language(
    level: 9.5,
    description:
        'I have about 1.5 years of experience with Javascript and React. I first started working with React in 2018, but then I took a break. In 2021, I turned to this field again. I have experience not only with React but also with React Native and Nextjs. I have experience with Redux and Context Api.',
  ),
  "Kotlin-Android": Language(
    level: 7.0,
    description:
        'I have about 2 years experience with Kotlin. I\'ve only used Kotlin for android development. I like Kotlin very much because it is very compatible to develop android with Kotlin. I have developed many android projects with Kotlin so far. Also, I did a part of my graduation project at my university with kotlin.',
  ),
  "Java": Language(
      level: 7.0,
      description:
          'I have both android development and backend development experience with Java. I first started with android development, but then I switched to Kotlin. But then I started using java for backend. I don\'t have much experience for backend, but I was able to adapt quickly by using my java knowledge on android here.'),
  "MySQL": Language(
      level: 5.0,
      description:
          'I don\'t have much experience with MySQL, but I have general knowledge. I don\'t have much experience with MySQL as I do most of my individual projects in a NoSQL build. However, as a front-end developer, I also worked on this topic as I needed some knowledge'),
  "C#": Language(
      level: 5.0,
      description:
          'I only used C# for game development. I don\'t have much experience in this field, but I have developed a few games as a hobby.'),
};

List<Certificate> certificates = [
  Certificate(
      name: "Front-End Web Development with React - Coursera",
      date: DateTime(2022, 1, 1),
      certificateUrl:
          "https://coursera.org/share/a1b8f3e26acf76846c83e9fbe3776824",
      imageLink: "assets/images/react_certificate.png"),
  Certificate(
      name: "Front-End Web UI Frameworks and Tools: Bootstrap 4 - Coursera",
      date: DateTime(2021, 12, 1),
      certificateUrl:
          "https://www.coursera.org/account/accomplishments/verify/YTABBF3G98YU",
      imageLink: "assets/images/bootstrap_certificate.png"),
  Certificate(
      name: "HackerRank CSS Certificate - HackerRank",
      date: DateTime(2021, 12, 1),
      certificateUrl: "https://www.hackerrank.com/certificates/7d6ca35ab0b8",
      imageLink: "assets/images/css_certificate.png"),
  Certificate(
      name: "HackerRank JavaScript (Intermediate) Certificate - HackerRank",
      date: DateTime(2021, 12, 1),
      certificateUrl: "https://www.hackerrank.com/certificates/83186c0ba4ef",
      imageLink: "assets/images/js_intermediate_certificate.png"),
  Certificate(
      name: "HackerRank JavaScript (Basic) Certificate - HackerRank",
      date: DateTime(2021, 12, 1),
      certificateUrl: "https://www.hackerrank.com/certificates/29d90349a417",
      imageLink: "assets/images/js_basic_certificate.png"),
];
