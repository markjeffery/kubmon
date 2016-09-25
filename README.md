# kubmon

logger - ruby script that uses "kubectl get events -o=json -w" to get events from kubernetes, and posts them as custom events within appdynamics.

kubmon.pl - machine agent extension that gathers data from kubernetes (currently get deployments)
