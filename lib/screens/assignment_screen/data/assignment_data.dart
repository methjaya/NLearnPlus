class AssignmentData {

  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Mobile Application Development -Ex01', '12/04/2023', '12/05/2023', 'Submitted'),
  AssignmentData(
      'Computing Group project - Ex01', '20/04/2023', '20/05/2023', 'Pending'),

];
