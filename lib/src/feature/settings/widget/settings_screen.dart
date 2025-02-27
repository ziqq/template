import 'package:flutter_template_name/src/common/widget/common_header.dart';
import 'package:flutter_template_name/src/common/widget/scaffold_padding.dart';
import 'package:ui/ui.dart';

/// {@template settings_screen}
/// SettingsScreen widget.
/// {@endtemplate}
class SettingsScreen extends StatelessWidget {
  /// {@macro profile_screen}
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: CustomScrollView(
      slivers: <Widget>[
        SliverCommonHeader(title: const Text('Settings'), pinned: true),
        SliverPadding(
          padding: ScaffoldPadding.of(context).copyWith(top: 16, bottom: 16),
          sliver: SliverList.list(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Shimmer(
                      size: const Size(128, 128),
                      color: Colors.grey[400],
                      backgroundColor: Colors.grey[100],
                      cornerRadius: 42,
                    ),
                    const SizedBox(width: 16),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextPlaceholder(height: 16, width: 64),
                        SizedBox(height: 12),
                        Padding(padding: EdgeInsets.only(left: 8), child: TextPlaceholder(height: 14, width: 100)),
                        SizedBox(height: 8),
                        Padding(padding: EdgeInsets.only(left: 8), child: TextPlaceholder(height: 14, width: 128)),
                        SizedBox(height: 8),
                        Padding(padding: EdgeInsets.only(left: 8), child: TextPlaceholder(height: 14, width: 72)),
                        SizedBox(height: 8),
                        Padding(padding: EdgeInsets.only(left: 8), child: TextPlaceholder(height: 14, width: 92)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                height: 68,
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  isThreeLine: false,
                  title: const Text(
                    'Name',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, height: 1),
                  ),
                  subtitle: const Text(
                    'John Doe',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(height: 1),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              /* SizedBox(
                    height: 68,
                    child: ListTile(
                      leading: const CircleAvatar(child: Icon(Icons.settings)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      isThreeLine: false,
                      title: const Text(
                        'Settings',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          height: 1,
                        ),
                      ),
                      subtitle: const Text(
                        'Change your settings',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          height: 1,
                        ),
                      ),
                      onTap: () => context.octopus.push(Routes.settingsDialog),
                    ),
                  ),
                  const SizedBox(height: 24), */
              const FormPlaceholder(title: false),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    ),
  );
}
