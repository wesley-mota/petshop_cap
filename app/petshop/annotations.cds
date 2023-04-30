using PetshopService as service from '../../srv/petshop-service';

 // Risk List Report Page
 annotate PetshopService.Clientes with @(UI : {
    HeaderInfo : {
       TypeName : 'Cliente',
       TypeNamePlural : 'Clientes',
       Title : {
          $Type : 'UI.DataField',
          Value : nome
       }
    },
    SelectionFields : [pets.nome],
    Identification : [{Value : nome}],
    // Define the table columns
    LineItem : [
       {Value : nome},
       {Value : pets.nome},
       {Value : cpf},
    ],
 });
 // PetShop Object Page
 annotate PetshopService.Clientes with @(UI : {
     Facets : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Main',
        Target : '@UI.FieldGroup#Main',
     }],
     FieldGroup #Main : {Data : [
       {Value : pets.ID},
       {Value : pets.nome},
       {Value : pets.raca}
    ]},
 });