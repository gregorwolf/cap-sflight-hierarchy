using {ui_agency_hd_Service as service} from '../srv/ui_agency_hd-service';

annotate service.Agency with @(UI: {
  SelectionFields    : [
    name,
    country_code
  ],
  LineItem           : [
    {Value: ID},
    {Value: name},
    {Value: country_code},
  ],
  FieldGroup #Details: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {Value: name},
      {Value: country_code},
      {Value: street},
      {Value: city},
    ]
  },
  Facets             : [
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'Details',
      Target: '@UI.FieldGroup#Details'
    },
    {
      $Type : 'UI.ReferenceFacet',
      Label : 'Employees',
      Target: '_Employees/@UI.LineItem'
    },
  ],

});

annotate service.Employee with @(UI: {
  SelectionFields: [
    first_name,
    last_name,

  ],
  LineItem       : [
    {Value: ID},
    {Value: first_name},
    {Value: last_name},
    {Value: manager_ID},
  ],
});
