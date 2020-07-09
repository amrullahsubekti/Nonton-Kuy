part of 'widgets.dart';

class BrowseButton extends StatelessWidget {
  final String genre;
  BrowseButton(this.genre);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color(0xFFE6E3F3), borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: SizedBox(
              height: 36,
              child: Image(image: AssetImage(getImageFromGenre(genre))),
            ),
          ),
        )
      ],
    );
  }

  String getImageFromGenre(String genre) {
    switch (genre) {
      case "Horror":
        return "assets/ic_horror.png";
        break;
      case "Music":
        return "assets/ic_music.png";
        break;
      case "Action":
        return "assets/ic_action.png";
        break;
      case "Drama":
        return "assets/ic_drama.png";
        break;
      case "War":
        return "assets/ic_war.png";
        break;
      case "Crime":
        return "assets/ic_crime.png";
        break;
      default:
        return "";
    }
  }
}
