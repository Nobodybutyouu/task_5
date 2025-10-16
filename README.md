#  ATM Machine System (Composition)

##  Overview
This project demonstrates the **Object-Oriented Programming (OOP)** concept of **Composition** using Dart.

In this system, the **ATM** acts as the *container class* that has multiple *part classes*:  
- `CardReader` — handles card insertion and ejection.  
- `TransactionProcessor` — manages account verification, balance checks, and transactions.  
- `CashDispenser` — dispenses cash and updates the remaining cash in the ATM.

The ATM delegates specific operations to these part objects, showing how **composition** allows an object to contain and use other objects to perform tasks.

---

##  Features
- **Start Session** → Simulates card insertion and account verification.  
- **Withdraw Money** → Checks balance and processes withdrawal if sufficient.  
- **End Session** → Simulates card ejection and ends the ATM session.  

---

##  Project Structure

/lib
├── atm.dart # Container class (ATM)
├── card_reader.dart # Part A (CardReader)
├── cash_dispenser.dart # Part B (CashDispenser)
├── transaction_processor.dart # Part C (TransactionProcessor)
└── main.dart # Demo integration


---

## Concept Demonstrated: Composition
**Composition** shows a “has-a” relationship in OOP.  
Example:  
> The ATM **has a** CardReader, a CashDispenser, and a TransactionProcessor.  

Each part performs its own function, while the ATM coordinates how they work together.

---

##  How to Run

1. Open your terminal and navigate to the project folder (where `lib/` is located):
   ```bash
   cd path/to/atm-composition

dart run lib/main.dart

Expected Output:

--- DEMO: ATM Machine System ---
[ATM] Transaction started.

[CardReader] Card read. ID: CARD-1234
[ATM] Requesting withdrawal: $200.00
[AccountService] Verifying for withdrawal: $200.00; Current balance: $1000.00
[CashDispenser] Dispensing $200.00. Remaining in dispenser: $300.00
[AccountService] Deducted $200.00. New balance: $800.00
[ATM] Withdrawal complete.
[ATM] Requesting withdrawal: $900.00
[AccountService] Verifying for withdrawal: $900.00; Current balance: $800.00
[ATM] Withdrawal failed: insufficient funds.

[ATM] Transaction ended.


