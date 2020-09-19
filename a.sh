a=`docker ps | cut -f 1 -d ' ' | tail -1`
			
if [[ "$s1" == "CONTAINER" ]]; then
	docker run -d -p 81:80 my-apache2
else
	docker stop `docker ps | cut -f 1 -d ' ' | tail -1`
	docker run -d -p 81:80 my-apache2
fi
