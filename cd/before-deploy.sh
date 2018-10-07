#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    openssl aes-256-cbc -K $encrypted_721653b80b81_key -iv $encrypted_721653b80b81_iv -in cd/codesigning.asc.enc -out cd/codesigning.asc -d
    echo "openssl returncode: $?"
    gpg --fast-import cd/codesigning.asc
fi

