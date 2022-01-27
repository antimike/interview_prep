package Quicksort;

=head1 NAME

Quicksort - Sample implementation of Quicksort algorithm

=head1 SYNOPSIS

	use Quicksort;
	my arr = [1, 3, 7, 2, 4, 6];
	Quicksort->sort(arr);

=head1 DESCRIPTION

Basic, stripped-down implementation of Quicksort intended as an exercise in both algorithm design and Perl.

=head1 AUTHOR

Michael Haynes

=head1 SEE ALSO

=cut

use strict;

sub sort(&@) {
	# Convenience wrapper around qsort
	my $cmp = \&{shift @_};
	my $arr = shift;
	qsort($arr, 0, $#$arr, $cmp);
}

sub partition_roberts {
	# Partitioning phase of quicksort algorithm
	# From Eric Roberts sect. 10.5
	my $arr = shift;
	my ($start, $rh) = @_;
	my $lh = $start;
	my $piv = $arr->[$lh++];
	while (1) {
		$rh-- while ($lh < $rh and $arr->[$rh] >= $piv);
		$lh++ while ($lh < $rh and $arr->[$lh] <= $piv);
		last if ($lh == $rh);
		my $tmp = $arr->[$lh];
		$arr->[$lh] = $arr->[$rh];
		$arr->[$rh] = $tmp;
	}
	return $start if $arr->[$lh] >= $piv;
	$arr->[$start] = $arr->[$lh];
	$arr->[$lh] = $piv;
	return $lh;
}

sub qsort_roberts {
	# Implementation from Eric Roberts sect. 10.5
	# Ported from C++
	my ($arr, $start, $end) = @_;
	return if $start >= $end;
	my $pi = partition_roberts($arr, $start, $end);
	qsort_roberts($arr, $start, $pi - 1);
	qsort_roberts($arr, $pi + 1, $end);
}

# BUGGY
sub qsort {
	# Quicksort implementation
	my ($arr, $lh, $rh, $cmp) = @_;
	return if ($rh <= $lh);
	my ($piv_idx, $piv, $last) = ($lh, $arr->[$lh], $rh);
	$lh++;
	while ($lh < $rh) {
		if ($cmp->($arr->[$rh], $piv) >= 0) {
			$rh--;
		} elsif ($cmp->($arr->[$lh], $piv) < 0) {
			$lh++;
		} else {
			my $temp = $arr->[$lh];
			$arr->[$lh] = $arr->[$rh];
			$arr->[$rh] = $temp;
		}
	}
	if ($cmp->($piv, $arr->[$lh]) > 0) {
		my $temp = $arr->[$lh];
		$arr->[$lh] = $piv;
		$arr->[$piv_idx] = $temp;
	}
	qsort($arr, $piv_idx, $lh-1, $cmp);
	qsort($arr, $lh+1, $last, $cmp);
}

1;
