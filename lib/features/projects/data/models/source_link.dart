import 'package:resume/features/projects/data/models/platform_names.dart';

class SourceLink {
  final String url;
  final PlatformName platform;

  const SourceLink({
    required this.url,
    required this.platform,
  });
}
