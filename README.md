# Registry Web UI

**Important**

> The environment variable `REGISTRY_BASIC_AUTH` should be provided before starting the service.

Make sure the registry container running is `registry-srv` and the network is `registry_default`.
You can try the following command to find out if the registry-srv is running:

    $ docker inspect registry-srv

You should see the container information and the network info as below:

    "Networks": {
        "registry_default": {
            "IPAMConfig": null,
            "Links": null,
            "Aliases": [
                "registry",
                "96455ad39f43"
            ],
            ...
        }
    }


If these values are different you need to change the `docker-compose.yml` 
to reflect the current registry container setting.