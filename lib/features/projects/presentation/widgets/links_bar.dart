import 'package:flutter/material.dart';
import 'package:resume/constants/platform_logo_asset_keys.dart';
import 'package:resume/features/projects/data/models/source_link.dart';
import 'package:resume/features/projects/presentation/widgets/logo_button.dart';

class LinksBar extends StatelessWidget {
  final List<SourceLink> links;
  const LinksBar({
    super.key,
    required this.links,
  });

  List<Widget> itemsBuilder() {
    return links
        .map(
          (item) => Padding(
            padding: const EdgeInsets.all(4.0),
            child: LogoButton(
              assetPath: kPlatformLogoAssetKeys[item.platform],
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: itemsBuilder(),
    );
  }
}
