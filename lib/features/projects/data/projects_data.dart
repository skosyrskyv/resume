import 'package:resume/features/projects/data/models/platform_names.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/data/models/source_link.dart';

const kProjectsData = <ProjectModel>[
  ProjectModel(
    name: 'resume',
    info: 'resume_project_info',
    asset: '',
    links: [],
  ),
  ProjectModel(
    name: 'gogo_courier',
    info: 'gogo_courier_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [],
  ),
  ProjectModel(
    name: 'gogo_partner',
    info: 'gogo_partner_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [],
  ),
  ProjectModel(
    name: 'mondino_tracker',
    info: 'mondino_tracker_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [
      SourceLink(url: 'https://google.com/', platform: PlatformName.IOS),
      SourceLink(url: 'https://google.com/', platform: PlatformName.Android),
      SourceLink(url: 'https://google.com/', platform: PlatformName.Web),
    ],
  ),
  ProjectModel(
    name: 'mondino_tracker_doctor',
    info: 'mondino_tracker_doctor_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [],
  ),
  ProjectModel(
    name: 'osher_chat_ui',
    info: 'osher_chat_ui_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [],
  ),
];
