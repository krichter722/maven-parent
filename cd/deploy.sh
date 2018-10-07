#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
    mvn --batch-mode deploy -P ossrh --settings cd/mvnsettings.xml
fi
