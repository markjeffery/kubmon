# kubmon

logger - ruby script that uses "kubectl get events -o=json -w" to get events from kubernetes, and posts them as custom events within appdynamics.

kubmon.pl - machine agent extension that gathers data from kubernetes (currently get deployments)

**TODO**
- convert logger into a pod (ideally in system namespace) so that it is easier to implement.
- convert logger so that it uses kubernetes events REST API
- create machine agent pod, together with machine agent extension
