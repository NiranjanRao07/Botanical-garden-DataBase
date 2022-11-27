create table garden(garden_id integer not null,garden_name varchar(30),garden_loc varchar(30),date_of_establishment datetime,primary key(garden_id));
describe garden;
create table horticultural_data(local_name varchar(30),scientific_name varchar(30),species varchar(30),genus varchar(30),family varchar(30),propagation varchar(30),primary key(scientific_name));

create table plant(plant_id varchar(30),scientific_name varchar(30),local_name varchar(30), primary key(plant_id),foreign key(scientific_name) references horticultural_data(scientific_name))

create table vouchers(voucher_id varchar(30),scientific_name varchar(30),collector_name varchar(30),habitat_site varchar(30),location varchar(30),primary key(voucher_id), foreign key(voucher_id) references plant(plant_id));

create table cultivated_in(plant_id varchar(30),garden_id integer,primary key(plant_id,garden_id),foreign key(plant_id) references plant(plant_id),foreign key(garden_id) references garden(garden_id));

create table plant_update(status_date datetime,status varchar(40),plant_id varchar(30),primary key(plant_id),foreign key(plant_id) references plant(plant_id));

create table supplier(supplier_id varchar(30),supplier_name varchar(30),primary key(supplier_id));

create table supplied_to(supplier_id varchar(30),garden_id integer,supply_date datetime,product varchar(30),primary key(supplier_id,garden_id),foreign key(supplier_id) references supplier(supplier_id),foreign key(garden_id) references garden(garden_id));

create table employee(E_name varchar(30),E_id varchar(30),designation varchar(30),garden_id integer,primary key(E_id),foreign key(garden_id) references garden(garden_id));

create table parent_plant(plant_id varchar(30),parent_plant_id varchar(30),primary key(plant_id,parent_plant_id),foreign key(plant_id) references plant(plant_id),foreign key(parent_plant_id) references plant(plant_id));

show tables;