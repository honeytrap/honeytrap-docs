---
title: Generic
---

If you wish to add an entirely new service or a specific script for a new port, a generic script can be added.

You first need to make sure that the generic service has been added to the configuration, if not you can 
follow the steps in the configuration chapter.

The generic service is now running and checks all scripts in the folder 'scripts/generic' for each incoming connection.
To add a script for the generic scripter you need to add a script to this generic folder and add the port to
which you want to listen, to the configuration.

The generic script needs to have two methods:

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

Just as when extending a service, you can call the methods as explained in the 'methods'-chapter.