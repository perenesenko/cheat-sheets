# Multiple kubectl versions on a MacOS

https://dev.to/cosckoya/asdf-or-how-to-manage-multiple-runtime-versions-275h


### install asdf tool to manage versions
```
brew install asdf
```

list of kubectl
```sh
asdf list all kubectl 
```

install different versions of kubectl
```sh
asdf install kubectl 1.20.2
asdf install kubectl 1.23.1
```
check the versions installed
```sh
> asdf list

Output:

kubectl
  1.20.2
  1.23.1
```

set the current one
```shell
asdf global kubectl 1.20.2
```

check the client version

```sh
kubectl version --client=true --short=true

Client Version: v1.20.2
```