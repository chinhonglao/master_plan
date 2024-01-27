import 'package:master_plan/data/models/request_model/add_item_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/item_management_page/components/add_item_form.dart';

import 'components/item_row_data.dart';
import 'components/item_table_header.dart';

class ItemManagementPage extends StatelessWidget {
  const ItemManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_item,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: RoundedButton(
            text: 'បន្ថែមទំនិញ',
            textColor: Colors.blue,
            leadingIcon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.add_shopping_cart_rounded,
                color: Colors.blue,
              ),
            ),
            onPress: () {
              DialogMethod().showBaseDialog(
                context,
                title: 'បន្ថែមទំនិញ',
                child: AddItemForm(
                  reqModel: AddItemReqModel(),
                ),
                barrierDismissible: false,
              );
            },
          ),
        ),
      ],
      child: Column(
        children: [
          ItemTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ItemRowDataWidget(context, index: index + 1);
              },
              separatorBuilder: (context, index) => SizedBox.shrink(),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
