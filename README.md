Ansible Role: Kibana ([lrk.kibana](https://galaxy.ansible.com/lrk/kibana/))
=========
[![Build Status](https://travis-ci.org/lrk/ansible-role-kibana.svg?branch=master)](https://travis-ci.org/lrk/ansible-role-kibana)
[![Galaxy](https://img.shields.io/badge/galaxy-lrk.kibana-blue.svg)](https://galaxy.ansible.com/lrk/kibana)
![Ansible](https://img.shields.io/ansible/role/d/21513.svg)
![Ansible](https://img.shields.io/badge/dynamic/json.svg?label=min_ansible_version&url=https%3A%2F%2Fgalaxy.ansible.com%2Fapi%2Fv1%2Froles%2F21513%2F&query=$.min_ansible_version)
![Ansible](https://img.shields.io/ansible/quality/21513)

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

# Kibana is served by a back end server. This setting specifies the port to use.
# Default to 5601
kibana_server_port: 5601

# Specifies the address to which the Kibana server will bind. IP addresses and host names are both valid values.
# The default is 'localhost', which usually means remote machines will not be able to connect.
# To allow connections from remote users, set this parameter to a non-loopback address.
# Default to localhost
kibana_server_host: "localhost"

# Enables you to specify a path to mount Kibana at if you are running behind a proxy. This only affects
# the URLs generated by Kibana, your proxy is expected to remove the basePath value before forwarding requests
# to Kibana. This setting cannot end in a slash.
# Default to empty
kibana_server_base_path: ""

# The maximum payload size in bytes for incoming server requests.
# Default to 1048576
kibana_server_max_payload_bytes: 1048576

# The Kibana server's name.  This is used for display purposes.
#Default to inventory_hostname
kibana_server_name: "{{ inventory_hostname }}"

# The URL of the Elasticsearch instance to use for all your queries.
# Default to: http://localhost:9200
kibana_elasticsearch_url: "http://localhost:9200"

# When this setting's value is true Kibana uses the hostname specified in the server.host
# setting. When the value of this setting is false, Kibana uses the hostname of the host
# that connects to this Kibana instance.
# Default to true
kibana_elasticsearch_preserve_host: true

# Kibana uses an index in Elasticsearch to store saved searches, visualizations and
# dashboards. Kibana creates a new index if the index doesn't already exist.
# Default to .kibana
kibana_index: ".kibana"

# The default application to load.
# Default to discover
kibana_default_app_id: "discover"

# If your Elasticsearch is protected with basic authentication, these settings provide
# the username and password that the Kibana server uses to perform maintenance on the Kibana
# index at startup. Your Kibana users still need to authenticate with Elasticsearch, which
# is proxied through the Kibana server.
# Default to null
kibana_elasticsearch_username: null
kibana_elasticsearch_password: null

# Enables SSL and paths to the PEM-format SSL certificate and SSL key files, respectively.
# These settings enable SSL for outgoing requests from the Kibana server to the browser.
# Default to false
kibana_server_ssl_enabled: false
# Default to null
kibana_server_ssl_certificate: null
kibana_server_ssl_key: null

# Optional settings that provide the paths to the PEM-format SSL certificate and key files.
# These files validate that your Elasticsearch backend uses the same key files.
# Default to null
kibana_elasticsearch_ssl_certificate: null
kibana_elasticsearch_ssl_key: null


# Optional setting that enables you to specify a path to the PEM file for the certificate
# authority for your Elasticsearch instance.
# Default to null
kibana_elasticsearch_ssl_certificate_authorities: null

# To disregard the validity of SSL certificates, change this setting's value to 'none'.
kibana_elasticsearch_ssl_verification_mode: "full"

# Time in milliseconds to wait for Elasticsearch to respond to pings. Defaults to the value of
# the elasticsearch.requestTimeout setting.
# Default to 1500
kibana_elasticsearch_ping_timeout: 1500

# Time in milliseconds to wait for responses from the back end or Elasticsearch. This value
# must be a positive integer.
# Default to 30000
kibana_elasticsearch_request_timeout: 30000

# List of Kibana client-side headers to send to Elasticsearch. To send *no* client-side
# headers, set this value to [] (an empty list).
#elasticsearch.requestHeadersWhitelist: [ authorization ]

# Header names and values that are sent to Elasticsearch. Any custom headers cannot be overwritten
# by client-side headers, regardless of the elasticsearch.requestHeadersWhitelist configuration.
# elasticsearch.customHeaders: {}

# Time in milliseconds for Elasticsearch to wait for responses from shards. Set to 0 to disable.
# Default to 0
kibana_elasticsearch_shard_timeout: 0

# Time in milliseconds to wait for Elasticsearch at Kibana startup before retrying.
# Default to 5000
kibana_elasticsearch_startup_timeout: 5000

# Specifies the path where Kibana creates the process ID file.
# Default to: "/var/run/kibana.pid"
kibana_pid_file: "/var/run/kibana.pid"

# Enables you specify a file where Kibana stores log output.
# Default to stdout
kibana_logging_dest: "stdout"

# Set the value of this setting to true to suppress all logging output.
# Default to false
kibana_logging_silent: false

# Set the value of this setting to true to suppress all logging output other than error messages.
# Default to false
kibana_logging_quiet: false

# Set the value of this setting to true to log all events, including system usage information
# and all requests.
# Default to false
kibana_logging_verbose: false

# Set the interval in milliseconds to sample system and process performance
# metrics. Minimum is 100ms.
# Defaults to 5000.
kibana_ops_interval: 5000

# The default locale. This locale can be used in certain circumstances to substitute any missing
# translations.
# Default to "en"
kibana_i18n_default_locale: "en"

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
