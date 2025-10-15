class CardReader {
  String? cardId;

  CardReader();

  void readCard() {
    cardId = 'CARD-1234'; // simulate
    print('[CardReader] Card read. ID: $cardId');
  }
}