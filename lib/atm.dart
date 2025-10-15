import 'card_reader.dart';
import 'cash_dispenser.dart';
import 'account_service.dart';

class ATM {
  final CardReader cardReader;
  final CashDispenser cashDispenser;
  final AccountService accountService;

  ATM({
    required this.cardReader,
    required this.cashDispenser,
    required this.accountService,
  });

  void startTransaction() {
    print('[ATM] Transaction started.');
    cardReader.readCard();
  }

  void withdraw(double amount) {
    print('[ATM] Requesting withdrawal: \$${amount.toStringAsFixed(2)}');
    if (accountService.verifyBalance(amount)) {
      cashDispenser.dispense(amount);
      accountService.deduct(amount);
      print('[ATM] Withdrawal complete.');
    } else {
      print('[ATM] Withdrawal failed: insufficient funds.');
    }
  }

  void endTransaction() {
    print('[ATM] Transaction ended.');
  }
}