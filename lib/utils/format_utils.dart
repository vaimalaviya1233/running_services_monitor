class FormatUtils {
  static String formatRam(double kb, {int decimalPlaces = 2}) {
    if (kb <= 0) {
      return '0 KB';
    }
    if (kb >= 1024 * 1024 * 1024) {
      return '${(kb / (1024 * 1024 * 1024)).toStringAsFixed(decimalPlaces)} TB';
    } else if (kb >= 1024 * 1024) {
      return '${(kb / (1024 * 1024)).toStringAsFixed(decimalPlaces)} GB';
    } else if (kb >= 1024) {
      return '${(kb / 1024).toStringAsFixed(decimalPlaces)} MB';
    }
    return '${kb.toStringAsFixed(decimalPlaces)} KB';
  }
}

extension RamFormat on double {
  String formatRam({int decimalPlaces = 2}) => FormatUtils.formatRam(this, decimalPlaces: decimalPlaces);
}

extension RamFormatNullable on double? {
  String formatRam({int decimalPlaces = 2}) => FormatUtils.formatRam(this ?? 0, decimalPlaces: decimalPlaces);
}

extension RamFormatInt on int {
  String formatRam({int decimalPlaces = 2}) => FormatUtils.formatRam(toDouble(), decimalPlaces: decimalPlaces);
}

extension RamFormatIntNullable on int? {
  String formatRam({int decimalPlaces = 2}) =>
      FormatUtils.formatRam((this ?? 0).toDouble(), decimalPlaces: decimalPlaces);
}
