# frozen_string_literal: true

require "judoscale-ruby"
require "judoscale/config"
require "judoscale/sidekiq/version"
require "judoscale/sidekiq/metrics_collector"
require "sidekiq/api"

Judoscale.add_adapter :"judoscale-sidekiq", {
  adapter_version: Judoscale::Sidekiq::VERSION,
  framework_version: ::Sidekiq::VERSION
}, metrics_collector: Judoscale::Sidekiq::MetricsCollector

Judoscale::Config.add_adapter_config :sidekiq, Judoscale::Config::JobAdapterConfig
