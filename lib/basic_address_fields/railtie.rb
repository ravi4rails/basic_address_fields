class BasicAddressFields::Railtie < Rails::Railtie
  rake_tasks do
    load 'basic_address_fields/tasks/add_address_fields.rake'
  end
end