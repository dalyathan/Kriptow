import 'dart:ui';

class VectorUtil {
  final double frameWidth;
  final double frameHeight;

  VectorUtil(this.frameWidth, this.frameHeight);
  reflectYAxis(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(-cartesianPoint.dx, cartesianPoint.dy);
    return toDartCoordinate(cartesianValue);
  }

  reflectXAxis(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(cartesianPoint.dx, -cartesianPoint.dy);
    return toDartCoordinate(cartesianValue);
  }

  reflectYEqualsX(Offset point) {
    Offset cartesianPoint = toCartesianCoordinate(point);
    Offset cartesianValue = Offset(cartesianPoint.dy, cartesianPoint.dx);
    return toDartCoordinate(cartesianValue);
  }

  translate(Offset point, Offset delta) {
    Offset cartesianPoint = point; //toCartesianCoordinate(point);
    Offset cartesianDelta = delta;
    //toCartesianCoordinate(delta);
    Offset cartesianTranslatedVector = Offset(
        cartesianPoint.dx + cartesianDelta.dx,
        cartesianPoint.dy + cartesianDelta.dy);
    return cartesianTranslatedVector; //toDartCoordinate(cartesianTranslatedVector);
  }

  toDartCoordinate(Offset cartesianPoint) => Offset(
      cartesianPoint.dx + frameWidth * 0.5,
      frameHeight * 0.5 - cartesianPoint.dy);

  toCartesianCoordinate(Offset dartianPoint) => Offset(
      dartianPoint.dx - frameWidth * 0.5, frameHeight * 0.5 - dartianPoint.dy);
}
