#!/bin/bash

docker run -v $HOME/.docker-volumes/jira:/var/atlassian/application-data/jira --name="jira" -d -p 8080:8080 dchevell/jira-software

