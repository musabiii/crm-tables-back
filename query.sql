create table client(
    id serial primary key,
    title varchar(255),
    inn VARCHAR(8),
    phone VARCHAR(255),
    mail VARCHAR(255),
    address VARCHAR(255)
);

create table service(
    id serial primary key,
    title varchar(255),
    price DECIMAL,
    duration INT
);

create table document(
    id serial primary key,
    date time,
    client_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (client_id) references client (id),
    FOREIGN KEY (service_id) references service (id)
);

INSERT INTO
    client (title, inn, phone, mail, address)
values
    (
        'balt1',
        '1234561',
        '89221',
        'musabi@live.com1',
        'lenina 4'
    );

INSERT INTO
    client (title, inn, phone, mail, address)
values
    (
        "Alexander City",
        "3256476",
        "(230) 689-5625",
        "jonas.batz@hotmail.com",
        "Palermo"
    );

insert into
    service (title, price, duration)
values
    ('cleaning', 522.2, 8);

insert into
    document (date, client_id, service_id)
VALUES
    ('24:00:00', 1, 1);
