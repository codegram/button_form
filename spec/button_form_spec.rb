require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ButtonForm do
  subject do
    Class.new do
      include ButtonForm
    end.new
  end

  it "should respond with a button" do
    options = ActiveSupport::HashWithIndifferentAccess.new
    subject.should respond_to(:submit_tag)
    subject.should_receive(:content_tag).once.with(:button, 'Save changes', anything)
    subject.submit_tag('Save changes', options)
  end

  it "gets included in ActionView::FormHelpers" do
    ActionView::Helpers.ancestors.should include(ButtonForm)
  end
end
