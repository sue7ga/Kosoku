package Kosoku::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

use Module::Find;

useall 'Kosoku::Web::C';
base 'Kosoku::Web::C';

get '/kosoku' => "Kosoku#kosoku";

post '/kosoku' => "Kosoku#postkosoku";

1;
