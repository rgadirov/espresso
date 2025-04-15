using { espressocoffee } from '../db/schema';

service EspressoService {
  @odata.draft.enabled
  entity CoffeeOrders as projection on espressocoffee.CoffeeOrders;
  entity CoffeeTypes as projection on espressocoffee.CoffeeTypes;
}