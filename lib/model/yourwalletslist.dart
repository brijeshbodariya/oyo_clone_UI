class YourWalletList {
  final String _title;
  final String _subTitleRupee;
  final String _imageUrl;
  final String _totalRupee;

  YourWalletList(
      this._title, this._subTitleRupee, this._imageUrl, this._totalRupee);

  String get title => _title;
  String get subTitleRupee => _subTitleRupee;
  String get image => _imageUrl;
  String get totalRupee => _totalRupee;
}
