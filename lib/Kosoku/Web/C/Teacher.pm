package Kosoku::Web::C::Kosoku;
use Data::Dumper;
use utf8;
use Kosoku::Model::Kosoku;

use Data::Dumper;

sub kosoku{
 my($class,$c) = @_; 
 my $itr =  $c->db->get_kosoku();
 my @kosoku_f;
 my @kosoku_t;
 while(my $row = $itr->next){
   push @kosoku_f,$row->f;
   push @kosoku_t,$row->t;
 } 
 my $latestf = pop @kosoku_f;
 my $latestt  = pop @kosoku_t;
 my $kosoku = Kosoku::Model::Kosoku->new(f => $latestf,t => $latestt);
 print Dumper $kosoku;
 print Dumper $kosoku->response;
 return $c->render('kosoku.tx');
}

sub postkosoku{
 my($class,$c) = @_;
 my $param = $c->req->parameters;
 $c->db->insert_kosoku($param);
 return $c->redirect('/kosoku');
}

1;
