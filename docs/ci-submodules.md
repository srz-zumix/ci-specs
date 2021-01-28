# CI Git Submodules

## Table

|CI|SetUp|Default|
|:--|:--|:--|
|[Appcircle](https://appcircle.io/)|Auto|TRUE|
|[AppVeyor](https://www.appveyor.com)|Manual|FALSE|
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|[Config](https://docs.microsoft.com/en-us/azure/devops/pipelines/repos/github?view=azure-devops&tabs=yaml#submodules)|FALSE|
|[Bitrise](https://www.bitrise.io)|[Config](https://www.bitrise.io/integrations/steps/git-clone)|TRUE|
|[Buddy](https://buddy.works)|Auto|TRUE|
|[CircleCI](https://circleci.com)|[Manual](https://circleci.com/docs/2.0/configuration-reference/#checkout)|FALSE|
|[Cirrus CI](https://cirrus-ci.org/)|[Manual](https://github.com/cirruslabs/cirrus-ci-docs/issues/407)|FALSE|
|[Codefresh](https://codefresh.io/)|[Config](https://codefresh.io/docs/docs/codefresh-yaml/steps/git-clone/)|FALSE|
|[Codeship Basic](https://codeship.com/)|[Manual](https://documentation.codeship.com/basic/continuous-integration/git-submodules/)|FALSE|
|[Codeship Pro](https://codeship.com/)|AUTO|TRUE|
|[Drone](https://cloud.drone.io/)|[Manual](https://docs.drone.io/pipeline/docker/syntax/cloning/#the---recursive-flag)|FALSE|
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)|[Config](https://github.com/actions/checkout#usage)|FALSE|
|[Peakflow](https://www.peakflow.io/)|Auto|TRUE|
|[Razorops](https://razorops.com/)|Auto|TRUE|
|[Scrutinizer](https://scrutinizer-ci.com)|Auto|TRUE|
|[Semaphore 2.0](https://semaphoreci.com/product)|[Manual](https://docs.semaphoreci.com/reference/toolbox-reference/#checkout)|FALSE|
|[Shippable](http://shippable.com)|[Config](http://docs.shippable.com/ci/git-submodules/)|TRUE|
|[Travis CI](https://travis-ci.com/)|[Config](https://docs.travis-ci.com/user/common-build-problems/#git-submodules-are-not-updated-correctly)|TRUE|
|[wercker](http://www.wercker.com/)|[Manual](https://devcenter.wercker.com/integrations/git/submodules/)|FALSE|

### Notes

* Cirrus CI

CirrusCI + FreeBSD : need `pkg install -y git`
