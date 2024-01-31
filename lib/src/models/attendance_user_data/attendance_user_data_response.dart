import 'dart:convert';

class AttendanceUserDataResponse {
  final String? jsonrpc;
  final int? id;
  final AttendanceUserDataResponseResult? result;

  AttendanceUserDataResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  factory AttendanceUserDataResponse.fromRawJson(String str) => AttendanceUserDataResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttendanceUserDataResponse.fromJson(Map<String, dynamic> json) => AttendanceUserDataResponse(
    jsonrpc: json["jsonrpc"],
    id: json["id"],
    result: json["result"] == null ? null : AttendanceUserDataResponseResult.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "jsonrpc": jsonrpc,
    "id": id,
    "result": result?.toJson(),
  };
}

class AttendanceUserDataResponseResult {
  final int? id;
  final String? employeeName;
  final String? employeeAvatar;
  final int? hoursToday;
  final int? totalOvertime;
  final int? lastAttendanceWorkedHours;
  final DateTime? lastCheckIn;
  final String? attendanceState;
  final int? hoursPreviouslyToday;
  final int? kioskDelay;
  final Attendance? attendance;
  final int? overtimeToday;
  final bool? usePin;
  final bool? displaySystray;
  final bool? displayOvertime;

  AttendanceUserDataResponseResult({
    this.id,
    this.employeeName,
    this.employeeAvatar,
    this.hoursToday,
    this.totalOvertime,
    this.lastAttendanceWorkedHours,
    this.lastCheckIn,
    this.attendanceState,
    this.hoursPreviouslyToday,
    this.kioskDelay,
    this.attendance,
    this.overtimeToday,
    this.usePin,
    this.displaySystray,
    this.displayOvertime,
  });

  factory AttendanceUserDataResponseResult.fromRawJson(String str) => AttendanceUserDataResponseResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttendanceUserDataResponseResult.fromJson(Map<String, dynamic> json) => AttendanceUserDataResponseResult(
    id: json["id"],
    employeeName: json["employee_name"],
    employeeAvatar: json["employee_avatar"],
    hoursToday: json["hours_today"],
    totalOvertime: json["total_overtime"],
    lastAttendanceWorkedHours: json["last_attendance_worked_hours"],
    lastCheckIn: json["last_check_in"] == null ? null : DateTime.parse(json["last_check_in"]),
    attendanceState: json["attendance_state"],
    hoursPreviouslyToday: json["hours_previously_today"],
    kioskDelay: json["kiosk_delay"],
    attendance: json["attendance"] == null ? null : Attendance.fromJson(json["attendance"]),
    overtimeToday: json["overtime_today"],
    usePin: json["use_pin"],
    displaySystray: json["display_systray"],
    displayOvertime: json["display_overtime"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "employee_name": employeeName,
    "employee_avatar": employeeAvatar,
    "hours_today": hoursToday,
    "total_overtime": totalOvertime,
    "last_attendance_worked_hours": lastAttendanceWorkedHours,
    "last_check_in": lastCheckIn?.toIso8601String(),
    "attendance_state": attendanceState,
    "hours_previously_today": hoursPreviouslyToday,
    "kiosk_delay": kioskDelay,
    "attendance": attendance?.toJson(),
    "overtime_today": overtimeToday,
    "use_pin": usePin,
    "display_systray": displaySystray,
    "display_overtime": displayOvertime,
  };
}

class Attendance {
  final DateTime? checkIn;
  final DateTime? checkOut;

  Attendance({
    this.checkIn,
    this.checkOut,
  });

  factory Attendance.fromRawJson(String str) => Attendance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
    checkIn: json["check_in"] == null ? null : DateTime.parse(json["check_in"]),
    checkOut: json["check_out"] == null ? null : DateTime.parse(json["check_out"]),
  );

  Map<String, dynamic> toJson() => {
    "check_in": checkIn?.toIso8601String(),
    "check_out": checkOut?.toIso8601String(),
  };
}
