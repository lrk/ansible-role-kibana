Ansible Role: Kibana ([lrk.kibana](https://galaxy.ansible.com/lrk/kibana/))
=========

An Ansible Role that install [Kibana](https://www.elastic.co/products/kibana).

Supported OSes
--------------
- Centos 7

Requirements
------------
None.

Role Variables
--------------

Available variables along with default values are listed below (see `defaults/main.yml`)

```yml
---
# defaults file for ansible-role-kibana/

kibana_version: "5.x"

# Kibana is served by a back end server. This controls which port to use.
# Default to 5601
kibana_server_port: 5601

# The host to bind the server to.
# Default to 0.0.0.0
kibana_server_host: '0.0.0.0'

# If you are running kibana behind a proxy, and want to mount it at a path,
# specify that path here. The basePath can't end in a slash.
# Default to empty
kibana_server_base_path: ""

# The maximum payload size in bytes on incoming server requests.
# Default to 1048576
kibana_server_max_payload_bytes: 1048576

# The Elasticsearch instance to use for all your queries.
# Default to: http://localhost:9200
kibana_elasticsearch_url: "http://localhost:9200"

# preserve_elasticsearch_host true will send the hostname specified in `elasticsearch`. If you set it to false,
# then the host you use to connect to *this* Kibana instance will be sent.
# Default to true
kibana_elasticsearch_preserve_host: true

# Kibana uses an index in Elasticsearch to store saved searches, visualizations
# and dashboards. It will create a new index if it doesn't already exist.
# Default to .kibana
kibana_index: ".kibana"

# The default application to load.
# Default to discover
kibana_default_app_id: "discover"

# If your Elasticsearch is protected with basic auth, these are the user credentials
# used by the Kibana server to perform maintenance on the kibana_index at startup. Your Kibana
# users will still need to authenticate with Elasticsearch (which is proxied through
# the Kibana server)
# Default to null
kibana_elasticsearch_username: null
kibana_elasticsearch_password: null

# SSL for outgoing requests from the Kibana Server to the browser (PEM formatted)
# Default to null
kibana_server_ssl_cert: null
kibana_server_ssl_key: null

# Optional setting to validate that your Elasticsearch backend uses the same key files (PEM formatted)
# Default to null
kibana_elasticsearch_ssl_cert: null
kibana_elasticsearch_ssl_key: null

# If you need to provide a CA certificate for your Elasticsearch instance, put
# the path of the pem file here.
# Default to null
kibana_elasticsearch_ssl_ca: null

# Set to false to have a complete disregard for the validity of the SSL
# certificate.
# Default to true
kibana_elasticsearch_ssl_verify: true

# Time in milliseconds to wait for elasticsearch to respond to pings, defaults to
# request_timeout setting
# Default to 1500
kibana_elasticsearch_ping_timeout: 1500

# Time in milliseconds to wait for responses from the back end or elasticsearch.
# This must be > 0
# Default to 30000
kibana_elasticsearch_request_timeout: 30000

# Header names and values that are sent to Elasticsearch. Any custom headers cannot be overwritten
# by client-side headers.
# elasticsearch.customHeaders: {}

# Time in milliseconds for Elasticsearch to wait for responses from shards.
# Set to 0 to disable.
# Default to 0
kibana_elasticsearch_shard_timeout: 0

# Time in milliseconds to wait for Elasticsearch at Kibana startup before retrying
# Default to 5000
kibana_elasticsearch_startup_timeout: 5000

# Set the path to where you would like the process id file to be created.
# Default to: "/var/run/kibana.pid"
kibana_pid_file: "/var/run/kibana.pid"

# If you would like to send the log output to a file you can set the path below.
# Default to stdout
kibana_logging_dest: "stdout"

# Set this to true to suppress all logging output.
# Default to false
kibana_logging_silent: false

# Set this to true to suppress all logging output except for error messages.
# Default to false
kibana_logging_quiet: false

# Set this to true to log all events, including system usage information and all requests.
# Default to false
kibana_logging_verbose: false

```

Dependencies
------------

None

Example Playbook
----------------

```
    - hosts: servers
      roles:
         - lrk.kibana
```

 License
 -------

 Apache License Version 2.0

 References
 ----------

- [Kibana](https://www.elastic.co/products/kibana)

Author Information
------------------
This role was created by [Lrk](https://github.com/lrk).
