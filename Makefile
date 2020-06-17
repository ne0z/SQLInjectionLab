
deploy:
	@echo "Deploy docker container..."
	@docker-compose up -d --build
	@echo "Please wait..."
	@sleep 60
	@curl http://localhost:31334/sql-connections/setup-db.php -s > /dev/null

destroy:
	@docker-compose down -v
