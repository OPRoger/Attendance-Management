import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    // Add more items as needed
  ];
  List<String> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
    _searchController.addListener(() {
      setState(() {
        _filteredItems = _allItems
            .where((item) => item
            .toLowerCase()
            .contains(_searchController.text.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Future<void> _logout(BuildContext context) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('isLoggedIn', false);
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginScreen()),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => (''),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _filteredItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_filteredItems[index]),
          );
        },
      ),
    );
  }
}
