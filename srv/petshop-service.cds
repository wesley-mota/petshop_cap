using { petshop as ps } from '../db/schema';

 @path: 'service/shop'
 service PetshopService{
 entity Clientes as projection on ps.Clientes;
     annotate Clientes with @odata.draft.enabled;
 entity Pets as projection on ps.Pets;
     annotate Pets with @odata.draft.enabled;
 }