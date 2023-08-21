/* ***************************************************************
 * @author       : Gerardo Yandún
 * @model        : PagoResponseModel
 * @description  : Objeto de respuesta en pago
 * @version  : v1.0.0
 * @copyright (c)  PagoPlux 2021
 *****************************************************************/
class PagoResponseModel {
  int? code;
  String? description;
  DetailModel? detail;
  String? status;

  PagoResponseModel({
    required this.code,
    required this.description,
    required this.detail,
    required this.status,
  });

  PagoResponseModel.fromJsonMap(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
    status = json['status'];
    detail = DetailModel.fromJsonMap(json['detail']);
  }
}

class DetailModel {
  String? token;
  String? amount;
  String? cardType;
  String? cardInfo;
  String? cardIssuer;
  String? clientID;
  String? clientName;
  String? fecha;

  DetailModel({
    required this.token,
    required this.amount,
    required this.cardType,
    required this.cardInfo,
    required this.cardIssuer,
    required this.clientID,
    required this.clientName,
    required this.fecha,
  });

  DetailModel.fromJsonMap(Map<String, dynamic> json) {
    token = json['token'];
    amount = json['amount'];
    cardType = json['cardType'];
    cardInfo = json['cardInfo'];
    cardIssuer = json['cardIssuer'];
    clientID = json['clientID'];
    clientName = json['clientName'];
    fecha = json['fecha'];
  }
}
