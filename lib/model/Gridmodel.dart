import 'package:flutter/material.dart';

class GridModel {
  Icon _icon;
  String _title;
  Color _color;

  GridModel(this._icon, this._title, this._color);

  Color get color => _color;

  set color(Color value) {
    _color = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  Icon get icon => _icon;

  set imagePath(Icon value) {
    _icon = value;
  }
}
