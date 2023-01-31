import 'package:flutter/material.dart';
import 'package:recop/theme.dart';
import 'package:recop/model/moviemodel.dart';


class searchpage extends StatefulWidget {

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {

  static List<Moviemodel> main_movie_list = [
    Moviemodel("The Shawshank Redemption", 1994, 9.3, "https://m.media-amazon.com/images/I/81Fgfff0TqL._AC_UY218_.jpg"),
    Moviemodel("The Godfather", 1972, 9.2, "https://m.media-amazon.com/images/I/714ZOEiVNtL._AC_UY218_.jpg"),
    Moviemodel("The Dark Knight", 2008, 9.0, "https://m.media-amazon.com/images/I/91ebheNmoUL._AC_UY218_.jpg"),
    Moviemodel("12 Angry Men", 1957, 9.0, "https://m.media-amazon.com/images/I/712ODXwCCXL._AC_UY218_.jpg"),
    Moviemodel("Dog Day Afternoon", 1975, 8.9, "https://m.media-amazon.com/images/I/51wuIc9gWrL._AC_UY218_.jpg"),
    Moviemodel("Inception", 2010, 8.8, "https://m.media-amazon.com/images/I/81DLp4pu+JL._AC_UY218_.jpg"),
  ];

  List<Moviemodel> display_list = List.from(main_movie_list);

  void updatelist(String value){
    setState((){
      display_list = main_movie_list.where((element)=> element.movie_title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
      ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Search for a Movie", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontSize: 30.0, fontWeight: FontWeight.w600),),
              SizedBox(height: 20.0,),
              TextField(
                onChanged: (value)=> updatelist(value),
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: lightcolor,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none),
                    hintStyle: TextStyle(color: accentColor),
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: accentColor, size: 30.0,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: display_list.length == 0 ? Center(child: Text("No result found", style: TextStyle(color: Colors.white, fontFamily: "Roboto", fontSize: 20.0, fontWeight: FontWeight.w400),)):ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(display_list[index].movie_title!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      subtitle: Text("${display_list[index].movie_release_year!}", style: TextStyle(color: Colors.grey),),
                      trailing: Text("${display_list[index].rating}", style: TextStyle(color: Colors.yellow.shade600),),
                      leading: Image.network(display_list[index].movie_poster_url!),
                    )
                ),
              ),
            ],
          ),
        ),
    );
  }
}
