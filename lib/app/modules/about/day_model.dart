class DayModel {
  final String title;
  final int index;
  final bool isOpen;
  var _isSelected = false;

  get isSelected => _isSelected;

  set isSelected(value) {
    _isSelected = value;
  }

  DayModel({required this.index, required this.title, required this.isOpen});
}
