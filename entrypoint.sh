#!/bin/sh -l

ROOT_CONFIG_FILE="config.yml"
REVIEW_TEMPLATE_CONFIG_FILE="articles/config.yml"

if [ -e $ROOT_CONFIG_FILE ]; then
    echo "use bundler"
    bundle install && bundle exec rake clean pdf && \
    ruby /copy_build_file.rb && \
    echo "done."
else
    if [ -e $REVIEW_TEMPLATE_CONFIG_FILE ]; then
        echo "use npm"
        bundle install && npm install && npm run pdf && \
        ruby /copy_build_file.rb articles && \
        echo "done."
    fi
fi
