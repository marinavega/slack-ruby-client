# This file was auto-generated by lib/tasks/web.rake

desc 'AppsPermissionsResources methods.'
command 'apps_permissions_resources' do |g|
  g.desc 'Returns list of resource grants this app has on a team.'
  g.long_desc %( Returns list of resource grants this app has on a team. )
  g.command 'list' do |c|
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'limit', desc: 'The maximum number of items to return.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.apps_permissions_resources_list(options))
    end
  end
end
