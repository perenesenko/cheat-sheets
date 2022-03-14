#!/bin/sh

apply () {
  echo "apply: $K_FILE"
  kubectl apply -f $K_FILE
}

del () {
  echo "delete: $K_FILE"
  kubectl delete -f $K_FILE
}

promote () {
  kubectl argo rollouts promote $K_ROLLOUT_NAME
}

image () {
  kubectl argo rollouts set image $K_ROLLOUT_NAME rollouts-demo=argoproj/rollouts-demo:$1
}

abort () {
  kubectl argo rollouts abort $K_ROLLOUT_NAME
}

kfile() {
  if [ -z "$1" ]; then
    echo "K_FILE=$K_FILE"
  else
    echo "export K_FILE=$1" > ~/.kfile.env/file.env
    . ~/.kfile.env/file.env
  fi
}

krollout() {
  if [ -z "$1" ]; then
    echo "K_ROLLOUT_NAME=$K_ROLLOUT_NAME"
  else
    echo "export K_ROLLOUT_NAME=$1" > ~/.kfile.env/rollout_name.env
    . ~/.kfile.env/rollout_name.env
  fi
}

kload() {
  . ~/.kfile.env/file.env
  . ~/.kfile.env/rollout_name.env
}

kreload() {
  kload
  kenv
}

kenv() {
  kfile
  krollout
}

kload
