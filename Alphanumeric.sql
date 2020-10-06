CREATE TABLE TestAlpha (
    Alphanumeric varchar(255) 
);

insert into TestAlpha
  (Alphanumeric)
  values ('1111AAAAAA');
insert into TestAlpha
  (Alphanumeric)
  values ('22BBBBB');
insert into TestAlpha
  (Alphanumeric)
  values ('33333333CC');
insert into TestAlpha
  (Alphanumeric)
  values ('44444DDD');
insert into TestAlpha
  (Alphanumeric)
  values ('5E');

Select Alphanumeric from TestAlpha;

Select Alphanumeric, LEFT(Alphanumeric, PATINDEX ('%[0-9][^0-9]%', Alphanumeric)) as Number,
  LTRIM(RIGHT(Alphanumeric, LEN(Alphanumeric) - PATINDEX('%[0-9][^0-9]%', Alphanumeric ))) As Letters
from TestAlpha 

