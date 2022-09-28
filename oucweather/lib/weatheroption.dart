 class Options{
  static String? getWeatherName(String? code){
    switch(code){
      case "Rain":
        return "雨";
      case "Clear":
        return "晴れ";
      case"Clouds":
       return "曇り";
       

      default:
        return code;
    }
  }
 }