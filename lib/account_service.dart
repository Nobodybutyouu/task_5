class AccountService {
  double _balance;

  AccountService({double balance = 0.0}) : _balance = balance;

  double get balance => _balance;

  set balance(double val) {
    if (val < 0) {
      print('[AccountService] Attempt to set negative balance ignored.');
      return;
    }
    _balance = val;
    print('[AccountService] Balance set to \$${_balance.toStringAsFixed(2)}');
  }

  bool verifyBalance(double amount) {
    print(
      '[AccountService] Verifying for withdrawal: \$${amount.toStringAsFixed(2)}; Current balance: \$${_balance.toStringAsFixed(2)}',
    );
    return _balance >= amount;
  }

  void deduct(double amount) {
    if (amount < 0) {
      print('[AccountService] Invalid deduction amount: $amount');
      return;
    }
    _balance -= amount;
    print(
      '[AccountService] Deducted \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}',
    );
  }
}
