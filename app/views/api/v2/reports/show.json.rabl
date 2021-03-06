object @report

attributes :id, :reported_at, :status, :metrics

child :logs, :object_root => false do
  child :source, :object_root => false do
    attribute :value => :source
  end
  child :message, :object_root => false do
    attribute :value => :message
  end
  attribute :level
end

node :summary do |report|
	report.summaryStatus
end