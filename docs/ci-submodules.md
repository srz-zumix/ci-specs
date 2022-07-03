# CI Git Submodules

## Table

|CI|SetUp|Default|
|:--|:--|:--|
|[Appcircle][]|Auto|TRUE|
|[AppVeyor][]|Manual|FALSE|
|[Azure Pipelines][]|[Config](https://docs.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml#submodules)|FALSE|
|[Bitrise][]|[Config](https://www.bitrise.io/integrations/steps/git-clone)|TRUE|
|[Buddy][]|Auto|TRUE|
|[CircleCI][]|[Manual](https://circleci.com/docs/2.0/configuration-reference/#checkout)|FALSE|
|[Cirrus CI][]|[Manual](https://github.com/cirruslabs/cirrus-ci-docs/issues/407)|FALSE|
|[Codefresh][]|[Config](https://codefresh.io/docs/docs/codefresh-yaml/steps/git-clone/)|FALSE|
|[Codeship Basic][]|[Manual](https://documentation.codeship.com/basic/continuous-integration/git-submodules/)|FALSE|
|[Codeship Pro][]|AUTO|TRUE|
|[Drone][]|[Manual](https://docs.drone.io/pipeline/docker/syntax/cloning/#the---recursive-flag)|FALSE|
|[GitHub Actions][]|[Config](https://github.com/actions/checkout#usage)|FALSE|
|[JFrog Pipelines][]|Manual|FALSE|
|[Peakflow][]|Auto|TRUE|
|[Razorops][]|Auto|TRUE|
|[Scrutinizer][]|Auto|TRUE|
|[Semaphore][]|[Manual](https://docs.semaphoreci.com/reference/toolbox-reference/#checkout)|FALSE|
|[Travis CI][]|[Config](https://docs.travis-ci.com/user/common-build-problems/#git-submodules-are-not-updated-correctly)|TRUE|

### Notes

* Cirrus CI

CirrusCI + FreeBSD : need `pkg install -y git`

[Appcircle]:https://appcircle.io/
[AppVeyor]:https://www.appveyor.com
[Azure Pipelines]:https://azure.microsoft.com/ja-jp/services/devops/pipelines/
[Bitrise]:https://www.bitrise.io
[Buddy]:https://buddy.works
[CircleCI]:https://circleci.com
[Cirrus CI]:https://cirrus-ci.org/
[Codefresh]:https://codefresh.io/
[Codeship]:https://codeship.com/
[Codeship Basic]:https://codeship.com/
[Codeship Pro]:https://codeship.com/
[Drone]:https://cloud.drone.io/
[GitHub Actions]:https://help.github.com/en/articles/about-github-actions
[JFrog Pipelines]:https://www.jfrog.com/confluence/display/JFROG/JFrog+Pipelines
[Peakflow]:https://www.peakflow.io/
[Razorops]:https://razorops.com/
[Scrutinizer]:https://scrutinizer-ci.com
[Semaphore]:https://semaphoreci.com/
[Travis CI]:https://travis-ci.com/
