use Selenium::Remote::Driver;
use Test::More;

my $driver = Selenium::Remote::Driver->new();

$driver->get('http://tvroom.github.io/selenium-exercises/ex1/');
my $elem = $driver->find_element('h3.sel_header','css');
my $text = $elem->get_text();

ok($text eq "Selenium Test Header", "Header text matches 'selenium Test Header");
done_testing();
