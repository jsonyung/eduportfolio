import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/portfolio_provider.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/tab_selector.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'project_tab.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: Provider.of<PortfolioProvider>(context, listen: false).selectedTabIndex);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PortfolioProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Portfolio'),
      body: Column(
        children: [
          TabSelector(pageController: _pageController), // Pass PageController to TabSelector
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                provider.setSelectedTab(index); // Update the selected tab when swiping
              },
              children: [
                const ProjectTab(),
                Center(child: Text('Saved', style: TextStyle(fontSize: 18.sp))),
                Center(child: Text('Shared', style: TextStyle(fontSize: 18.sp))),
                Center(child: Text('Achievement', style: TextStyle(fontSize: 18.sp))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
