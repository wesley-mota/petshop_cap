sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'petshop/test/integration/FirstJourney',
		'petshop/test/integration/pages/ClientesList',
		'petshop/test/integration/pages/ClientesObjectPage',
		'petshop/test/integration/pages/PetsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ClientesList, ClientesObjectPage, PetsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('petshop') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheClientesList: ClientesList,
					onTheClientesObjectPage: ClientesObjectPage,
					onThePetsObjectPage: PetsObjectPage
                }
            },
            opaJourney.run
        );
    }
);