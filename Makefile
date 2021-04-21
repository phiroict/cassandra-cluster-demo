init:
	docker run --rm -d --name tmp cassandra:3.11.10
	docker cp tmp:/etc/cassandra etc_cassandra-3.11.10_vanilla
	docker stop tmp
	sudo mkdir -p etc/cass1 etc/cass2 etc/cass3
	sudo cp -a etc_cassandra-3.11.10_vanilla/* etc/cass1
	sudo cp -a etc_cassandra-3.11.10_vanilla/* etc/cass2
	sudo cp -a etc_cassandra-3.11.10_vanilla/* etc/cass3
start:
	docker-compose up
