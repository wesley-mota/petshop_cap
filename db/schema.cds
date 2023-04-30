namespace petshop;

entity Pets {
 key ID : UUID @(Core.Computed : true);
 nome : String(50);
 raca : String(20); 
 cliente : Association to Clientes;
 }

 entity Clientes{
 key ID : UUID @(Core.Computed : true);
 cpf  : String(14);
 nome : String(50);
 dtnascimento : Date;
 ativo : Boolean;
 usrcriacao : String(10);
 dtcriacao : Date;
 hrcriacao : Time;
 pets : Association to many Pets on pets.cliente = $self;
 }








