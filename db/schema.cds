using { Currency, managed, sap } from '@sap/cds/common';
namespace sap.capire.student;

entity Student {
    key email : String(250);
    first_name : String(111);
    last_name :  String(111);
    sign_up_dt : Date; //Date should be entered in the format YYYY-MM-DD
    current_year : Integer;
    stream : String(111);
    Institution : Association to Institution;
}

entity Institution {
    key ID : Integer;
    name : String(250);
    student : Association to many Student on student.Institution = $self;
}