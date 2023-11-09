alias k="kubectl"
alias kctx="kubectl config use-context"

# -A -> --all-namespaces # all namespaces
# 範例：
# $k get po -A
alias kgpa="kubectl get po --all-namespaces"
alias kd="kubectl describe"
alias kg="kubectl get"

alias ka="kubectl apply -f"
alias ke="kubectl edit"
alias cls="clear"
export do="--dry-run=client -o yaml"
# delete faster
export now="--force --grace-period 0"

set expandtab
set tabstop=2
set shiftwidth=2

# kubectl run nginx --image=nginx --dry-run=client -o yaml > pod.yaml
# use https://github.com/ahmetb/kubectl-aliases/blob/master/.kubectl_aliases now

# -n -> --namespace # 指定 namespace scope
# 範例：
# $k get po -n kube-system

# `k replace` should be better than `k edit`
