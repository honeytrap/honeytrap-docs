---
approvers:
- nl5887
title: Development
---

It is easy to implement extra services within the Honeytrap framework.

```
$ cd /usr/local
$ wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
$ tar vxf go1.9.linux-amd64.tar.gz
```

This is a simple echo service. All implementation and magic is done in the **Handle** function, which will handle the connection. The **Register** call will register the service within the framework. **Echo** will initialize the service and configure. Events can be thrown using **e.c.Send**.


```go
package services

import (
        "io"
        "net"
        "github.com/honeytrap/honeytrap/event"
        "github.com/honeytrap/honeytrap/listener"
        "github.com/honeytrap/honeytrap/pushers"
)

var (
        _ = Register("echo", Echo)
)

func Echo(options ...ServicerFunc) Servicer {
        s := &echoService{}
        for _, o := range options {
                o(s)
        }
        return s
}

type echoService struct {
        c pushers.Channel
}

func (s *echoService) SetChannel(c pushers.Channel) {
        s.c = c
}

func (s *echoService) Handle(conn net.Conn) error {
        if _, ok := conn.(*listener.DummyUDPConn); ok {
                defer conn.Close()

                buff := [65535]byte{}

                n, err := conn.Read(buff[:])
                if err != nil {
                        return err
                }
                s.c.Send(event.New(
                        EventOptions,
                        event.Category("echo"),
                        event.SourceAddr(conn.RemoteAddr()),
                        event.DestinationAddr(conn.LocalAddr()),
                        event.Payload(buff[:n]),
                ))

                if _, err = conn.Write(buff[:n]); err != nil {
                        return err
                }

                return err
        } else if _, err := io.Copy(conn, conn); err != nil {
                return err
        } else {
                return nil
        }
}
```

Some services need to store data, you can make use of **storage.Namespace**, which will enables a key/value store where data (like pairs, certificates) can be stored. 

```go
func Storage() (*sshStorage, error) {
        if s, err := storage.Namespace("ssh"); err == nil {
                return &sshStorage{
                        s,
                }, nil
        } else {
                return nil, err
        }
}

type sshStorage struct {
        storage.Storage
}

func (s *sshStorage) PrivateKey() *privateKey {
        if data, err := s.Get("private-key"); err == nil {
                return PrivateKey(data)
        } else if err != nil {
                log.Errorf("Could not load private key: %s", err.Error())
        }

        if data, err := generateKey(); err != nil {
                log.Errorf("Could not generate ssh key: %s", err.Error())
                return nil
        } else if err := s.Set("private-key", data); err != nil {
                log.Errorf("Could not persist ssh key: %s", err.Error())
                return nil
        } else {
                return PrivateKey(data)

        }
}
```
