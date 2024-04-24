CREATE TABLE Rendelesek
(VasarloID INT IDENTITY PRIMARY KEY,
vasarlo_neve varchar(100) MASKED WITH (Function = 'default()'),
felhaszn_nev varchar(100) MASKED WITH (Function = 'partial(0,"XXXX",2)'),
email_cim varchar(100) MASKED WITH (function = 'email()'),
iranyitoszam int MASKED WITH (Function = 'default()'),
telepules varchar(100),
telefonszam varchar(100) MASKED WITH (function = 'partial(4,"XXXXXXX,1)'),
rendelesi_mennyiseg int MASKED WITH (function = 'random(1,10)'),
JoinDate date MASKED WITH (Function = 'default()')
);