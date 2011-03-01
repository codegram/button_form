module ButtonForm
  def self.included(base)
    base.class_eval <<-RUBY
      def submit_tag(value = "Save changes", options = {})
        options.stringify_keys!

        if disable_with = options.delete("disable_with")
          options["data-disable-with"] = disable_with
        end

        if confirm = options.delete("confirm")
          options["data-confirm"] = confirm
        end

        content_tag :button, value, { "type" => "submit", "name" => "commit"}.update(options.stringify_keys)
      end
    RUBY
  end
end
