package Kosoku::DB;
use strict;
use warnings;
use utf8;
use parent qw(Teng);
use Data::Dumper;

__PACKAGE__->load_plugin('Count');
__PACKAGE__->load_plugin('Replace');
__PACKAGE__->load_plugin('Pager');

sub insert_kosoku{
 my($self,$param) = @_;
 print Dumper $param;
 $self->insert('kosoku',{f => $param->{f},t => $param->{t}});
}

sub get_kosoku{
 my ($self) = @_;
 my $itr = $self->search('kosoku',+{},+{});
 return $itr;
}

1;
