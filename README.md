# CI Specs

ci services specs check

[![CircleCI](https://circleci.com/gh/srz-zumix/ci-specs/tree/master.svg?style=svg)](https://circleci.com/gh/srz-zumix/ci-specs/tree/master)
[![Drone Build Status](https://cloud.drone.io/api/badges/srz-zumix/ci-specs/status.svg?branch=master)](https://cloud.drone.io/srz-zumix/ci-specs)
[![Peakflow Build Status](https://www.peakflow.io/en/projects/ci-specs/branch-statuses/master.svg)](https://www.peakflow.io/en/projects/ci-specs/build-groups?build_groups_q%5Bbranch_name_cont%5D=master)
[![Shippable Run Status](https://api.shippable.com/projects/5c81c7142c0a8108001b1df3/badge?branch=master)](https://app.shippable.com/github/srz-zumix/ci-specs)
[![Travis-CI Build Status](https://travis-ci.com/srz-zumix/ci-specs.svg?branch=master)](https://travis-ci.com/srz-zumix/ci-specs)

## List of Continuous Integration services

[https://github.com/ligurio/awesome-ci](https://github.com/ligurio/awesome-ci) 

## CI Examples

* [CI Skip](https://github.com/srz-zumix/ci-skip)
* [CI Yaml](https://github.com/srz-zumix/ci-yaml)

# Open Source or Free Plan Available Features and Limitations

|CI|OSS or Free|Build Limit|Timeout|No Output Timeout|Any Limits|
|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com)|[Free for OSS](https://www.appveyor.com/pricing/)|Unlimited|?|?||
|[Azure Pipelines](https://azure.microsoft.com/ja-jp/services/devops/pipelines/)|[Free for OSS](https://azure.microsoft.com/ja-jp/pricing/details/devops/azure-devops-services/)|Unlimited|?|?||
|[Bitrise](https://www.bitrise.io)|[Free for OSS](https://blog.bitrise.io/free-developer-plan-features-for-open-source-projects-on-bitrise)|Unlimited|45min|?||
|[Buddy](https://buddy.works)|[Free for OSS](https://buddy.works/free-for-open-source)|120 build/month|?|?|5 projects / 500 MB cache / 1 GB & 2vCPU performance|
|[Circle CI](https://circleci.com)|[Free Plan](https://circleci.com/pricing/usage/)|Unlimited?|2,500 free credits / week|?||
|[Cirrus CI](https://cirrus-ci.org/)|[Free for OSS](https://cirrus-ci.org/pricing/)|Unlimited?|[60min](https://cirrus-ci.org/faq/#instance-timed-out)(max 2h)|?|[Parallel VMs limit](https://cirrus-ci.org/faq/#are-there-any-limits)|
|[Codefresh](https://codefresh.io/)|[Free Plan](https://codefresh.io/pricing/)|Unlimited|60min?|15min ?|
|[Codeship](https://codeship.com/)|[Forever Free](https://codeship.com/pricing)|100 build/month|?|?||
|[Drone Cloud](https://cloud.drone.io/)|Free for OSS|Unlimited?|?|?||
|[GitHub Actions](https://help.github.com/en/articles/about-github-actions)|Free for Public repo|Unlimited?|default 360min([config](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idtimeout-minutes))|?|[Usage Limit](https://help.github.com/en/articles/about-github-actions#usage-limits)|
|[INSPECODE](https://rocro.com/inspecode)|[Free Plan](https://rocro.com/inspecode/pricing)|1500 minutes/month|?|?||
|[Scrutinizer](https://scrutinizer-ci.com)|[Free for OSS](https://scrutinizer-ci.com/pricing)|Unlimited?|?|?||
|[Semaphore CI 2.0](https://semaphoreci.com)|[FREE plan](https://semaphoreci.com/pricing)|~~$20~~$10/month|default 60min([config](https://docs.semaphoreci.com/article/50-pipeline-yaml#execution_time_limit))|?|[Quotas and Limits](https://docs.semaphoreci.com/article/133-quotas-and-limits)|
|[Shippable](https://www.shippable.com/pricing.html)|[Free plan](https://www.shippable.com/pricing.html)|Unlimited (Public), 150 builds/month (Private)|?|?||
|[Travis CI](https://travis-ci.com/)|[Free for OSS](https://travis-ci.com/plans)|Unlimited|?|?||
|[wercker](http://www.wercker.com/)|?|?|?|?||

## Support 

### Build Environment

|CI|Linux|Windows|MacOS|FreeBSD|CentOS|Container|Self Agent|Other|
|:--|:--|:--|:--|:--|:--|:--|:--|:--|
|[AppVeyor](https://www.appveyor.com/docs/build-environment/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-||[:ballot_box_with_check:](https://ci.appveyor.com/build-clouds)|-|
|[Azure Pipelines](https://docs.microsoft.com/ja-jp/azure/devops/pipelines/agents/agents?view=azure-devops)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:||
|[Bitrise](https://devcenter.bitrise.io/infrastructure/virtual-machines/)|:ballot_box_with_check:||:ballot_box_with_check:||||||
|[Buddy](https://buddy.works)|:ballot_box_with_check:||||||||
|[Circle CI](https://circleci.com/docs/2.0/configuration-reference/#docker--machine--macos--windows-executor)|:ballot_box_with_check:|:ballot_box_with_check:|:heavy_dollar_sign:|-|-|:ballot_box_with_check:|-||
|[Cirrus CI](https://cirrus-ci.org/features/#comparison-with-popular-ciaas)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|[:ballot_box_with_check:](https://cirrus-ci.org/guide/docker-builder-vm/)|[:ballot_box_with_check:](https://cirrus-ci.org/guide/supported-computing-services/)||
|[Codefresh](https://codefresh.io/)|:ballot_box_with_check:|||||:ballot_box_with_check:|||
|[Codeship](https://codeship.com/)|:ballot_box_with_check:||||||||
|[Drone Cloud](https://docs.drone.io/user-guide/pipeline/steps/#platform)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|:ballot_box_with_check:|[:ballot_box_with_check:](https://docs.drone.io/runners/)|[docs](https://exec-runner.docs.drone.io/configuration/platform/)|
|[GitHub Actions](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idruns-on)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:|-|-|:ballot_box_with_check:|:ballot_box_with_check:||
|[INSPECODE](https://rocro.com/inspecode)|-|-|-|-|-||-||
|[Scrutinizer](https://scrutinizer-ci.com)|:ballot_box_with_check:||||||||
|[Semaphore CI 2.0](https://docs.semaphoreci.com/category/57-cicd-environment)|:ballot_box_with_check:||:ballot_box_with_check:||||||
|[Shippable](http://shippable.com)|:ballot_box_with_check:|:ballot_box_with_check:|:heavy_dollar_sign:||:ballot_box_with_check:||||||
|[Travis CI](https://docs.travis-ci.com/user/multi-os/)|:ballot_box_with_check:|:ballot_box_with_check:|:ballot_box_with_check:||||||
|[wercker](http://www.wercker.com/)|-|-|-|-|-|:ballot_box_with_check:|-||

## Etc.

[CI Status](./docs/ci-status.md)

