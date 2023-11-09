k run nginx --image=nginx -n dev --dry-run=client -o yaml
k create deploy --image=nginx nginx --dry-run=client -o yaml

