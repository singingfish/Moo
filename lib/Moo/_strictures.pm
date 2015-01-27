package Moo::_strictures;
use strict;
use warnings;

sub import {
  if ($ENV{MOO_FATAL_WARNINGS}) {
    require strictures;
    strictures->VERSION(1);
    @_ = ('strictures');
    goto &strictures::import;
  }
  else {
    strict->import;
    warnings->import;
  }
}

1;
