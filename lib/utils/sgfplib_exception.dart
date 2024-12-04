class SecugenV49Exception implements Exception {

  String? message;
  SecugenV49Exception({this.message});
}

class DeviceNotSupportedException extends SecugenV49Exception {
  DeviceNotSupportedException({required message}) : super(message: message);
}

class InitializationFailedException extends SecugenV49Exception {
  InitializationFailedException({required message}) : super(message: message);
}

class SensorNotFoundException extends SecugenV49Exception {
  SensorNotFoundException({required message}) : super(message: message);
}

class SmartCaptureEnabledException extends SecugenV49Exception {
  SmartCaptureEnabledException({required message}) : super(message: message);
}

class OutOfRangeException extends SecugenV49Exception {
  OutOfRangeException({required message}) : super(message: message);
}

class NoFingerprintException extends SecugenV49Exception {
  NoFingerprintException({required message}) : super(message: message);
}

class TemplateInitializationException extends SecugenV49Exception {
  TemplateInitializationException({required message}) : super(message: message);
}

class TemplateMatchingException extends SecugenV49Exception {
  TemplateMatchingException({required message}) : super(message: message);
}
