1)
Springboot microservices:
https://github.com/uditha88/springboot_webflux
https://github.com/uditha88/springboot_webflux_2

git for common files including this file:


2)
when 2 services wanted to call each other, though same network is shared in 2 docker-compose files, 2 services could not call each other.
i had to introduce single docker compose which u can see in the parent directory "springboot_webflux"

3)
Never ever name docker services with _ underscore.
It inttroduces docker networking issue.
Once "webflux_2" service name kills hours of me

claude.ai says:
"This is very likely your issue. Docker's embedded DNS has problems resolving hostnames with underscores (_). It's not RFC-compliant.
Fix — rename the service to use a hyphen"


4)
postman calls
service 1:
http://127.0.0.1:8081/getUsersFlux
service 2:
http://127.0.0.1:8082/writeDeveloper
service 1 to service 2 integration:
http://127.0.0.1:8081/callGetUsersFlux2



5) 
run local

front-end ==>
cd D:\projectsNew\website\react_2025\react_2025
npm run dev
http://localhost:3003/

gateway ==>
cd D:\projectsNew\website\gateway
docker compose up

fastapi(BFF) ===>
cd D:\projectsNew\websit
./dev_run.sh (change file to get bacend image and run it with compose)

springboot ===>
cd D:\projectsNew\springboot_webflux\webflux_common
docker compose up