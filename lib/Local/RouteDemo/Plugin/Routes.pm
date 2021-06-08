package Local::RouteDemo::Plugin::Routes;
use Mojo::Base 'Mojolicious::Plugin', -signatures;

sub register ($self, $app, $conf) {
    my $r = $app->routes;

    $r->get('/')->to('Example#welcome');
    # add more routes here

    return;
}

1;
