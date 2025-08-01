import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/providers/city_provider.dart';
import '../../core/providers/search_provider.dart';
import 'city_selection_modal.dart';

class SharedTopBar extends ConsumerWidget implements PreferredSizeWidget {
  final bool showSearchIcon;

  const SharedTopBar({super.key, this.showSearchIcon = true});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cityState = ref.watch(cityProvider);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.95),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.6),
            blurRadius: 8,
            offset: const Offset(0, 2),
            spreadRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: SafeArea(
            child: Container(
              height: kToolbarHeight - 10,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // City Selection (Left)
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => const CitySelectionModal(),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          cityState.selectedCity ?? 'Select City',
                          style: Theme.of(
                            context,
                          ).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color:
                                cityState.selectedCity != null
                                    ? Theme.of(context).colorScheme.onSurface
                                    : Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withOpacity(0.6),
                          size: 24,
                        ),
                      ],
                    ),
                  ),

                  // Search Icon (Right)
                  if (showSearchIcon)
                    IconButton(
                      iconSize: 28,
                      icon: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      onPressed: () {
                        ref.read(searchProvider.notifier).startSearch();
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
