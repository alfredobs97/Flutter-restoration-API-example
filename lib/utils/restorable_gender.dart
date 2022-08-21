import 'package:flutter/material.dart';
import 'package:restoration_api/utils/gender_enum.dart';

class RestorableGender extends RestorableValue<GenderEnum> {
  @override
  GenderEnum createDefaultValue() => GenderEnum.other;

  @override
  void didUpdateValue(GenderEnum? oldValue) {
    if (oldValue != null && oldValue.name != value.name) {
      notifyListeners();
    }
  }

  @override
  GenderEnum fromPrimitives(Object? data) {
    if (data != null) {
      return GenderEnum.values[data as int];
    }
    return GenderEnum.other;
  }

  @override
  Object? toPrimitives() {
    return value.index;
  }
}
