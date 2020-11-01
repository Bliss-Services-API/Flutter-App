import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Expanded(
                    child: Container(
                      height: 48,
                      child: Card(
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.zero,
                                  isDense: true),
                              autofocus: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class SearchList extends StatefulWidget {
//   @override
//   _SearchListState createState() => new _SearchListState();
// }
//
// class _SearchListState extends State<SearchList> {
//   Widget appBarTitle = new Text(
//     "Search Sample",
//     style: new TextStyle(color: Colors.white),
//   );
//   Icon actionIcon = new Icon(
//     Icons.search,
//     color: Colors.white,
//   );
//   final key = new GlobalKey<ScaffoldState>();
//   final TextEditingController _searchQuery = new TextEditingController();
//   List<String> _list;
//   bool _isSearching;
//   String _searchText = "";
//
//   _SearchListState() {
//     _searchQuery.addListener(() {
//       if (_searchQuery.text.isEmpty) {
//         setState(() {
//           _isSearching = false;
//           _searchText = "";
//         });
//       } else {
//         setState(() {
//           _isSearching = true;
//           _searchText = _searchQuery.text;
//         });
//       }
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _isSearching = false;
//     init();
//   }
//
//   void init() {
//     _list = List();
//     _list.add("Google");
//     _list.add("IOS");
//     _list.add("Andorid");
//     _list.add("Dart");
//     _list.add("Flutter");
//     _list.add("Python");
//     _list.add("React");
//     _list.add("Xamarin");
//     _list.add("Kotlin");
//     _list.add("Java");
//     _list.add("RxAndroid");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       key: key,
//       appBar: buildBar(context),
//       body: new ListView(
//         padding: new EdgeInsets.symmetric(vertical: 8.0),
//         children: _isSearching ? _buildSearchList() : _buildList(),
//       ),
//     );
//   }
//
//   List<ChildItem> _buildList() {
//     return _list.map((contact) => new ChildItem(contact)).toList();
//   }
//
//   List<ChildItem> _buildSearchList() {
//     if (_searchText.isEmpty) {
//       return _list.map((contact) => new ChildItem(contact)).toList();
//     } else {
//       List<String> _searchList = List();
//       for (int i = 0; i < _list.length; i++) {
//         String name = _list.elementAt(i);
//         if (name.toLowerCase().contains(_searchText.toLowerCase())) {
//           _searchList.add(name);
//         }
//       }
//       return _searchList.map((contact) => new ChildItem(contact)).toList();
//     }
//   }
//
//   Widget buildBar(BuildContext context) {
//     return new AppBar(centerTitle: true, title: appBarTitle, actions: <Widget>[
//       new IconButton(
//         icon: actionIcon,
//         onPressed: () {
//           setState(() {
//             if (this.actionIcon.icon == Icons.search) {
//               this.actionIcon = new Icon(
//                 Icons.close,
//                 color: Colors.white,
//               );
//               this.appBarTitle = new TextField(
//                 controller: _searchQuery,
//                 style: new TextStyle(
//                   color: Colors.white,
//                 ),
//                 decoration: new InputDecoration(
//                     prefixIcon: new Icon(Icons.search, color: Colors.white),
//                     hintText: "Search...",
//                     hintStyle: new TextStyle(color: Colors.white)),
//               );
//               _handleSearchStart();
//             } else {
//               _handleSearchEnd();
//             }
//           });
//         },
//       ),
//     ]);
//   }
//
//   void _handleSearchStart() {
//     setState(() {
//       _isSearching = true;
//     });
//   }
//
//   void _handleSearchEnd() {
//     setState(() {
//       this.actionIcon = new Icon(
//         Icons.search,
//         color: Colors.white,
//       );
//       this.appBarTitle = new Text(
//         "Search Sample",
//         style: new TextStyle(color: Colors.white),
//       );
//       _isSearching = false;
//       _searchQuery.clear();
//     });
//   }
// }
//
// class ChildItem extends StatelessWidget {
//   final String name;
//   ChildItem(this.name);
//   @override
//   Widget build(BuildContext context) {
//     return new ListTile(title: new Text(this.name));
//   }
// }
