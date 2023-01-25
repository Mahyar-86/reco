import 'package:flutter/material.dart';
import 'package:recop/searchpage.dart';
import 'package:recop/widgets.dart';
import 'package:recop/theme.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Mainnavigator(),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(child: Text('What do you want to watch?', style: textStylePoppinsBig,), alignment: Alignment.topLeft),

            SizedBox(height: 15,),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              height: 40,
              child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return searchpage();},),);},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search', style: TextStyle(color: accentColor, fontFamily: 'SegoeUI', fontSize: 15.0),),
                    ImageIcon(AssetImage('assets/images/search_icon.png'), color: accentColor, size: 15.0,)
                  ],
                ),
                style: TextButton.styleFrom(
                    backgroundColor: lightcolor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                ),
              ),
            ), ///search button

            SizedBox(height: 25),

            topChart(), ///topChartmovie

                ///buttons
                Buttonmain(margin: 30.0, bgColor: primarycolor, borderRadius: 20, label: 'Quick Recommend', labelColor: accentColor,),
                SizedBox(height: 10.0,),
                Buttonmain(margin: 30.0, bgColor: primarycolor, borderRadius: 20, label: 'Recommend Based on mood', labelColor: accentColor,),
                SizedBox(height: 10.0,),
                Buttonmain(margin: 30.0, bgColor: primarycolor, borderRadius: 20, label: 'Recommend bsed on personality', labelColor: accentColor,),
                ///buttons end

                SizedBox(height: 10.0),
                TabBar( ///tabbar category
                  controller: _tabController,
                  labelColor: accentColor,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: MaterialDesignIndicator(
                      indicatorHeight: 4, indicatorColor: accentColor),
                  tabs: [
                    Tab(text: 'Now Playing'),
                    Tab(text: 'Uncoming'),
                    Tab(text: 'Top Rated')
                  ],
                ),

                SizedBox( ///movie List
                  height: 600,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      movieList(),
                      movieList(),
                      movieList(),
                    ],
                  ),
                ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

