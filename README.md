## Instructions to run:
- Install postgreSQL: `sudo apt install postgresql`
- Setup Database: 
    - Start postgresql using `sudo service postgresql start` OR `sudo systemctl start postgresql`
    - Switch to the postgres system user using: `sudo -i -u postgres`
    - Access postgresql prompt using: `psql`
    - Change password for user using: `ALTER USER postgres WITH PASSWORD 'password';`
    - Create database using: `CREATE DATABASE courseservice_db;`
    - Create database using: `CREATE DATABASE user_db;`
    - To verify: `\l`
- Go to courseservice directory from root using `cd courseservice`
- compile project using: `mvn clean install`
- run the project using: `mvn spring-boot:run`
- Create course table in db using: `curl -X POST http://localhost:8080/api/courses/init`

## Ports Info: 
- Search application.properties for info
- courseservice - 4321
- userservice - 4322
- notificationservice - 4323
