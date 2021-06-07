package Local::RouteDemo::Routes;
use strict;
use warnings qw(all -experimental::signatures);
use feature 'signatures';
use Exporter 'import';
our @EXPORT_OK = qw(make_routes);

sub make_routes ($router) {
    $router->get('/')->to('Example#welcome');
    # add more routes here

    return;
}

1;
