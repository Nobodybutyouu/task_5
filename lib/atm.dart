
class ATM {

  final dynamic cardReader;
  final dynamic cashDispenser;
  final dynamic accountService;

  ATM({
    required this.cardReader,
    required this.cashDispenser,
    required this.accountService,
  });

  void startTransaction() {
    print('[ATM] Transaction started.');
  }
}

