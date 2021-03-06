require_relative '../spec_helper'

describe Raml::Parameter::FormParameter do
  let(:name) { 'AWSAccessKeyId' }
  let (:data) {
    YAML.load(%q(
      description: The AWS Access Key ID of the owner of the bucket who grants ...
      type: string
    ))
  }

  it "should instanciate Form parameter" do
    Raml::Parameter::FormParameter.new(name, data)
  end
end
