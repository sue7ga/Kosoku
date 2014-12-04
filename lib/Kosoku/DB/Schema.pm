package Kosoku::DB::Schema;
use strict;
use warnings;
use utf8;

use Teng::Schema::Declare;

base_row_class 'Kosoku::DB::Row';

table {
    name 'kosoku';
    pk 'id';
    columns qw(id f t c s sortBy);
};

1;
