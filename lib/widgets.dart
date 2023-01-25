import 'package:flutter/material.dart';
import 'package:recop/theme.dart';
class Buttonlogo extends StatelessWidget {   ///button with logo
  Buttonlogo({required this.bgColor, this.icon, required this.borderRadius, this.command, this.Side, required this.label, this.labelColor});

  final Color bgColor;
  final Color? labelColor;
  final Widget? icon;
  final double borderRadius;
  final VoidCallback? command;
  final BorderSide? Side;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 50.0, right: 50.0),
      height: 60,
      child: ElevatedButton.icon(onPressed: command,
        icon: icon!,
        label: Text(label, style: TextStyle(color: labelColor, fontFamily: 'SegoeUI', fontSize: 17, fontWeight: FontWeight.w600),),
        style: TextButton.styleFrom(
            backgroundColor: bgColor,
            elevation: 0,
            side: Side,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))
        ),
      ),
    );
  }
}

class Buttonmain extends StatelessWidget {   ///main button
  Buttonmain({required this.margin ,required this.bgColor, required this.borderRadius, this.command, this.Side, required this.label, this.labelColor});

  final Color bgColor;
  final Color? labelColor;
  final double borderRadius;
  final VoidCallback? command;
  final BorderSide? Side;
  final String label;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: margin, right: margin),
      height: 60,
      child: ElevatedButton(onPressed: command,
        child: Text(label, style: TextStyle(color: labelColor, fontFamily: 'SegoeUI', fontSize: 17, fontWeight: FontWeight.w600),),
        style: TextButton.styleFrom(
            backgroundColor: bgColor,
            elevation: 0,
            side: Side,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius))
        ),
      ),
    );
  }
}


class TextfieldWithSuffixIcon extends StatefulWidget {   ///textfield which need suffixIcon
  TextfieldWithSuffixIcon({this.label, this.hinttext, required this.colorhint});

  final String? label;
  final String? hinttext;
  final bool colorhint;

  @override
  State<TextfieldWithSuffixIcon> createState() => _TextfieldWithSuffixIconState();
}

bool invisible = true;

class _TextfieldWithSuffixIconState extends State<TextfieldWithSuffixIcon> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: invisible,
        decoration: InputDecoration(
            labelText: widget.label,
            labelStyle: TextStyle(color: primarycolor, fontFamily: 'SegoeUI', fontSize: 20.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: primarycolor, width: 2)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: primarycolor, width: 2)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: primarycolor, width: 2)
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: widget.hinttext,
            hintStyle: TextStyle(color: widget.colorhint? primarycolor : primarycolor.withOpacity(0.6), fontFamily: 'SegoeUI'),
            contentPadding: EdgeInsets.all(20.0),
          suffixIcon:
          GestureDetector(
            onLongPress: () {
              setState(() {invisible = false;});},
            onLongPressUp: () {setState(() {invisible = true;});},
            child: Icon(
                invisible ? Icons.visibility : Icons.visibility_off, color: primarycolor,),
          ),
        ),
      ),
    );
  }
}


class Textfieldmain extends StatelessWidget {   ///main textfield
  Textfieldmain({this.label, this.hinttext, required this.colorhint});

  final String? label;
  final String? hinttext;
  final bool colorhint;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: primarycolor, fontFamily: 'SegoeUI', fontSize: 20.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primarycolor, width: 2)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primarycolor, width: 2)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: primarycolor, width: 2)
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hinttext,
          hintStyle: TextStyle(color: colorhint? primarycolor : primarycolor.withOpacity(0.6), fontFamily: 'SegoeUI'),
          contentPadding: EdgeInsets.all(20.0),
        ),
      ),
    );
  }
}

class Mainnavigator extends StatelessWidget {  ///bottomNavigator
  const Mainnavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: BottomAppBar(
        color: bottomAppBarColor,
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/home_icon.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/explore_icon.png')),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/watchlist_icon.png', scale: 2,)),
              IconButton(onPressed: (){}, icon: Image.asset('assets/images/profile_icon.png'))
              ],
          ),
        ),
      ),
    );
  }
}

class MaterialDesignIndicator extends Decoration { ///tabbar style
  final double indicatorHeight;
  final Color indicatorColor;

  const MaterialDesignIndicator({
    required this.indicatorHeight,
    required this.indicatorColor,
  });

  @override
  _MaterialDesignPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MaterialDesignPainter(this, onChanged);
  }
}

class _MaterialDesignPainter extends BoxPainter {
  final MaterialDesignIndicator decoration;

  _MaterialDesignPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);

    final Rect rect = Offset(
      offset.dx,
      configuration.size!.height - decoration.indicatorHeight,
    ) &
    Size(configuration.size!.width, decoration.indicatorHeight);

    final Paint paint = Paint()
      ..color = decoration.indicatorColor
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndCorners(
        rect,
        topRight: Radius.circular(8),
        topLeft: Radius.circular(8),
      ),
      paint,
    );
  }
}

class topChart extends StatelessWidget { ///topChat widget
  const topChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (c, i) {
          int h = i+1;
          return Stack(
            children: [
              Positioned(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Movies/topmovies/movie$i.png"), ///poster of topchart
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,)),
                    height: 200,
                    width: 140,
                  ),),),
              Positioned(child: Stack(children: [
                Positioned(child: Text('$h', style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Regular", foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 2..color = accentColor,))),
                Positioned(child: Text('$h', style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Regular", color: backgroundColor)))
              ],), bottom: 20, left: 0,) ///number of topchart
            ],
          );
        },
      ),
    );
  }
}

class movieList extends StatelessWidget { ///listveiw of movie category
  const movieList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 400,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0
        ),
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (c, i) {
          return Stack(
            children: [
              Positioned(
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/Movies/example/movie$i.png"), ///poster of topchart
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,)),
                    height: 200,
                    width: 140,
                  ),),),
            ],
          );
        },
      ),
    );
  }
}