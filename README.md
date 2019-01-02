# InfinitePay Sample

This is a sample of infinite_pay gem use running on DaFunk runtime. This application is able to start a EMV transaction receiving just the amount of the transaction

## Usage

### Setup

With Ruby installed and repository cloned, execute in root of repo:

    bundle install # Install CloudWalk CLI
    
### Files and Directories

- `lib/` Contain .rb files that will be compiled.
- `test/` Contain all ruby files for test.
- `Gemfile/Gemfile.lock` Manage CloudWalk CLI version and any other Ruby gem, do not touch at `Gemfile.lock`
- `Cwfile.json` Manage Application attributes, application version and application modules versions.
- `Cwfile.json.lock` Contain the id's for all versions managed by `Cwfile.json`. **DO NOT MODIFY THIS FILE, IT'S AUTOMATICA GENERATED**
- `Rakefile` Defition of task files.
- `out` Contain the .mrb files compiled by tasks.
    
### Compiling

Compile all ./lib/**/*.rb files:

    bundle exec rake cloudwalk:build
    # or
    bundle exec rake
    
### Deploying

Deploying all out files:

    bundle exec rake cloudwalk:deploy
    
### Testing

Execute all tests

    bundle exec rake test

Execute unit tests

    bundle exec rake test:unit

Execute integration tests

    bundle exec rake test:integration

Execute unique test

    bundle exec rake test </path/to/test/file_test.rb>
