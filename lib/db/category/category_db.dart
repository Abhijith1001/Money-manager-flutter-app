import 'package:money_manager_flutter/models/category/category_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

const category_db_name = 'catergory-database';

abstract class Categorydbfunctions{
  Future<List<CategoryModel>>getcategories();
  Future<void> insertcategory(CategoryModel value);
}


class categorydb implements Categorydbfunctions{
  

  @override
  Future<void> insertcategory(CategoryModel value) async {
   
   final _categorydb = await Hive.openBox<CategoryModel>(category_db_name);
   await _categorydb.add(value);
  }

  @override
  Future<List<CategoryModel>> getcategories() async{
    final _categorydb = await Hive.openBox<CategoryModel>(category_db_name);
    return _categorydb.values.toList();
  }
  
  
  
}