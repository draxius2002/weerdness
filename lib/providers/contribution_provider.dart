import 'package:flutter/foundation.dart';

import '../models/contribution_model.dart';
import '../helpers/db_helper.dart';

class Contributor with ChangeNotifier {
  List<ContributionModel> _items = [];

  List<ContributionModel> get items {
    return _items;
  }

  void addContributor(
    String pickedGoods,
    String pickedPcs,
    String pickedPerson,
  ) {
    final newContributor = ContributionModel(
      id: DateTime.now().toString(),
      goods: pickedGoods,
      pcs: pickedPcs,
      person: pickedPerson,
    );
    _items.add(newContributor);
    notifyListeners();
    DBHelper.insert('contribution', {
      'id': newContributor.id,
      'goods': newContributor.goods,
      'pcs': newContributor.pcs,
      'person': newContributor.person,
    });
  }

  Future<void> fetchAndSetContributor() async {
    final dataList = await DBHelper.getData('contribution');
    _items = dataList
        .map(
          (item) => ContributionModel(
            id: item['id'],
            goods: item['goods'],
            pcs: item['pcs'],
            person: item['person'],
          ),
        )
        .toList();
    notifyListeners();
  }
}
