import 'package:flutter/material.dart';
import 'package:gambit_app/global/theme/theme.dart';
import 'package:gambit_app/global/theme/theme_changer.dart';
import 'package:gambit_app/utils/Constants.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;

  CollapsingListTile(
      {@required this.title,
      @required this.icon,
      @required this.animationController,
      this.isSelected = false,
      this.onTap});

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    super.initState();
    widthAnimation = Tween<double>(
      begin: Constants.minWidth,
      end: Constants.maxWidth,
    ).animate(widget.animationController);
    sizedBoxAnimation = Tween<double>(
      begin: 0,
      end: 10,
    ).animate(widget.animationController);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
          color: widget.isSelected
              ? Colors.transparent.withOpacity(0.3)
              : Colors.transparent,
        ),
        width: widthAnimation.value,
        margin: EdgeInsets.symmetric(
          horizontal: Constants.containerMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Constants.containerPadding,
          vertical: Constants.containerPadding,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.isSelected ? Theme.of(context).accentColor : CustomColors().lureGrey,
              size: 38.0,
            ),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= Constants.maxWidth)
                ? Text(
                    widget.title,
                    style: widget.isSelected
                        ? listTitleSelectedTextStyle
                        : listTitleDefaultTextStyle,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
