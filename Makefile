all:
	docker-compose -f srcs/docker-compose.yml --env-file ./srcs/.env up --build

clean:
	docker-compose -f srcs/docker-compose.yml down
	docker volume rm wordpress
	docker volume rm mysql
	docker volume rm my_site_storage
fclean: clean
	rm -rf /home/omillan/data/wordpress/*
	rm -rf /home/omillan/data/mysql/*
	rm -rf /home/omillan/data/my_site_storage/*
	docker system prune -a --volumes
re: fclean all
