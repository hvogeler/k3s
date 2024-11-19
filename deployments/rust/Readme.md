# Rust Development 
This deployement's purpose is to create a pod that can be used from  VSCode for Rust development.

## Usage
`kubectl apply -f rustdev.yaml`

This spins up a container with a cpu limit of 2 CPUs and a persistent volume at /data/rustdev on the node.

## VScode
1. Have the _Dev Containers_ extension installed
2. Attach to the rustdev pod

The persistent volume is mounted under /workspace in the pod.

