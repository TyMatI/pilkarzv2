import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    home:profil(),
  ),
  );
}

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://marriedbiography.com/wp-content/uploads/2017/06/pepe-1.jpg"
                    )
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Képler Laveran Pepe",
                      style: TextStyle(fontSize: 22),
                    )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Text(
                    "Portugalski piłkarz pochodzenia brazylijskiego, występujący na pozycji obrońcy. Obecnie jest zawodnikiem FC Porto.",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(child: Text(
                        "Moja ocena:",
                      ),
                      ),
                      StarsRow(1),
                    ],

                  ),
                ),
                white_box(Icons.child_care,"26.02.1983r."),
                white_box(Icons.star_border_rounded, "FC Porto"),
                white_box(Icons.arrow_upward,"1,78 m"),
              ],
            )
        )
    );
  }
}
class StarsRow extends StatelessWidget {
  final int rating;

  const StarsRow(this.rating, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Widget> stars = [];
    for(int i = 0; i < 3; i++)
    {
      if( i < rating){
        stars.add(Icon(Icons.star));
      }
      else
      {
        stars.add(Icon(Icons.star_border));
      }
    }
    return Row(
        children:
        stars
    );
  }
}

class white_box extends StatelessWidget {
  final IconData icon;
  final String text;
  const white_box(this.icon,this.text, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<Widget> box = [];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(icon),
          Expanded(child: Text(
            (text),
            textAlign: TextAlign.center,
          ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    box.add(Icon(icon));
    box.add(Text(text));
    return Container(
      child: Row(children: box,
      ),
    );
  }
}