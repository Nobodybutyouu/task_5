import 'atm.dart';
import 'card_reader.dart';
import 'cash_dispenser.dart';
import 'account_service.dart';

void main() {
  final cardReader = CardReader();
  final cashDispenser = CashDispenser(cashAvailable: 500.0);
  final accountService = AccountService(balance: 1000.0);

  final atm = ATM(
    cardReader: cardReader,
    cashDispenser: cashDispenser,
    accountService: accountService,
  );

  atm.startTransaction();
  // two different container method calls that delegate to parts
  atm.withdraw(200.0);
  atm.withdraw(900.0); // show insufficient balance or dispenser limit
  atm.endTransaction();
}