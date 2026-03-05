Springboot microservices:
https://github.com/uditha88/springboot_webflux
https://github.com/uditha88/springboot_webflux_2

git for common files including this file:



1)
Never ever name docker services with _ underscore.
It inttroduces docker networking issue.
Once "webflux_2" service name kills hours of me

claude.ai says:
"This is very likely your issue. Docker's embedded DNS has problems resolving hostnames with underscores (_). It's not RFC-compliant.
Fix — rename the service to use a hyphen"

2)
when 2 services wanted to call each other, though same network is shared in 2 docker-compose files, 2 services could not call each other.
i had to introduce single docker compose which u can see in the parent directory "springboot_webflux"