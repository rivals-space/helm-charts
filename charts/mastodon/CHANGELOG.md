# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.4.0]
### Added
- streaming pod keda autoscaling

## [2.3.2]
### Fixed
- servicemonitor path params

## [2.3.1]
### Fixed
- values typo
- servicemonitor path

## [2.3.0]
### Added
- streaming prometheus stats

### Changed
- switch to rivals.space docker image

## [2.2.1]
### Fixed
- remove probes on toolbox pod

## [2.2.0]
### Added
- toolbox pod

## [2.1.1]
### Added
- Allow external redis

## [2.1.0]
### Removed
- Default jobs

## [2.0.0]
### Removed
- Varnish S3 caching proxy

## [1.2.6]
### Fixed
- redis address in scaledobject

## [1.2.5]
### Fixed
- Fix scaleTargetRef

## [1.2.4]
### Fixed
- Fix listLenght typing

## [1.2.3]
### Fixed
- Removed namespace from scaledobject

## [1.2.2]
### Fixed
- Added missing labels for sidekiq scaledobject

## [1.2.1] - 2022-11-19
### Changed
- Mailer concurrency reduced to 1

## [1.2.0] - 2022-11-19
### Added
- Keda autoscaling for sidekiqs

## [1.0.0] - 2022-11-19
### Added
- Chart initialization
