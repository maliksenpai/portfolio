import 'package:portfolio/model/experience.dart';
import 'package:portfolio/model/project.dart';

const String title = "Portfolio Page";
const String name = "Name";
const String role = "Role";
const String personDescription = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia. Curabitur erat erat, suscipit ac aliquam vel, iaculis eget nibh. Curabitur semper, augue id interdum vulputate, ipsum elit accumsan nisi, at blandit velit urna nec massa. In auctor porta elementum. Vestibulum felis tortor, varius at quam ut, suscipit feugiat est. Proin in malesuada enim, ut congue nunc. Proin gravida lacus nec euismod venenatis. Etiam a metus non arcu maximus vestibulum. Morbi a dolor id erat facilisis suscipit. Praesent malesuada auctor libero, sit amet pharetra nibh.";
const String githubLink = "https://github.com/maliksenpai";
const String linkedInLink = "https://www.linkedin.com/in/enes-malik-acun-13852514b/";
const String emailAddress = "example@example.com";
List<Experience> experiences = [
  Experience(
    companyName: 'Compoany name 1',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia. Curabitur erat erat, suscipit ac aliquam vel, iaculis eget nibh. Curabitur semper, augue id interdum vulputate, ipsum elit accumsan nisi, at blandit velit urna nec massa. In auctor porta elementum. Vestibulum felis tortor, varius at quam ut, suscipit feugiat est. Proin in malesuada enim, ut congue nunc. Proin gravida lacus nec euismod venenatis. Etiam a metus non arcu maximus vestibulum. Morbi a dolor id erat facilisis suscipit. Praesent malesuada auctor libero, sit amet pharetra nibh.',
    startTime: DateTime(2017, 2, 10),
    endTime: DateTime(2018, 1, 12),
  ),
  Experience(
    companyName: 'Compoany name 2',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia. Curabitur erat erat, suscipit ac aliquam vel, iaculis eget nibh. Curabitur semper, augue id interdum vulputate, ipsum elit accumsan nisi, at blandit velit urna nec massa. In auctor porta elementum. Vestibulum felis tortor, varius at quam ut, suscipit feugiat est. Proin in malesuada enim, ut congue nunc. Proin gravida lacus nec euismod venenatis. Etiam a metus non arcu maximus vestibulum. Morbi a dolor id erat facilisis suscipit. Praesent malesuada auctor libero, sit amet pharetra nibh.',
    startTime: DateTime(2018, 2, 1),
    endTime: DateTime(2018, 4, 1),
  ),
  Experience(
    companyName: 'Compoany name 3',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia. Curabitur erat erat, suscipit ac aliquam vel, iaculis eget nibh. Curabitur semper, augue id interdum vulputate, ipsum elit accumsan nisi, at blandit velit urna nec massa. In auctor porta elementum. Vestibulum felis tortor, varius at quam ut, suscipit feugiat est. Proin in malesuada enim, ut congue nunc. Proin gravida lacus nec euismod venenatis. Etiam a metus non arcu maximus vestibulum. Morbi a dolor id erat facilisis suscipit. Praesent malesuada auctor libero, sit amet pharetra nibh.',
    startTime: DateTime(2018, 4, 5),
    endTime: DateTime(2020, 1, 1),
  ),
  Experience(
    companyName: 'Compoany name 4',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia. Curabitur erat erat, suscipit ac aliquam vel, iaculis eget nibh. Curabitur semper, augue id interdum vulputate, ipsum elit accumsan nisi, at blandit velit urna nec massa. In auctor porta elementum. Vestibulum felis tortor, varius at quam ut, suscipit feugiat est. Proin in malesuada enim, ut congue nunc. Proin gravida lacus nec euismod venenatis. Etiam a metus non arcu maximus vestibulum. Morbi a dolor id erat facilisis suscipit. Praesent malesuada auctor libero, sit amet pharetra nibh.',
    startTime: DateTime(2020, 1, 5),
    endTime: DateTime(2022, 5, 22),
  ),
];

List<Project> projects = [
  Project(
    projectName: 'Project 1',
    projectDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia',
    projectUrl: 'https://www.github.com',
  ),
  Project(
    projectName: 'Project 2',
    projectDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia',
    projectUrl: 'https://www.github.com',
  ),
  Project(
    projectName: 'Project 3',
    projectDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia',
    projectUrl: 'https://www.github.com',
  ),
  Project(
    projectName: 'Project 4',
    projectDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia',
    projectUrl: 'https://www.github.com',
  ),
  Project(
    projectName: 'Project 5',
    projectDescription: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet tellus consequat, cursus lacus sit amet, sagittis risus. Mauris accumsan dictum ex ultricies lacinia',
    projectUrl: 'https://www.github.com',
  ),
];

Map<String, double> languages = {
  "C" : 5.0,
  "Java" : 9.0,
  "Javascript" : 3.0,
};