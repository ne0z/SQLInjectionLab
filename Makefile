
deploy:
	@echo "Deploy docker container..."
	@docker-compose up -d --build
	@echo "Please wait..."
	@sleep 60
	@curl http://localhost:8080/sql-connections/setup-db.php -s

destroy:
	@docker-compose down -v
