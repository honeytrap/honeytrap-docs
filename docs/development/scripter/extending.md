---
title: Extending a service
---

If you wish to alter the outcome of an existing service or extend functionality of an existing service, 
you have the possibility to add scripts that do this.

Implement a scripter in an existing service
----
 - Add the scripter to the configuration of the service as given in the configuration-docs.
 - Add ```scr scripter.Scripter``` to the struct of the service
 - Add the WithScripter func to service: 
 
 ```
 func (s *httpService) SetScripter(scr scripter.Scripter) {
    	s.scr = scr
 }
 ```
    
 - Fetch a scripter connection within the Handle of the service  
 - Add ``` sConn := s.scr.GetConnection("http", conn) ``` to the handle method of the service, where 'http' should be the name of the service.
 
There is now a basic scripter connection available within the Handle method, on which all methods 
described in the main chapter of the scripter can be called.


Add a script for a service
----
When a scripter has been added to the service, it is possible to write scripts for this service.
This can be done by adding a folder with the name of the service to the 'scripts' folder in the root directory.
Within this newly created directory scripts can be added which will automatically be run by the scripter in the service.
These lua scripts need to be of the following form:

```
function canHandle(message)
    return true
end

function handle(message)

end
```

canHandle: A method that should return true or false based on the incoming message, to let 
the scripter know whether it can handle the connection.

handle: A method that handles the incoming message. 

It is furthermore possible to add extra methods to your liking and use one or more of the methods 
described in the 'methods' chapter.