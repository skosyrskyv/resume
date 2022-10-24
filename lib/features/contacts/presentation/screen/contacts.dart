import 'package:flutter/material.dart';
import 'package:resume/core/widgets/centered_content_scroll_view.dart';
import 'package:resume/core/widgets/screen.dart';
import 'package:resume/features/contacts/data/contacts_data.dart';
import 'package:resume/features/contacts/presentation/widgets/contacts_list_item.dart';
import 'package:resume/utils/spacers.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  List<Widget> contactsBuilder() {
    return kContactsData
        .map(
          (contact) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ContactsListItem(
                label: contact.label,
                imagePath: contact.imagePath,
                onTap: () => launchUrlString(contact.url),
              ),
              VerticalSpacer.h32(),
            ],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Screen(
      body: CenteredContentScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: contactsBuilder(),
      ),
    );
  }
}
