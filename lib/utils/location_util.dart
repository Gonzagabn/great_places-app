const GOOGLE_API_KEY = 'AIzaSyDfTFhQTdUr5SjJHJlnjk3VdysJnF0pZ1o';

class LocationUtil {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=12&size=400x400&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}
