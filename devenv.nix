# jeykll + bundle. create a `dev` script for `bundle exec jekyll serve` command
# <https://devenv.new/?q=jeykll%20%2B%20bundle.%20create%20a%20%60dev%60%20script%20for%20%60bundle%20exec%20jekyll%20serve%60%20command%20>

{
  pkgs,
  lib,
  config,
  ...
}:
{
  # https://devenv.sh/packages/
  packages = [
    pkgs.ruby
    pkgs.git
  ];

  # https://devenv.sh/scripts/
  scripts.dev = {
    exec = ''
  bundle install && \
    bundle exec jekyll serve --livereload --incremental
  '';
    description = "Start jekyll server";
  };

  # See full reference at https://devenv.sh/reference/options/
}

