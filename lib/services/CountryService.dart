// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:practice_9/models/countryModel.dart';


class ResourceService {
  final String _url = "https://restcountries.com/v2/all";

  Future getAdvice() async {
    try {
      Response response = await Dio().get(_url);
      CountrySlip countrySlip = CountrySlip.fromJson(response.data);

      return countrySlip;
    } on DioError catch (e) {
      print(e);
    }
  }
}