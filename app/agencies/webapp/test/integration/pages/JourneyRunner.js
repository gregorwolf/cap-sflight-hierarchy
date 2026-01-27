sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sflight/hierarchy/agencies/test/integration/pages/AgencyList",
	"sflight/hierarchy/agencies/test/integration/pages/AgencyObjectPage",
	"sflight/hierarchy/agencies/test/integration/pages/EmployeeObjectPage"
], function (JourneyRunner, AgencyList, AgencyObjectPage, EmployeeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sflight/hierarchy/agencies') + '/test/flpSandbox.html#sflighthierarchyagencies-tile',
        pages: {
			onTheAgencyList: AgencyList,
			onTheAgencyObjectPage: AgencyObjectPage,
			onTheEmployeeObjectPage: EmployeeObjectPage
        },
        async: true
    });

    return runner;
});

