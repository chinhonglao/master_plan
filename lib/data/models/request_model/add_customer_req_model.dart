class AddCustomerReqModel {
  final String id;
  final String name;
  final List<CustomerContactPerson> contactList;
  AddCustomerReqModel({
    required this.id,
    required this.name,
    required this.contactList,
  });
}

class CustomerContactPerson {
  final String id;

  final String name;
  final String phone;
  final String address;
  final String note;
  final bool isActive;
  CustomerContactPerson({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.note,
    required this.isActive,
  });

  factory CustomerContactPerson.mock(String name) {
    return CustomerContactPerson(
      id: '0',
      name: name,
      phone: '012 123 123',
      address: 'Veng Sreng, Chom Chao, Phnom Peng',
      note: '',
      isActive: true,
    );
  }
}
