# Travelstar Rebar Template

## Install

```sh-session
$ mkdir -p ~/.rebar/templates
$ git clone git://github.com/interline/travelstar-rebar-template.git ~/.rebar/templates/travelstar
```

## Use

```sh-session
$ mkdir appid
$ cd appid
$ rebar create template=travelstar appid=myapp description="A simple application"
```
