#! /usr/bin/perl
my $metricPrefix="Custom Metrics|Kubernetes";
open(IN1, "kubectl get deployments|") or die "Can't open kubectl get deployments command";
while (<IN1>)
{
    next if /NAME.*/;
    @fields=split;
    print "name=$metricPrefix|$fields[0]|Desired,value=$fields[1],aggregator=AVERAGE,time-rollup=AVERAGE,cluster-rollup=COLLECTIVE\n";
    print "name=$metricPrefix|$fields[0]|Current,value=$fields[2],aggregator=AVERAGE,time-rollup=AVERAGE,cluster-rollup=COLLECTIVE\n";
    print "name=$metricPrefix|$fields[0]|Up to Date,value=$fields[3],aggregator=AVERAGE,time-rollup=AVERAGE,cluster-rollup=COLLECTIVE\n";
}
close IN1;
