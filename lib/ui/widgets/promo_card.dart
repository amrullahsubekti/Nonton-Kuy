part of 'widgets.dart';

class PromoCard extends StatelessWidget {
  final Promo promo;
  PromoCard(this.promo);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 80,
          decoration: BoxDecoration(
              color: mainColor, borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    promo.title,
                    style: whiteTextFont.copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(promo.subtitle,
                      style: whiteTextFont.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w300)),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "OFF ",
                    style: yellowNumberFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "${promo.discount}%",
                    style: yellowNumberFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
        ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.centerLeft,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.transparent,
                ]).createShader(Rect.fromLTRB(0, 0, 77.5, 80));
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: 80,
            width: 77.5,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.asset('assets/reflection2.png')),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  end: Alignment.bottomRight,
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.transparent,
                  ]).createShader(Rect.fromLTRB(0, 0, 96, 37));
            },
            child: SizedBox(
              height: 37,
              width: 90,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset('assets/reflection1.png')),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  end: Alignment.bottomRight,
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.transparent,
                  ]).createShader(Rect.fromLTRB(0, 0, 53, 25));
            },
            child: SizedBox(
              height: 25,
              width: 53,
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset('assets/reflection3.png')),
            ),
          ),
        )
      ],
    );
  }
}
