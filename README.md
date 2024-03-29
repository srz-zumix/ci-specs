# CI Specs

ci services specs check

[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/s5slt06sp2hh72pc/branch/master?svg=true)](https://ci.appveyor.com/project/srz-zumix/ci-specs/branch/master)
[![Azure Pipelines Build Status](https://dev.azure.com/srz-zumix/ci-specs/_apis/build/status/ci-specs?branchName=master)](https://dev.azure.com/srz-zumix/ci-specs/_build/latest?definitionId=9&branchName=master)
[![Bitrise Build Status](https://app.bitrise.io/app/83e4e21587717d28/status.svg?token=AbTwzSOu8eyP2cc0Xly69Q&branch=master)](https://app.bitrise.io/app/83e4e21587717d28)
[![buddy pipeline](https://app.buddy.works/srzzumix/ci-specs/pipelines/pipeline/369114/badge.svg?token=1141053422e24104528f0a57150aeeea9d803d3ed04d634fcca80b8344b7a2c6 "buddy pipeline")](https://app.buddy.works/srzzumix/ci-specs/pipelines/pipeline/369114)
[![CircleCI](https://circleci.com/gh/srz-zumix/ci-specs/tree/master.svg?style=svg)](https://circleci.com/gh/srz-zumix/ci-specs/tree/master)
[![Cirrus Build Status](https://api.cirrus-ci.com/github/srz-zumix/ci-specs.svg?branch=master)](https://cirrus-ci.com/github/srz-zumix/ci-specs/master)
[![Codefresh build status](https://g.codefresh.io/api/badges/pipeline/srz-zumix/ci-specs%2Fci-specs?type=cf-2)](https://g.codefresh.io/public/accounts/srz-zumix/pipelines/5df982434cccf82c259fb41a)
[![Codeship Status for srz-zumix/ci-specs](https://app.codeship.com/projects/265ea250-042c-0138-e6ba-0e8ba424c4b4/status?branch=master)](https://app.codeship.com/projects/378730)
[![Drone Build Status](https://cloud.drone.io/api/badges/srz-zumix/ci-specs/status.svg?branch=master)](https://cloud.drone.io/srz-zumix/ci-specs)
[![GitHub Actions Status](https://github.com/srz-zumix/ci-specs/workflows/GitHub%20Actions/badge.svg?branch=master)](https://github.com/srz-zumix/ci-specs/actions?query=workflow%3A%22GitHub+Actions%22)
[![Peakflow Build Status](https://www.peakflow.io/en/projects/ci-specs/branch-statuses/master.svg)](https://www.peakflow.io/en/projects/ci-specs/build-groups?build_groups_q%5Bbranch_name_cont%5D=master)
[![Scrutinizer Build Status](https://scrutinizer-ci.com/g/srz-zumix/ci-specs/badges/build.png?b=master)](https://scrutinizer-ci.com/g/srz-zumix/ci-specs/build-status/master)
[![Semaphore 2.0 Build Status](https://srz-zumix.semaphoreci.com/badges/ci-specs/branches/master.svg)](https://srz-zumix.semaphoreci.com/projects/ci-specs)
[![Build Status](https://api.razorops.com/apps/blue-bird-3202/badge.svg?branch=master)](https://dashboard.razorops.com/apps/blue-bird-3202/workflows)
[![Travis-CI Build Status](https://travis-ci.com/srz-zumix/ci-specs.svg?branch=master)](https://travis-ci.com/srz-zumix/ci-specs)

## List of Continuous Integration services

[https://github.com/ligurio/awesome-ci](https://github.com/ligurio/awesome-ci)

## CI Examples

* [CI Parallel](https://github.com/srz-zumix/ci-parallel)
* [CI Skip](https://github.com/srz-zumix/ci-skip)
* [CI Trigger](https://github.com/srz-zumix/ci-trigger)
* [CI Yaml](https://github.com/srz-zumix/ci-yaml)

## Open Source or Free Plan Available Features and Limitations

|CI|OSS or Free|Build Limit|[Concurrency](https://github.com/srz-zumix/ci-parallel)|Timeout|No Output Timeout|Any Limits|
|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor][]|[Free for OSS](https://www.appveyor.com/pricing/)|Unlimited|1|[60min or less](https://www.appveyor.com/docs/build-configuration/#build-timeout)|?||
|[Azure Pipelines][]|[Free for OSS](https://azure.microsoft.com/ja-jp/pricing/details/devops/azure-devops-services/)|Unlimited|10|[360min](https://docs.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops#microsoft-hosted-cicd)|?||
|[Bitrise][]|[Free for OSS](https://blog.bitrise.io/free-developer-plan-features-for-open-source-projects-on-bitrise)|Unlimited|1|45min|?||
|[Buddy][]|[Free for OSS](https://buddy.works/free-for-open-source)|120 build/month|1|?|?|5 projects / 500 MB cache / 1 GB & 2vCPU performance|
|[CircleCI][]|[Free Plan](https://circleci.com/pricing/)|2,500 free credits / week|30(1 parallel)|[5h](https://circleci.com/docs/2.0/configuration-reference/#jobs)|default 10min ([config: no_output_timeout](https://circleci.com/docs/2.0/configuration-reference/#run))||
|[CircleCI][]|[Free for OSS](https://circleci.com/docs/2.0/oss/#overview)|100,000 free credits / week|30(4 parallel)|?|?||
|[Cirrus CI][]|[Free for OSS](https://cirrus-ci.org/pricing/)|Unlimited?|[Linux: 8, Windows: 2, FreeBSD: 2, macOS: 1](https://cirrus-ci.org/features/#no-concurrency-limit-no-queues)|[60min](https://cirrus-ci.org/faq/#instance-timed-out)(max 2h)|?|[Parallel VMs limit](https://cirrus-ci.org/faq/#are-there-any-limits)|
|[Codefresh][]|[Free Plan](https://codefresh.io/pricing/)|Unlimited|1 (2 step per build) |60min?|15min ?|
|[Codeship Basic][]|[Forever Free](https://codeship.com/pricing/basic)|100 build/month|1|?|?||
|[Codeship Pro][]|[Forever Free](https://codeship.com/pricing/pro)|100 build/month|1 (Paralle Steps is Unlimited?)|[5h](https://documentation.codeship.com/pro/builds-and-configuration/steps/#step-timeouts)|[15min](https://documentation.codeship.com/pro/builds-and-configuration/steps/#step-timeouts)||
|[Drone](https://cloud.drone.io/)|Free for OSS|Unlimited?|Unlimited?|?|?||
|[GitHub Actions][]|Free for Public repo|Unlimited|20|default 360min([config](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idtimeout-minutes))|?|[Usage Limit](https://help.github.com/en/articles/about-github-actions#usage-limits)|
|[JFrog Pipelines][]|[Free plan](https://jfrog.com/pricing/)|2,000 min/month| | | ||
|[Peakflow][]||
|[Razorops][]|[Free Plan](https://razorops.com/pricing)|200 builds/month|1|?|?||
|[Scrutinizer][]|[Free for OSS](https://scrutinizer-ci.com/pricing)|Unlimited?|1|?|?||
|[Semaphore][]|[FREE plan](https://semaphoreci.com/pricing)|~~$20~~$10/month|1|default 60min([config](https://docs.semaphoreci.com/article/50-pipeline-yaml#execution_time_limit))|?|[Quotas and Limits](https://docs.semaphoreci.com/article/133-quotas-and-limits)|
|[Semaphore][]|[FREE for OSS](https://semaphoreci.com/pricing)|Unlimited|Linux: 4, macOS: 1|default 60min([config](https://docs.semaphoreci.com/article/50-pipeline-yaml#execution_time_limit))|?|[Quotas and Limits](https://docs.semaphoreci.com/article/133-quotas-and-limits)|
|[Travis CI][]|[Trial / Free for OSS](https://travis-ci.com/plans)|first 10,000 credits / Request credit each time|1?|[50min](https://docs.travis-ci.com/user/customizing-the-build#build-timeouts)|[10min](https://docs.travis-ci.com/user/customizing-the-build#build-timeouts)||

Learn more about Concurrency. [ci-parallel](https://github.com/srz-zumix/ci-parallel)

## Support

### Build Environment

#### OS

|CI|Linux|macOS|Windows|FreeBSD|CentOS|Container|Self Agent|
|:--|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com/docs/build-environment/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|[BYOC](https://www.appveyor.com/docs/byoc/docker/)|:ballot_box_with_check: [[*]](https://ci.appveyor.com/build-clouds)|
|[Azure Pipelines](https://docs.microsoft.com/ja-jp/azure/devops/pipelines/agents/agents?view=azure-devops)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:|
|[Bitrise](https://devcenter.bitrise.io/infrastructure/virtual-machines/)|:ballot_box_with_check:|:ballot_box_with_check:|-|-|-|:small_red_triangle: [*](https://devcenter.bitrise.io/tutorials/docker/use-your-own-docker-image/)|-|
|[Buddy][]|-|-|-|-|-|:ballot_box_with_check:|-|
|[CircleCI](https://circleci.com/docs/2.0/configuration-reference/#docker--machine--macos--windows-executor)|:ballot_box_with_check:|:ballot_box_with_check: [[*]](https://circleci.com/docs/2.0/oss/#overview)|:ballot_box_with_check:|-|-|:ballot_box_with_check:|[:heavy_dollar_sign:](https://circleci.com/ja/build-environments/runner/)|
|[Cirrus CI](https://cirrus-ci.org/features/#comparison-with-popular-ciaas)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|:ballot_box_with_check: [[*]](https://cirrus-ci.org/guide/docker-builder-vm/)| :ballot_box_with_check: [persistent-workers](https://cirrus-ci.org/guide/persistent-workers/) / :heavy_dollar_sign: [[*]](https://cirrus-ci.org/guide/supported-computing-services/)|
|[Codefresh][]|:ballot_box_with_check:|:ballot_box_with_check: [[*]](https://codefresh.io/docs/docs/incubation/osx-ios-builds/)|[Beta](https://codefresh.io/docs/docs/incubation/windows-beta/)|-|-|:ballot_box_with_check:|:ballot_box_with_check:[*](https://codefresh.io/docs/docs/administration/codefresh-runner/)|
|[Codeship][]|-|-|-|-|-|:ballot_box_with_check:|-|
|[Drone](https://docs.drone.io/user-guide/pipeline/steps/#platform)||-|-|-|-|:ballot_box_with_check:|:ballot_box_with_check: [[*]](https://exec-runner.docs.drone.io/configuration/platform/)|
|[GitHub Actions](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idruns-on)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:|
|[JFrog Pipelines][]|:ballot_box_with_check:|:heavy_dollar_sign:|:ballot_box_with_check: (AWS)|-|:ballot_box_with_check:|:ballot_box_with_check:|:heavy_dollar_sign:|
|[Peakflow](https://www.peakflow.io/)||
|[Razorops][]|-|-|-|-|-|:ballot_box_with_check:|-|
|[Scrutinizer][]|:ballot_box_with_check:|-|-|-|-|||
|[Semaphore](https://docs.semaphoreci.com/category/57-cicd-environment)|:ballot_box_with_check:|:ballot_box_with_check:|-|-|-|:ballot_box_with_check: [\[*\]](https://docs.semaphoreci.com/ci-cd-environment/custom-ci-cd-environment-with-docker/)|-|
|[Travis CI](https://docs.travis-ci.com/user/multi-os/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:small_red_triangle: [*](https://docs.travis-ci.com/user/docker/)|-|

#### CPU Architectures

##### Linux

|CI|Available Architectures|Agent Supported Architectures|
|:--|:--|:--|
|[AppVeyor][]|x64||
|[Azure Pipelines][]|x64|[x86,x64,arm,RHEL6](https://docs.microsoft.com/en-us/azure/devops/pipelines/agents/agents?view=azure-devops&tabs=browser#install)|
|[Bitrise][]|x64||
|[Buddy][]||
|[CircleCI][]|x64,[arm64](https://circleci.com/docs/2.0/arm-resources/)||
|[Cirrus CI][]|x86,x64|[persistent-workers supported](https://cirrus-ci.org/guide/persistent-workers/) (e.g. arm64)|
|[Codefresh][]|x64|[arm](https://codefresh.io/docs/docs/incubation/arm-support/)|
|[Codeship][]||
|[Drone][]|x64|[Platform](https://docs.drone.io/pipeline/exec/syntax/platform/)|
|[GitHub Actions][]|x64|[x64,arm32,arm64](https://docs.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners#supported-architectures-and-operating-systems-for-self-hosted-runners)|
|[JFrog Pipelines][]||[x86_64](https://www.jfrog.com/confluence/display/JFROG/Managing+Pipelines+Static+Nodes)|
|[Peakflow][]||
|[Razorops][]||
|[Scrutinizer][]||
|[Semaphore][]|x64||
|[Travis CI][]|x64, ppc64le, s390x, arm64||

## Etc.

* [CI Envrionment Variables](./docs/ci-env-var.md)
* [CI Git Submodules](./docs/ci-submodules.md)
* [CI Status](./docs/ci-status.md)

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
