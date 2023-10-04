import 'package:cts_tappable/src/cts_tappable.dart';

class GeoPoints {
  GeoPoints._();
  static bool isGeoPointInPolygon(LatLng l, List<LatLng> polygon) {
    bool isInPolygon = false;
    for (int i = 0, j = polygon.length - 1; i < polygon.length; j = i++) {
      final vertexI = polygon[i];
      final vertexJ = polygon[j];

      final aboveLatitude =
          (vertexI.latitude <= l.latitude) && (l.latitude < vertexJ.latitude);
      final belowLatitude =
          (vertexJ.latitude <= l.latitude) && (l.latitude < vertexI.latitude);
      final withinLongitude = l.longitude <
          (vertexJ.longitude - vertexI.longitude) *
                  (l.latitude - vertexI.latitude) /
                  (vertexJ.latitude - vertexI.latitude) +
              vertexI.longitude;

      if ((aboveLatitude || belowLatitude) && withinLongitude) {
        isInPolygon = !isInPolygon;
      }
    }

    return isInPolygon;
  }
}
