class Payment{
  final String _dateOfTransaction;
  final double _outstandingBalance;
  final String _briefDescription;

  Payment(this._dateOfTransaction, this._outstandingBalance,
      this._briefDescription);

  String get briefDescription => _briefDescription;

  double get outstandingBalance => _outstandingBalance;

  String get dateOfTransaction => _dateOfTransaction;
}