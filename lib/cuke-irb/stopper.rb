require 'cucumber'
if respond_to? :After
  After do |scenario|
    if scenario.failed? && scenario.source_tag_names.include?("@stop") && scenario.source_tag_names.include?("@stop")
      if respond_to? :logger
        logger.info "Scenario failed. You are in rails console becuase of @stop. Type exit when you are done"
      end
      puts "Scenario failed. You are in rails console becuase of @stop. Type exit when you are done"
      require 'irb'
      require 'irb/completion'
      ARGV.clear
      IRB.start
    end  
  end
end

