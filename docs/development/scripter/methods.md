---
title: Methods
---

There are two types of methods available: Methods that are available for all lua scripts, 
and methods that are available for the generic scripter only. Below all methods are described.

### Global methods

#### getRemoteAddr
Return the ip address of the connecting client.

#### getLocalAddr
Return the ip address of the agent that is connected to.

#### getDatetime
Return the current datetime of the Honeytrap server

#### getFileDownload - url, path
Call this method with an url to download a file from and a path to write the file too.

#### getAbTest - key
Get a random ab-test for a given key

#### doLog - logType, message
Write to the log of Honeytrap where you should pass the logging type and the message.

#### channelSend - data
Send a set of key-values as jsonstring to all channels.

#### getFolder
Return the folder where the scripts are located in.


### Generic methods

#### getRequest - withBody
Returns a http request that is sent by the connection if there is one.
The following fields are returned in JSON-stringified form:
```json
{
 "method": req.Method
 "header": req.Header
 "host": req.Host
 "form": req.Form
 "body": req.Body
}
 ```
Where body is only set if 'withBody' is set to "1"

#### restWrite - status, response, headers
Write a REST-http message back over the connection, passing along:
 
 - status: The status number, for instance 200
 - response: The response object, altered with the correct data
 - headers: A json-string containing different headers, ie: 
    ``` { "content-type": "application/json", "server": "ripple-json-rpc/rippled-0.90.1" } ``` 