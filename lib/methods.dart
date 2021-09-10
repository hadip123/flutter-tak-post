pixelToChar(int pixels) {
  int char = (pixels * .0048).round();
  return char;
}

inexive(int width, int height, String text) {
  int pixels = width * height;

  int length = pixelToChar(pixels);

  // print('length=>$length');
  // print('pixels=>$pixels');

  var count = 0;
  var str = '';
  var list = text.split('');
  for (String i in list) {
    if (count != length) {
      str = str + i;
      count++;
    } else {
      break;
    }
  }
  return str;
}
