class CashDispenser {
  double cashAvailable;

  CashDispenser({this.cashAvailable = 1000.0});

  void dispense(double amount) {
    if (amount <= cashAvailable) {
      cashAvailable -= amount;
      print('[CashDispenser] Dispensing \$${amount.toStringAsFixed(2)}. Remaining in dispenser: \$${cashAvailable.toStringAsFixed(2)}');
    } else {
      print('[CashDispenser] Cannot dispense \$${amount.toStringAsFixed(2)} — insufficient dispenser cash.');
    }
  }
}