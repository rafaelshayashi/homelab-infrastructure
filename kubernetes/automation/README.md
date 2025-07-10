# Kubernetes provisioning automation

This folders holds a list of ansible playbooks to install, configure, enable all the required components
to run a k8s cluster

## Running

First, you'll need to create the configuration file for the target servers in the `inventory.yml` file, here is a example:

```yaml
server:
  hosts:
    k8s-cp-01.domain.com
    k8s-node-01.domain.com
```

```bash
make run

# or

make run-install
make run-config
make run-enable
```


ssh into the control pane

```
sudo kubeadm config images pull
```
