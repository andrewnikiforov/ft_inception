all:
	docker-compose -f srcs/docker-compose.yml up --build

clean:
	docker-compose -f srcs/docker-compose.yml down
	rm -rf /home/omillan/data
fclean: clean
	docker system prune -a

re: fclean all
