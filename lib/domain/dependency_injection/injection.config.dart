// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:classroom/repository/classroom/classroom_repo.dart' as _i4;
import 'package:classroom/repository/classroom/i_classroom_repo.dart'
    as _i3;
import 'package:classroom/repository/student/i_student_repo.dart' as _i5;
import 'package:classroom/repository/student/student_repo.dart' as _i6;
import 'package:classroom/repository/subject/i_subject_repo.dart' as _i7;
import 'package:classroom/repository/subject/subject_repo.dart' as _i8;
import 'package:classroom/provider/classroom_provider.dart' as _i11;
import 'package:classroom/provider/student_provider.dart' as _i9;
import 'package:classroom/provider/subject_provider.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.IClassroomRepo>(() => _i4.StudentRepo());
    gh.factory<_i5.IStudentRepo>(() => _i6.StudentRepo());
    gh.factory<_i7.ISubjectRepo>(() => _i8.SubjectRepo());
    gh.factory<_i9.StudentProvider>(
        () => _i9.StudentProvider(studentRepo: gh<_i5.IStudentRepo>()));
    gh.factory<_i10.SubjectProvider>(
        () => _i10.SubjectProvider(subjectRepo: gh<_i7.ISubjectRepo>()));
    gh.factory<_i11.ClassroomProvider>(
        () => _i11.ClassroomProvider(classroomRepo: gh<_i3.IClassroomRepo>()));
    return this;
  }
}
