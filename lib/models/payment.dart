class Payment {
  String _dateOfTransaction;
  double _rentPaid;
  double _rentDue;
  String _timeOfTransaction;
  String _dateAndTime;
  String transactionCode;
  String transactionProvider;

  Payment(this._dateOfTransaction, this._timeOfTransaction, this._rentPaid,
      this._rentDue,
  {this.transactionCode='xxxxxxxxxxx', this.transactionProvider='MPESA'});

  Payment.db(dateOfTransaction, timeOfTransaction, rentPaid, rentDue,
      {this.transactionCode='xxxxxxxxxxx', this.transactionProvider='MPESA'}) {
    this._dateAndTime = _dateOfTransaction + " - " + _timeOfTransaction;
    this._rentPaid = _rentPaid;
    this._rentDue = rentDue;
  }

  double get rentDue => _rentDue;

  double get rentPaid => _rentPaid;

  String get dateOfTransaction => _dateOfTransaction;

  String get timeOfTransaction => _timeOfTransaction;

  String get dateAndTime => _dateAndTime;
}
