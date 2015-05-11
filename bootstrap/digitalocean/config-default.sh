#!/bin/bash
DO_REGION=${DO_REGION:-lon1}
DO_SSH_KEY=${DO_SSH_KEY:?"Need to set DO_SSH_KEY non-empty"}
DO_API_TOKEN=${DO_API_TOKEN:?"Need to set DO_API_TOKEN non-empty"}

ATLAS_TOKEN=${ATLAS_TOKEN:?"Need to set ATLAS_TOKEN non-empty"}
ATLAS_INFRASTRUCTURE=${ATLAS_INFRASTRUCTURE:-capgemini/apollo}
ATLAS_ARTIFACT_MASTER=${ATLAS_ARTIFACT_MASTER:-capgemini/apollo-mesos-ubuntu-14.04-amd64}
ATLAS_ARTIFACT_SLAVE=${ATLAS_ARTIFACT_SLAVE:-capgemini/apollo-mesos-ubuntu-14.04-amd64}
MASTER_SIZE=${MASTER_SIZE:-512mb}
SLAVE_SIZE=${SLAVE_SIZE:-512mb}
NUM_SLAVES=${NUM_SLAVES:-1}

CONSUL_DC=${CONSUL_DC:-$DO_REGION}
MESOS_CLUSTER_NAME=${MESOS_CLUSTER_NAME:-$DO_REGION}
