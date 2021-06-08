package Local::RouteDemo;
use Mojo::Base 'Mojolicious', -signatures;

# This method will run once at server start
sub startup ($self) {

    # Load configuration from config file
    my $config = $self->plugin('NotYAMLConfig');

    # Configure the application
    $self->secrets($config->{secrets});

    # Add routes from plugin
    $self->plugin('Local::RouteDemo::Plugin::Routes');

    return;
}

1;
