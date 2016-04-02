This is a minimal docker container (<23mb) for the Stoplight.io Prism proxy.

You can learn more about Stoplight.io and Prism here: http://stoplight.io/prism

Usage
=====

Basic
-----

    docker run webridge/stoplight-prism --version

What you really need
--------------------
Named container running in the background

    docker run -d \
        --name=my_proxy \
        -p 4010:4010 \
        -v $(pwd)/config.json:/app/config.json \
        webridge/stoplight-prism run --config=/app/config.json
        
Logging
-------

    # All logs
    docker logs my_proxy
    # Last 10 lines
    docker logs --tail=10 my_proxy
