using {
  cuid,
  managed
} from '@sap/cds/common';

namespace dmo;

entity agency_a_hd : cuid, managed {
  name          : String(100);
  street        : String(100);
  postal_code   : String(10);
  city          : String(100);
  country_code  : String(3);
  phone_number  : String(20);
  email_address : String(100);
  web_address   : String(100);
  _Employees    : Association to many employ_a_hd
                    on _Employees._Agency = $self;
}

entity employ_a_hd : cuid, managed {
  first_name           : String(50);
  last_name            : String(50);
  salary               : Decimal(15, 2);
  salary_currency      : String(3);
  manager              : Association to one employ_a_hd;
  sibling_order_number : Integer;
  _Agency              : Association to one agency_a_hd;
}
