import 'daily_training.dart';

class ScheduleBlock {
  String? id;
  String? name;
  String? obs;
  DateTime? startDate;
  DateTime? endDate;
  List<DailyTraining>? listDailyTraining;
  bool? isFinished;

  ScheduleBlock({
    this.id,
    this.name,
    this.obs,
    this.startDate,
    this.endDate,
    this.listDailyTraining,
    this.isFinished,
  });
}
