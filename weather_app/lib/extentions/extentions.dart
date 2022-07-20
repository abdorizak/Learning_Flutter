extension DateTimeEx on DateTime {
  String get format =>
      // ignore: unnecessary_this
      '${this.second}:${this.minute}/${this.hour} ${this.timeZoneName} ${this.day}/${this.month}/${this.year}';
}
