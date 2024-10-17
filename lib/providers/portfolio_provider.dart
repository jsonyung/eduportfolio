import 'dart:convert';
import 'package:eduportfolio/res/assets_res.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../models/project_model.dart';

class PortfolioProvider extends ChangeNotifier {
  List<Project> _projects = []; // The current filtered list of projects
  List<Project> _allProjects = []; // The full list of projects for reset purposes

  int _selectedTabIndex = 0;
  String _searchText = ""; // Store search text

  List<Project> get projects => _projects;
  int get selectedTabIndex => _selectedTabIndex;
  String get searchText => _searchText;

  // Constructor to load JSON data when PortfolioProvider is initialized
  PortfolioProvider() {
    _loadProjectsFromJson();
  }

  // Method to load the projects from the JSON file in assets
  Future<void> _loadProjectsFromJson() async {
    try {
      // Load the JSON file as a string
      final String response = await rootBundle.loadString(AssetsRes.PROJECTS);
      final List<dynamic> data = jsonDecode(response);

      // Map the JSON data to Project objects and assign to _projects and _allProjects
      _projects = data.map((project) => Project(
        title: project['title'],
        subject: project['subject'],
        author: project['author'],
        imageUrl: project['imageUrl'],
        badge: project['badge'],
      )).toList();

      // Save the full list to _allProjects
      _allProjects = List.from(_projects);

      notifyListeners();
    } catch (error) {
      print("Failed to load projects from JSON: $error");
    }
  }

  // Method to filter projects based on a keyword
  void filterProjects(String keyword) {
    _searchText = keyword; // Store the search text
    if (keyword.isEmpty) {
      _projects = List.from(_allProjects); // Reset to full list
    } else {
      _projects = _allProjects
          .where((project) => project.title.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }

  // Reset the project list
  void resetProjects() {
    _projects = List.from(_allProjects); // Reset to full list
    _searchText = ""; // Clear the search text
    notifyListeners();
  }

  // Set the selected tab index
  void setSelectedTab(int index) {
    _selectedTabIndex = index;
    if (_selectedTabIndex == 0) {
      resetProjects(); // Reset projects only if we switch to the "Project" tab (index 0)
    }
    notifyListeners();
  }
}
