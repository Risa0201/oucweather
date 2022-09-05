 class Options{
  static String? getWeatherName(String? code){
    switch(code){
      case "Rain":
        return "雨";
      default:
        return code;
    }
  }
 }