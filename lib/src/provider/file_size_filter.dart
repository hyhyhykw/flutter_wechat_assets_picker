import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class FileSizeFilter extends PMFilter {
  FileSizeFilter(this.imageMaxSize, this.videoMaxSize, {this.filterOptions});

  final int imageMaxSize;
  final int videoMaxSize;
  final PMFilter? filterOptions;

  @override
  Map<String, dynamic> childMap() {
    return filterOptions?.childMap() ?? {};
  }

  @override
  BaseFilterType get type => filterOptions?.type ?? BaseFilterType.custom;

  @override
  PMFilter updateDateToNow() {
    return filterOptions ?? this;
  }
}
