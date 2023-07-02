// import 'package:dartz/dartz.dart';
// import 'package:medi_bee/features/forgot_password/data/dataSources/forgot_password_datasource.dart';
// import 'package:medi_bee/features/forgot_password/data/model/forgot_password_response_model.dart';
// import 'package:medi_bee/features/forgot_password/data/model/post_reset_password_response_model.dart';
// import 'package:medi_bee/features/forgot_password/domain/entity/forgot_password_request_entity.dart';
// import 'package:medi_bee/features/forgot_password/domain/entity/forgot_password_response_entity.dart';
// import 'package:medi_bee/features/forgot_password/domain/entity/post_reset_password_request_entity.dart';
// import 'package:medi_bee/features/forgot_password/domain/entity/post_reset_password_response_entity.dart';
// import '../../base_model/base_model.dart';

// abstract class ForgotPasswordRepository {
//   Future<ForgotPasswordResponseEntity?> forgotPassword(ForgotPasswordRequestEntity forgotPasswordRequestEntity);
//   Future<ResetPasswordResponseEntity?> resetPassword(ResetPasswordRequestEntity resetPasswordRequestEntity);
// }

// class ForgotPasswordRepositoryImpl implements ForgotPasswordRepository {
//   final ForgotPasswordDataSource _forgotPasswordDataSource = ForgotPasswordDataSourceImpl();

//   ForgotPasswordRepositoryImpl();

//   @override
//   Future<ForgotPasswordResponseEntity?> forgotPassword(ForgotPasswordRequestEntity forgotPasswordRequestEntity) async {
//     final Either<ForgotPasswordResponseModel, BaseError>? _response = await _forgotPasswordDataSource.forgotPassword(forgotPasswordRequestEntity);
//     ForgotPasswordResponseEntity? _passwordResponseEntity;
//     _response?.fold((passwordResponse) {
//       _passwordResponseEntity = passwordResponse.toEntity();
//     }, (error) => null);
//     return _passwordResponseEntity;
//   }

//   Future<ResetPasswordResponseEntity?> resetPassword(ResetPasswordRequestEntity resetPasswordRequestEntity) async {
//     final Either<ResetPasswordResponseModel, BaseError>? _response = await _forgotPasswordDataSource.resetPassword(resetPasswordRequestEntity);
//     ResetPasswordResponseEntity? _passwordResponseEntity;
//     _response?.fold((passwordResponse) {
//       _passwordResponseEntity = passwordResponse.toEntity();
//     }, (error) => null);
//     return _passwordResponseEntity;
//   }
// }
