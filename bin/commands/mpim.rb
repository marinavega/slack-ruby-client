# This file was auto-generated by lib/tasks/web.rake

desc 'Get info on your multiparty direct messages.'
command 'mpim' do |g|
  g.desc 'Closes a multiparty direct message channel.'
  g.long_desc %( Closes a multiparty direct message channel. )
  g.command 'close' do |c|
    c.flag 'channel', desc: 'MPIM to close.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_close(options))
    end
  end

  g.desc 'Fetches history of messages and events from a multiparty direct message.'
  g.long_desc %( Fetches history of messages and events from a multiparty direct message. )
  g.command 'history' do |c|
    c.flag 'channel', desc: 'Multiparty direct message to fetch history for.'
    c.flag 'inclusive', desc: 'Include messages with latest or oldest timestamp in results.'
    c.flag 'latest', desc: 'End of time range of messages to include in results.'
    c.flag 'oldest', desc: 'Start of time range of messages to include in results.'
    c.flag 'unreads', desc: 'Include unread_count_display in the output?.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_history(options))
    end
  end

  g.desc 'Lists multiparty direct message channels for the calling user.'
  g.long_desc %( Lists multiparty direct message channels for the calling user. )
  g.command 'list' do |c|
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_list(options))
    end
  end

  g.desc 'Sets the read cursor in a multiparty direct message channel.'
  g.long_desc %( Sets the read cursor in a multiparty direct message channel. )
  g.command 'mark' do |c|
    c.flag 'channel', desc: 'multiparty direct message channel to set reading cursor in.'
    c.flag 'ts', desc: 'Timestamp of the most recently seen message.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_mark(options))
    end
  end

  g.desc 'This method opens a multiparty direct message.'
  g.long_desc %( This method opens a multiparty direct message. )
  g.command 'open' do |c|
    c.flag 'users', desc: 'Comma separated lists of users.  The ordering of the users is preserved whenever a MPIM group is returned.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_open(options))
    end
  end

  g.desc 'Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message.'
  g.long_desc %( Retrieve a thread of messages posted to a direct message conversation from a multiparty direct message. )
  g.command 'replies' do |c|
    c.flag 'channel', desc: 'Multiparty direct message channel to fetch thread from.'
    c.flag 'thread_ts', desc: "Unique identifier of a thread's parent message."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.mpim_replies(options))
    end
  end
end
