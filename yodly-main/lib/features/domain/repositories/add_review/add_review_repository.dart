import 'package:yodly/features/domain/entites/add_review/add_service_entity.dart';
import 'package:yodly/features/domain/entites/add_review/upload_file_entity.dart';
import 'package:yodly/features/domain/models/add_review_model.dart';

abstract class AddServiceRepository {
  Future<void> addService(AddServiceEntity addServiceEntity);
  Future<List<AddReviewModel>> addCategory();
}

abstract class UploadFileRepository {
  Future<void> uploadfile(UploadFiledEntity uploadFiledEntity);
}
