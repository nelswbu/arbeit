.SILENT: it kill logs pod pods

it:
	pod=${pod} port=${port} && bash scripts/tele/tel.sh

kill:
	bash scripts/linux/kill.sh

logs:
	pod=${pod} && bash scripts/kube/logs.sh

pod:
	pod=${pod} && bash scripts/kube/pod.sh

pods:
	bash scripts/kube/pods.sh