/* ***************************************************************
 * @author      : Gerardo Yandún
 * @model        : PagoPluxModel
 * @description  : Componente modal que invoca a PagoPlux
 * @version  : v1.0.0
 * @copyright (c)  PagoPlux 2021
 *****************************************************************/
class PagoPluxModel {
  String payboxRename;
  String payboxSendname;
  String payboxRemail;
  bool payboxProduction;
  String payboxSendmail;
  String payboxEnvironment;
  String payboxDescription;
  double payboxBase0;
  double payboxBase12;
  String payboxCreditType;
  int payboxNumInstallments;
  String payboxInteres;
  int payboxGraceMonths;
  String payboxDirection;
  bool payboxIntoDataPayment;
  String payboxClientName;
  String payboxClientPhone;
  String payboxClientIdentification;
  bool payboxRecurrent;
  String payboxIdPlan;
  bool payboxPermitirCalendarizar;
  bool payboxPagoInmediato;
  bool payboxCobroPrueba;

  PagoPluxModel(
      {required this.payboxRemail,
      required this.payboxEnvironment,
      required this.payboxProduction,
      required this.payboxBase0,
      required this.payboxBase12,
      required this.payboxSendname,
      required this.payboxSendmail,
      required this.payboxRename,
      required this.payboxDescription,
      required this.payboxDirection,
      required this.payboxInteres,
      required this.payboxCreditType,
      required this.payboxNumInstallments,
      required this.payboxGraceMonths,
      required this.payboxPagoInmediato,
      required this.payboxPermitirCalendarizar,
      required this.payboxIdPlan,
      required this.payboxRecurrent,
      required this.payboxIntoDataPayment,
      required this.payboxClientIdentification,
      required this.payboxClientPhone,
      required this.payboxClientName,
      required this.payboxCobroPrueba});
}
