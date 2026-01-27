sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sflight.hierarchy.agencies',
            componentId: 'EmployeeObjectPage',
            contextPath: '/Agency/_Employees'
        },
        CustomPageDefinitions
    );
});