import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:collection/collection.dart';

enum SubscriptionPeriod {
  month,
  year;

  String getName() {
    return switch (this) {
      SubscriptionPeriod.month => LocaleKeys.month.tr(),
      SubscriptionPeriod.year => LocaleKeys.year.tr(),
    };
  }
}

extension SubscriptionPeriodExtension on SubscriptionPeriod {
  String toSubscriptionPeriodString() => name;
}

class SubscriptionPeriodConverter {
  const SubscriptionPeriodConverter();

  SubscriptionPeriod? fromString(String? stringPeriod) {
    return SubscriptionPeriod.values.firstWhereOrNull((e) => e.toSubscriptionPeriodString() == stringPeriod);
  }
}
