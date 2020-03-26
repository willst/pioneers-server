# pioneers-server
Simple Docker container running [Pioneers](http://pio.sourceforge.net/) clone of Settlers of Catan

Run the server someplace public via the `pioneers-server-console` command. Download clients locally via the Pioneers sourceforge page.

On the client GUI, choose the option to "Join Private Game" and point to the IP or DNS Name where you are running the server.

Remember to publish port 5556 when running docker `docker run -it --rm -p 5556:5556 pioneers-server -P 3`