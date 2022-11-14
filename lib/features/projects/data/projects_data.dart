import 'package:resume/features/projects/data/models/platform_names.dart';
import 'package:resume/features/projects/data/models/project_model.dart';
import 'package:resume/features/projects/data/models/source_link.dart';

const kProjectsData = <ProjectModel>[
  ProjectModel(
    name: 'resume',
    info: 'resume_project_info',
    asset: 'assets/images/resume_screens.png',
    links: [
      SourceLink(
        url: 'https://skosyrskyv.github.io/resume/',
        platform: PlatformName.Web,
      ),
      SourceLink(
        url: 'https://skosyrskyv.github.io/resume/',
        platform: PlatformName.Android,
      ),
      SourceLink(
        url: 'https://skosyrskyv.github.io/resume/',
        platform: PlatformName.IOS,
      ),
      SourceLink(
        url: 'https://github.com/skosyrskyv/resume',
        platform: PlatformName.MacOS,
      ),
      SourceLink(
        url: 'https://github.com/skosyrskyv/resume',
        platform: PlatformName.Linux,
      ),
      SourceLink(
        url: 'https://github.com/skosyrskyv/resume',
        platform: PlatformName.Windows,
      ),
      SourceLink(
        url: 'https://github.com/skosyrskyv/resume',
        platform: PlatformName.Github,
      ),
    ],
  ),
  // ProjectModel(
  //   name: 'gogo_courier',
  //   info: 'gogo_courier_project_info',
  //   asset: 'assets/images/pm_screens.png',
  //   links: [],
  // ),
  ProjectModel(
    name: 'vivat',
    info: 'vivat_project_info',
    asset: 'assets/images/vivat_screens.png',
    links: [
      SourceLink(
        url:
            'https://play.google.com/store/apps/details?id=com.mondino.vivat_apteka',
        platform: PlatformName.Android,
      ),
    ],
  ),
  ProjectModel(
    name: 'mondino_tracker',
    info: 'mondino_tracker_project_info',
    asset: 'assets/images/pm_screens.png',
    links: [
      SourceLink(
        url:
            'https://apps.apple.com/us/app/мондино-трекер-здоровья/id1582953573',
        platform: PlatformName.IOS,
      ),
      SourceLink(
        url:
            'https://play.google.com/store/apps/details?id=com.mondino.pocketmedic',
        platform: PlatformName.Android,
      ),
    ],
  ),
  // ProjectModel(
  //   name: 'mondino_tracker_doctor',
  //   info: 'mondino_tracker_doctor_project_info',
  //   asset: 'assets/images/pm_screens.png',
  //   links: [],
  // ),
  // ProjectModel(
  //   name: 'osher_chat_ui',
  //   info: 'osher_chat_ui_project_info',
  //   asset: 'assets/images/pm_screens.png',
  //   links: [],
  // ),
];
