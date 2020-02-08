# CI Envrionment Variables

|Services|CI|Service identification|
|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com/docs/environment-variables/)|true|APPVEYOR|
|[Azure Pipelines](https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azure-devops&tabs=yaml)|-|AZURE_HTTP_USER_AGENT|
|[Bitrise](https://devcenter.bitrise.io/jp/builds/available-environment-variables/)|true|BITRISE_IO|
|[Buddy](https://buddy.works/docs/pipelines/environment-variables#default-environment-variables)|-|BUDDY|
|[CircleCI](https://circleci.com/docs/2.0/env-vars/#built-in-environment-variables)|true|CIRCLECI|
|[Cirrus CI](https://cirrus-ci.org/guide/writing-tasks/#environment-variables)|true|CIRRUS_CI|
|[Codefresh](https://codefresh.io/docs/docs/codefresh-yaml/variables/#exporting-environment-variables-from-a-freestyle-step)|true|CF_BUILD_URL|
|[Codeship](https://documentation.codeship.com/basic/builds-and-configuration/set-environment-variables/)|true|CI_NAME=codeship|
|[Drone](https://0-8-0.docs.drone.io/environment-reference/)|drone|DRONE|
|[GitHub Actions](https://help.github.com/ja/actions/automating-your-workflow-with-github-actions/using-environment-variables#default-environment-variables)|-|GITHUB_ACTIONS|
|[Scrutinizer](https://scrutinizer-ci.com/docs/build/environment-variables)|true|SCRUTINIZER|
|[Semaphore 2.0](https://docs.semaphoreci.com/ci-cd-environment/environment-variables/)|true|SEMAPHORE|
|[Shippable](http://docs.shippable.com/ci/env-vars/#stdEnv)|true|SHIPPABLE|
|[Travis CI](https://docs.travis-ci.com/user/environment-variables/)|true|TRAVIS|
|[wercker](https://devcenter.wercker.com/administration/environment-variables/available-env-vars/)|true|WERCKER_RUN_URL|


## Secret Environment Variables

|Type||
|:--|:--|
|Server|Add a secret environment variable in the project settings. Set in the execution environment.|
|Server and YAML|Add a secret environment variable in the project settings. Set in the execution environment, Requires loading with YAML config.|
|YAML|Set the encrypted value in config file.|

|Services|Secret|Type|Echo Mask|
|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com/docs/build-configuration/#secure-variables)|:o:|YAML, Server| * x N |
|[Azure Pipelines](https://docs.microsoft.com/en-us/azure/devops/pipelines/process/variables?view=azure-devops&tabs=yaml%2Cbatch#secret-variables)|:o:|Server and YAML| * x N |
|[Bitrise](https://devcenter.bitrise.io/builds/env-vars-secret-env-vars/#about-secrets)|:o:|Server| \[REDACTED\] |
|[Buddy](https://buddy.works/docs/pipelines/handling-secrets#environment-variables-encryption)|:o:|Server| \*\*\*\*\*\*ENCRYPTED\*\*\*\*\*\* |
|[CircleCI](https://circleci.com/docs/2.0/env-vars/)|:o:|Server| * x N |
|[Cirrus CI](ENCRYPTED[9c27f429840137201c54a77bb56ad8698d0ae2ba6f5a2ceaabc02671e198707d1f6ba516199ee546df281d8a14b2c9cb])|:o:|YAML|SECRET|
|[Codefresh](https://codefresh.io/docs/docs/configure-ci-cd-pipeline/shared-configuration/)|:o:|Server|:x:|
|Codeship Basic|:x: ?|-|-|
|[Codeship Pro](https://documentation.codeship.com/pro/builds-and-configuration/environment-variables/#encrypting-your-environment-variables)|:o:|YAML|:x:|
|[Drone](https://docs.drone.io/secret/)|:o:|YAML, Server and YAML|\[secret:NAME\]|
|[GitHub Actions](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets)|:o:|Server| * x N |
|[Scrutinizer](https://scrutinizer-ci.com/docs/build/environment-variables)|:small_red_triangle:|-|-|
|[Semaphore 2.0](https://docs.semaphoreci.com/guided-tour/environment-variables-and-secrets/)|:o:|YAML, Server and YAML|:x:|
|[Shippable](http://docs.shippable.com/ci/env-vars/#secure-variables)|:o:|YAML|:o:|
|[Travis CI](https://docs.travis-ci.com/user/environment-variables/#encrypting-environment-variables)|:o:|YAML|\[secure\] *(Windows :x:)* |
|[wercker](https://devcenter.wercker.com/administration/environment-variables/)|:o:|Server|:x:|
