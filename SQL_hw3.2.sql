create table if not exists Worker(
	id serial primary key,
	name varchar(40) not null
);

create table if not exists Dept(
	id serial primary key,
	title varchar(40) not null
);

create table if not exists DeptInfo(
	dept_id integer not null references Dept(id),
	chief_dept integer not null unique references Worker(id),
	constraint chief_dept primary key (dept_id, chief_dept)
);

create table if not exists WorkerInfo(
	worker_id integer primary key references Worker(id),
	dept_id integer not null references Dept(id),
	chief integer references DeptInfo(chief_dept)
);

