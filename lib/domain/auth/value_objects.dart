import 'package:dartz/dartz.dart';
import 'package:note_app_firebase_ddd/domain/core/failures.dart';
import 'package:note_app_firebase_ddd/domain/core/value_objects.dart';
import 'package:note_app_firebase_ddd/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value) : assert(value != null);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value) : assert(value != null);
}
