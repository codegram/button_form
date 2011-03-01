module ButtonForm
  class Railtie < Rails::Railtie
    initializer "button_form.configure_rails_initialization" do
      ActionView::Helpers.send(:include,ButtonForm)
    end
  end
end
