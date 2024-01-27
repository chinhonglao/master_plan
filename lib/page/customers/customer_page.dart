import 'package:master_plan/data/models/request_model/add_customer_req_model.dart';
import 'package:master_plan/index.dart';
import 'package:master_plan/page/customers/components/add_customer_form.dart';
import 'package:master_plan/page/customers/components/customer_row_data.dart';

import 'components/customer_table_header.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseTabPage(
      title: menu_customer,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: RoundedButton(
            text: 'បន្ថែមអតិថិជន',
            textColor: Colors.blue,
            leadingIcon: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Icon(
                Icons.group_add,
                color: Colors.blue,
              ),
            ),
            onPress: () {
              DialogMethod().showBaseDialog(
                context,
                title: 'បន្ថែមអតិថិជន',
                formWidth: 700,
                child: AddCustomerForm(
                  reqModel: AddCustomerReqModel(
                    id: '0',
                    name: '',
                    contactList: [
                      CustomerContactPerson.mock('ចាន់ ដារ៉ា'),
                    ],
                  ),
                ),
                barrierDismissible: false,
              );
            },
          ),
        ),
      ],
      child: Column(
        children: [
          CustomerTableHeader(),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return CustomerRowDataWidget(context, index: index + 1);
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
