package Local::RouteDemo;
use Mojo::Base 'Mojolicious', -signatures;
use Local::RouteDemo::Routes 'make_routes';

# This method will run once at server start
sub startup ($self) {

    # Load configuration from config file
    my $config = $self->plugin('NotYAMLConfig');

    # Configure the application
    $self->secrets($config->{secrets});

    # Make routes
    make_routes($self->routes);

    return;
}

1;
