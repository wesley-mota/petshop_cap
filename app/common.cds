using petshop as ps from '../db/schema';

 // Annotate Clientes elements
 annotate ps.Clientes with {
 ID             @title : 'ID Cliente';
 cpf            @title : 'CPF';
 nome           @title : 'Nome';
 dtnascimento   @title : 'Data de Nascimento';
 ativo          @title : 'Ativo';
 } 

// Annotate Pets elements
 annotate ps.Pets with {
 ID @( 
      UI.Hidden,
      Common : {Text : nome}
 ); 
nome @title : 'Pet';
raca @title : 'Raça';
 }

/*annotate ps.Clientes with {
   pets @(Common : {
    //show text, not id for mitigation in the context of risks
    Text            : 'Teste',
    TextArrangement : #TextOnly,
    ValueList       : {
    Label          : 'Pets',
    CollectionPath : 'Pets',
    Parameters     : [
       {
       $Type : 'Common.ValueListParameterInOut',
       LocalDataProperty : pets.ID,
       ValueListProperty : 'ID'
       },
       {
       $Type : 'Common.ValueListParameterDisplayOnly',
       ValueListProperty : 'Teste Pet'
       }
    ]
    }
  });


 }

 */