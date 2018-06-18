---
title: Config
---

Honeytrap has support for quite some services, it can however occur that you wish to add features
to an existing service or that you wish to add a new service/protocol all together.
This can easily be done without any knowledge of Go, by adding a scripter and registering it 
though the configuration.

To add a scripter to an existing service you first need to make sure that a scripter is activated 
through the configuration: This can be done by making sure the following is present in the config.toml
```
[scripter.lua]
type="lua"
folder="scripts"
```
Where 'lua' gives the type of scripter (At this time only Lua is available) and 'folder' gives the 
directory in which the system should look for potential scripts.


### Extending a service
When you wish to extend a service you need to create lua scripts as explained in 'Implementation' 
and make sure that the service in the config.toml has the scripter connected by adding
```
scripter="lua"
```
below the initialization of a service, turning:
```
[service.http]
type="http"
```
into:
```
[service.http]
type="http"
scripter="lua"
```

### Adding support for a new protocol/exploit
To create a custom service that is able to handle a new type of protocol/exploit, you need to create
a script in the generic folder as described in the 'Implementation' chapter and add the following to 
the config.toml to connect the script to the port.
```
[[port]]
port="tcp/8080"
services=["generic"]
```
Where you only need to change the port number, in this case 8080, to the port number to which you wish 
to listen.