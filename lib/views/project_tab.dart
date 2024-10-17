import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/portfolio_provider.dart';
import 'project_tile.dart';
import 'filter_button.dart';
import '../widgets/search_bar.dart';

class ProjectTab extends StatelessWidget {
  const ProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PortfolioProvider>(context);

    return Stack(
      children: [
        Column(
          children: [
            // Search bar
            CustomSearchBar(
              onSearch: (value) {
                provider.filterProjects(value);
              },
              onClear: () {
                provider.resetProjects(); // Reset the projects when the search bar is cleared
              },
            ),

            Expanded(
              child: provider.projects.isEmpty
                  ? const Center(
                // Show this message when no projects are available
                child: Text(
                  'No projects available. Try another search.',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              )
                  : ListView.builder(
                itemCount: provider.projects.length,
                itemBuilder: (context, index) {
                  return ProjectTile(project: provider.projects[index]);
                },
              ),
            ),
          ],
        ),

        // Align the FilterButton to the bottom without interfering with the list
        const Align(
          alignment: Alignment.bottomCenter,
          child: FilterButton(),
        ),
      ],
    );
  }
}
