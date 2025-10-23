# jeykll + bundle. create a `dev` script for `bundle exec jekyll serve` command
# <https://devenv.new/?q=jeykll%20%2B%20bundle.%20create%20a%20%60dev%60%20script%20for%20%60bundle%20exec%20jekyll%20serve%60%20command%20>

{
  pkgs,
  lib,
  config,
  ...
}:
{

  # https://devenv.sh/languages/
  # languages.ruby.enable = true;
  # languages.ruby.bundler.enable = true; # Latest 2.7.1 causes issues

  # https://devenv.sh/packages/
  packages = [
    pkgs.ruby   # bundler 2.5.22
    pkgs.git
  ];

  # The Gemfile installs the ruby dependencies inside the environment.
  enterShell = ''
    ruby --version
    bundle version
    bundle install > /dev/null 2>&1 || true
    bundle exec jekyll --version
  '';

  # https://devenv.sh/processes/
  processes.jekyll = {
    # Define the command to run the Jekyll server
    exec = "bundle exec jekyll serve --livereload --incremental";
  };

  # https://devenv.sh/scripts/
  scripts.gg.exec = "lazygit";

  # 🚀 SOLUTION: Use 'devenv up jekyll' to manage the long-running process.
  scripts.dev.exec = "devenv up jekyll";
  scripts.build.exec = "bundle exec jekyll build";
  scripts.q.exec = "exit";

  # See full reference at https://devenv.sh/reference/options/
}

