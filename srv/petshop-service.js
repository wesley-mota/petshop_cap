
// Imports
const cds = require("@sap/cds");

/**
   * The service implementation with all service handlers
   */
module.exports = cds.service.impl(async function () {
   // Define constants for the Risk and BusinessPartners entities from the risk-service.cds file
   const { Clientes } = this.entities;

   /**
   * Set criticality after a READ operation on /risks
   */
    this.after("READ", Clientes, (data) => {
       const clientes = Array.isArray(data) ? data : [data];

   });

   
});