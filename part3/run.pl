#!/usr/bin/perl

use Data::Dumper;

# config
my $store_size = 4;

# runtime variables
my $log = {}; # hash storage for log
my $err_count = 0;

# read log file
open FH, $ARGV[0];
while (<FH>) {
    chomp;
    my $line = $_;

    # validate log format
    if ($line =~ /^\d{4}-\d{1,2}-\d{1,2} \d{1,2}:\d{1,2}:\d{1,2} \[(\d{3})\] (.+)/) {
    my $session_id = $1;

    # set log lines to hash storage
    &setlog($session_id, $line);

    # error detection and handling
    if ($2 =~ /ERROR:/) {
        $err_count++;

        # separator for different session
        if ($err_count > 1) {
            print " -----"."\n";
        }

        # print the error message
        my @err = @{$log->{$session_id}};
        for (my $i; $i<scalar(@err); $i++) {
            if ($i<scalar(@err)-1) {
                print @err[$i]."\n";
            } else {
                print @err[$i];
            }
        }
    }

    } else {
        print "Invalid log format\n";
        # error handling
    }
}
close FH;

# function to save logs into a temp hash store
# with log rotation
sub setlog {
    my ($session, $line) = @_;

    #insert log to hash storage
    push(@{ $log->{$session} }, $line);

    #clean up to last configure logs
    if (scalar(@{ $log->{$session} }) > $store_size) {
        shift(@{ $log->{$session} });
    }
}

# debug hash storage
#print Dumper($log);
