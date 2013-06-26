require 'spec_helper'

describe Micropost do
  it { should have_attached_file(:content) }
  it { should validate_attachment_presence(:content) }
  it { should validate_attachment_content_type(:content).
                allowing('image/jpeg','image/png','image/jpg') }
  it { should validate_attachment_size(:content).
                less_than(5.megabytes) }
end
