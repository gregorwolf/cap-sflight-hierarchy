sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"sflight/hierarchy/employee/test/integration/pages/EmployeeList",
	"sflight/hierarchy/employee/test/integration/pages/EmployeeObjectPage"
], function (JourneyRunner, EmployeeList, EmployeeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('sflight/hierarchy/employee') + '/test/flpSandbox.html#sflighthierarchyemployee-tile',
        pages: {
			onTheEmployeeList: EmployeeList,
			onTheEmployeeObjectPage: EmployeeObjectPage
        },
        async: true
    });

    return runner;
});

