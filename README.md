# CI Specs

ci services specs check

[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/s5slt06sp2hh72pc/branch/master?svg=true)](https://ci.appveyor.com/project/srz-zumix/ci-specs/branch/master)
[![Azure Pipelines Build Status](https://dev.azure.com/srz-zumix/ci-specs/_apis/build/status/ci-specs?branchName=master)](https://dev.azure.com/srz-zumix/ci-specs/_build/latest?definitionId=9&branchName=master)
[![Bitrise Build Status](https://app.bitrise.io/app/83e4e21587717d28/status.svg?token=AbTwzSOu8eyP2cc0Xly69Q&branch=master)](https://app.bitrise.io/app/83e4e21587717d28)
[![buddy pipeline](https://app.buddy.works/zumixcpp/ci-specs/pipelines/pipeline/231618/badge.svg?token=a0d4d12b159d24a0234f9ed9567ebb40a6268f39f8151ef552999864674de564 "buddy pipeline")](https://app.buddy.works/zumixcpp/ci-specs/pipelines/pipeline/231618)
[![CircleCI](https://circleci.com/gh/srz-zumix/ci-specs/tree/master.svg?style=svg)](https://circleci.com/gh/srz-zumix/ci-specs/tree/master)
[![Cirrus Build Status](https://api.cirrus-ci.com/github/srz-zumix/ci-specs.svg?branch=master)](https://cirrus-ci.com/github/srz-zumix/ci-specs/master)
[![Codefresh build status](https://g.codefresh.io/api/badges/pipeline/srz-zumix/ci-specs%2Fci-specs?type=cf-2)](https://g.codefresh.io/public/accounts/srz-zumix/pipelines/5df982434cccf82c259fb41a)
[![Codeship Status for srz-zumix/ci-specs](https://app.codeship.com/projects/265ea250-042c-0138-e6ba-0e8ba424c4b4/status?branch=master)](https://app.codeship.com/projects/378730)
[![Drone Build Status](https://cloud.drone.io/api/badges/srz-zumix/ci-specs/status.svg?branch=master)](https://cloud.drone.io/srz-zumix/ci-specs)
[![GitHub Actions Status](https://github.com/srz-zumix/ci-specs/workflows/GitHub%20Actions/badge.svg?branch=master)](https://github.com/srz-zumix/ci-specs/actions?query=workflow%3A%22GitHub+Actions%22)
[![Peakflow Build Status](https://www.peakflow.io/en/projects/ci-specs/branch-statuses/master.svg)](https://www.peakflow.io/en/projects/ci-specs/build-groups?build_groups_q%5Bbranch_name_cont%5D=master)
[![Scrutinizer Build Status](https://scrutinizer-ci.com/g/srz-zumix/ci-specs/badges/build.png?b=master)](https://scrutinizer-ci.com/g/srz-zumix/ci-specs/build-status/master)
[![Semaphore 2.0 Build Status](https://srz-zumix.semaphoreci.com/badges/ci-specs/branches/master.svg)](https://srz-zumix.semaphoreci.com/projects/ci-specs)
[![Shippable Run Status](https://api.shippable.com/projects/5c81c7142c0a8108001b1df3/badge?branch=master)](https://app.shippable.com/github/srz-zumix/ci-specs)
[![Travis-CI Build Status](https://travis-ci.com/srz-zumix/ci-specs.svg?branch=master)](https://travis-ci.com/srz-zumix/ci-specs)
[![wercker status](https://app.wercker.com/status/969fcccb15e08d93de063fa7bd7f28d2/s/master "wercker status")](https://app.wercker.com/project/byKey/969fcccb15e08d93de063fa7bd7f28d2)

## List of Continuous Integration services

[https://github.com/ligurio/awesome-ci](https://github.com/ligurio/awesome-ci)

## CI Examples

* [CI Parallel](https://github.com/srz-zumix/ci-parallel)
* [CI Skip](https://github.com/srz-zumix/ci-skip)
* [CI Yaml](https://github.com/srz-zumix/ci-yaml)

## Open Source or Free Plan Available Features and Limitations

|CI|OSS or Free|Build Limit|Concurrency|Timeout|No Output Timeout|Any Limits|
|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com)|[Free for OSS](https://www.appveyor.com/pricing/)|Unlimited|1|[60min or less](https://www.appveyor.com/docs/build-configuration/#build-timeout)|?||
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|[Free for OSS](https://azure.microsoft.com/ja-jp/pricing/details/devops/azure-devops-services/)|Unlimited|10|[360min](https://docs.microsoft.com/en-us/azure/devops/pipelines/licensing/concurrent-jobs?view=azure-devops#microsoft-hosted-cicd)|?||
|[Bitrise](https://www.bitrise.io)|[Free for OSS](https://blog.bitrise.io/free-developer-plan-features-for-open-source-projects-on-bitrise)|Unlimited|1|45min|?||
|[Buddy](https://buddy.works)|[Free for OSS](https://buddy.works/free-for-open-source)|120 build/month|1|?|?|5 projects / 500 MB cache / 1 GB & 2vCPU performance|
|[CircleCI](https://circleci.com)|[Free Plan](https://circleci.com/pricing/)|2,500 free credits / week|1(1 parallel)|[5h](https://circleci.com/docs/2.0/configuration-reference/#jobs)|default 10min ([config: no_output_timeout](https://circleci.com/docs/2.0/configuration-reference/#run))||
|[CircleCI](https://circleci.com)|[Free for OSS](https://circleci.com/docs/2.0/oss/#overview)|100,000 free credits / week|1(4 parallel)|?|?||
|[Cirrus CI](https://cirrus-ci.org/)|[Free for OSS](https://cirrus-ci.org/pricing/)|Unlimited?|[no limit](https://cirrus-ci.org/features/#no-concurrency-limit-no-queues)|[60min](https://cirrus-ci.org/faq/#instance-timed-out)(max 2h)|?|[Parallel VMs limit](https://cirrus-ci.org/faq/#are-there-any-limits)|
|[Codefresh](https://codefresh.io/)|[Free Plan](https://codefresh.io/pricing/)|Unlimited|1 (2 step per build) |60min?|15min ?|
|[Codeship Basic](https://codeship.com/)|[Forever Free](https://codeship.com/pricing/basic)|100 build/month|1|?|?||
|[Codeship Pro](https://codeship.com/)|[Forever Free](https://codeship.com/pricing/pro)|100 build/month|1|[5h](https://documentation.codeship.com/pro/builds-and-configuration/steps/#step-timeouts)|[15min](https://documentation.codeship.com/pro/builds-and-configuration/steps/#step-timeouts)||
|[Drone](https://cloud.drone.io/)|Free for OSS|Unlimited?|?|?|?||
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)|Free for Public repo|Unlimited|20|default 360min([config](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idtimeout-minutes))|?|[Usage Limit](https://help.github.com/en/articles/about-github-actions#usage-limits)|
|[Scrutinizer](https://scrutinizer-ci.com)|[Free for OSS](https://scrutinizer-ci.com/pricing)|Unlimited?|?|?|?||
|[Semaphore CI 2.0](https://semaphoreci.com)|[FREE plan](https://semaphoreci.com/pricing)|~~$20~~$10/month|1|default 60min([config](https://docs.semaphoreci.com/article/50-pipeline-yaml#execution_time_limit))|?|[Quotas and Limits](https://docs.semaphoreci.com/article/133-quotas-and-limits)|
|[Semaphore CI 2.0](https://semaphoreci.com)|[FREE for OSS](https://semaphoreci.com/pricing)|Unlimited|Linux: 4, macOS: 1|default 60min([config](https://docs.semaphoreci.com/article/50-pipeline-yaml#execution_time_limit))|?|[Quotas and Limits](https://docs.semaphoreci.com/article/133-quotas-and-limits)|
|[Shippable](https://www.shippable.com/pricing.html)|[Free plan](https://www.shippable.com/pricing.html)|Unlimited (Public), 150 builds/month (Private)|1|[60min](http://docs.shippable.com/ci/custom-timeouts/)|[10min](http://docs.shippable.com/ci/custom-timeouts/)||
|[Travis CI](https://travis-ci.com/)|[Free for OSS](https://travis-ci.com/plans)|Unlimited|3|[50min](https://docs.travis-ci.com/user/customizing-the-build#build-timeouts)|[10min](https://docs.travis-ci.com/user/customizing-the-build#build-timeouts)||
|[wercker](http://www.wercker.com/)|?|?|?|?|?||

## Support

### Build Environment

#### OS

|CI|Linux|macOS|Windows|FreeBSD|CentOS|Container|Self Agent|
|:--|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com/docs/build-environment/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|[BYOC](https://www.appveyor.com/docs/byoc/docker/)|:ballot_box_with_check: [[*]](https://ci.appveyor.com/build-clouds)|
|[Azure Pipelines](https://docs.microsoft.com/ja-jp/azure/devops/pipelines/agents/agents?view=azure-devops)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:|
|[Bitrise](https://devcenter.bitrise.io/infrastructure/virtual-machines/)|:ballot_box_with_check:|:ballot_box_with_check:|-|-|-|-||
|[Buddy](https://buddy.works)|-|-|-|-|-|:ballot_box_with_check:||
|[CircleCI](https://circleci.com/docs/2.0/configuration-reference/#docker--machine--macos--windows-executor)|:ballot_box_with_check:|:ballot_box_with_check: [[*]](https://circleci.com/docs/2.0/oss/#overview)|:ballot_box_with_check:|-|-|:ballot_box_with_check:|-|
|[Cirrus CI](https://cirrus-ci.org/features/#comparison-with-popular-ciaas)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|:ballot_box_with_check: [[*]](https://cirrus-ci.org/guide/docker-builder-vm/)|:heavy_dollar_sign: [[*]](https://cirrus-ci.org/guide/supported-computing-services/)|
|[Codefresh](https://codefresh.io/)|:ballot_box_with_check:|:ballot_box_with_check:[[*]](https://codefresh.io/docs/docs/incubation/osx-ios-builds/)|[Beta](https://codefresh.io/docs/docs/incubation/windows-beta/)|-|-|:ballot_box_with_check:||
|[Codeship](https://codeship.com/)|-|-|-|-|-|:ballot_box_with_check:|-|
|[Drone](https://docs.drone.io/user-guide/pipeline/steps/#platform)||-|-|-|-|:ballot_box_with_check:|:ballot_box_with_check: [[*]](https://exec-runner.docs.drone.io/configuration/platform/)|
|[GitHub Actions](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idruns-on)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:|
|[Scrutinizer](https://scrutinizer-ci.com)|:ballot_box_with_check:|-|-|-|-|||
|[Semaphore CI 2.0](https://docs.semaphoreci.com/category/57-cicd-environment)|:ballot_box_with_check:|:ballot_box_with_check:|-|-|-|:ballot_box_with_check: [\[*\]](https://docs.semaphoreci.com/ci-cd-environment/custom-ci-cd-environment-with-docker/)||
|[Shippable](http://shippable.com)|:ballot_box_with_check:|:heavy_dollar_sign:|:ballot_box_with_check:|-|:ballot_box_with_check:|:ballot_box_with_check:|[:ballot_box_with_check:](http://docs.shippable.com/platform/runtime/nodes/#byon-nodes)|
|[Travis CI](https://docs.travis-ci.com/user/multi-os/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|||
|[wercker](http://www.wercker.com/)|-|-|-|-|-|:ballot_box_with_check:|-|

#### CPU Architectures

##### Linux

|CI|Architectures|
|:--|:--|
|[AppVeyor](https://www.appveyor.com)||
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|
|[Bitrise](https://www.bitrise.io)||
|[Buddy](https://buddy.works)||
|[Circle CI](https://circleci.com)||
|[Cirrus CI](https://cirrus-ci.org/)||
|[Codefresh](https://codefresh.io/)||
|[Codeship](https://codeship.com/)||
|[Drone](https://cloud.drone.io/)||
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)||
|[Scrutinizer](https://scrutinizer-ci.com)||
|[Semaphore 2.0](https://semaphoreci.com/product)||
|[Shippable](http://shippable.com)||
|[Travis CI](https://docs.travis-ci.com/user/multi-cpu-architectures/)|amd64, ppc64le, s390x, arm64|
|[wercker](http://www.wercker.com/)||

## Etc.

* [CI Envrionment Variables](./docs/ci-env-var.md)
* [CI Trigger](./docs/ci-trigger.md)
* [CI Status](./docs/ci-status.md)
