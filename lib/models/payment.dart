class Payment {
  final String _dateOfTransaction;
  final double _rentPaid;
  final double _rentDue;
  final String _timeOfTransaction;

  Payment(this._dateOfTransaction, this._timeOfTransaction, this._rentPaid,
      this._rentDue);

  double get rentDue => _rentDue;

  double get rentPaid => _rentPaid;

  String get dateOfTransaction => _dateOfTransaction;

  String get timeOfTransaction => _timeOfTransaction;
}
