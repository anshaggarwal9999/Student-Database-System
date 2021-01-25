using { sap.capire.student as my } from '../db/schema';

service StudentService {
    @Capabilities: { Insertable:true, Deletable:true, Updatable:false }
    entity Student as projection on my.Student;
    @readonly entity Institution as projection on my.Institution;
}