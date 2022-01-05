class SvgConstants {
  static SvgConstants? _instance;
  static SvgConstants get instance {
    _instance ??= _instance = SvgConstants._init();
    return _instance!;
  }

  SvgConstants._init();
  String toSvg(String value) => 'assets/svg/$value.svg';

  // F1 road logo for background
  String get f1roadLogo => toSvg('f_one_road_icon');
  String get appLogo => toSvg('logo_playon');
}
