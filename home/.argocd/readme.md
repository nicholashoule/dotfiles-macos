# Argo CD CLI

[Argo CD - Home](https://argo-cd.readthedocs.io/)

## macOS

###### Install with Homebrew

```
brew install argocd
```

## Helpful

[Argo CD CLI - ](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)
[GitHub - Argo CD](https://github.com/argoproj/argo-cd)

##### Login

[argocd - login](https://argo-cd.readthedocs.io/en/stable/user-guide/commands/argocd_login/)

```
argocd login [server] --sso
argocd context
```

##### Certs

[argocd - cert](https://argo-cd.readthedocs.io/en/stable/user-guide/commands/argocd_cert/)

```
argocd cert list --cert-type ssh
ssh-keyscan github.com | argocd cert add-ssh --batch
```

##### Repos

[argocd - repo](https://argo-cd.readthedocs.io/en/stable/user-guide/commands/argocd_repo/)

```
argocd repo list
argocd repo list -o url

argocd repo add "git@github.com:example/example-repo.git" --name "Example GitHub repo"
argocd repo get "git@github.com:example/example-repo.git" --refresh hard
```
