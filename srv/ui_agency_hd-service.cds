using {dmo} from '../db/schema';


@(requires: 'authenticated-user')
service ui_agency_hd_Service {

  @odata.draft.enabled
  entity Agency   as projection on dmo.agency_a_hd;

  // @odata.draft.enabled
  @hierarchy
  entity Employee as projection on dmo.employ_a_hd;

}
/*
// Manual hierarchy definition
annotate ui_agency_hd_Service.Employee with @Aggregation.RecursiveHierarchy #EmployeeHierarchy: {
  NodeProperty            : ID, // identifies a node, usually the key
  ParentNavigationProperty: manager // navigates to a node's parent
};

extend ui_agency_hd_Service.Employee with @(
  // The computed properties expected by Fiori to be present in hierarchy entities
  Hierarchy.RecursiveHierarchy #EmployeeHierarchy        : {
    LimitedDescendantCount: LimitedDescendantCount,
    DistanceFromRoot      : DistanceFromRoot,
    DrillState            : DrillState,
    LimitedRank           : LimitedRank
  },
  // Disallow filtering on these properties from Fiori UIs
  Capabilities.FilterRestrictions.NonFilterableProperties: [
    'LimitedDescendantCount',
    'DistanceFromRoot',
    'DrillState',
    'LimitedRank'
  ],
  // Disallow sorting on these properties from Fiori UIs
  Capabilities.SortRestrictions.NonSortableProperties    : [
    'LimitedDescendantCount',
    'DistanceFromRoot',
    'DrillState',
    'LimitedRank'
  ],
) columns { // Ensure we can query these columns from the database
  null as LimitedDescendantCount : Int16,
  null as DistanceFromRoot       : Int16,
  null as DrillState             : String,
  null as LimitedRank            : Int16
};
*/
