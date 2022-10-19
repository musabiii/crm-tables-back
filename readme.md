### CRM TABLES server side
client side https://github.com/musabiii/crm-tables-front

#### tech stack
express + postgresql

#### comands
start app
```bash
npm start
```

run dev
```bash
npm run dev
```

create container by Dockerfile
```bash
docker build .
```

create container by docker-compose.yml
```bash
docker-compose up -d
```

recreate container with no cash
```bash
docker-compose up --force-recreate
```

#### description
the server side of crm tables

for database use postgreSQL

ERD schema of database

![image](/img/erd.png)