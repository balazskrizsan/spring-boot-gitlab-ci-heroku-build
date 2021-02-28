#docker-compose commands
dc.u:
	docker-compose up
	$(call print.info)
dc.ud:
	docker-compose up -d
	$(call print.info)
dc.s:
	docker-compose stop
	$(call print.info)
dc.d:
	docker-compose down
	$(call print.info)
dc.ps:
	docker-compose ps

#docker commands
d.ce: #docker clear everything
	docker-compose down
	docker system prune -a

#docker image commands
di.l:
	docker image ls

di.i:
	echo "====================== IMAGES =========================" > \dev\null
	docker image ls
	echo "====================== CONTAINERS =========================" > \dev\null
	docker-compose ps

print.info = \
	echo "\n\n\n====================== IMAGES =========================\n"; \
	docker image ls; \
	echo "\n\n\n====================== CONTAINERS =========================\n"; \
	docker-compose ps
