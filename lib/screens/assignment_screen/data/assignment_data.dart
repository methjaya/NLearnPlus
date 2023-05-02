class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'Assignment 01', 'Mobile Application Development', '12/04/2023', '12/05/2023', 'Submitted'),
  AssignmentData(
      'Group Assignment 01', 'Computing group project', '20/04/2023', '20/05/2023', 'Pending'),

];
