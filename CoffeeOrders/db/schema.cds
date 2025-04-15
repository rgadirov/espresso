using { sap.common.CodeList } from '@sap/cds/common';

namespace espressocoffee;

entity CoffeeOrdersStatusCodeList : CodeList {
  @Common.Text : { $value: name, ![@UI.TextArrangement]: #TextOnly }
  key code : String(20);
  criticality : Integer;
}

entity CoffeeOrders {
  key ID: UUID;
  customerName: String(255);
  orderTime: Timestamp;
  status: Association to CoffeeOrdersStatusCodeList;
  coffeeType: Association to many CoffeeTypes on coffeeType.coffeeOrders = $self;
}

entity CoffeeTypes {
  key ID: UUID;
  name: String(255);
  price: Decimal;
  coffeeOrders: Association to CoffeeOrders;
}
