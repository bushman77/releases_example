# TestUmbrella

##__Configuring a release in a distributed format<br />

1. Edit rel/env.sh.eex and add the following lines.<br />
export RELEASE_DISTRIBUTION=name<br />
export RELEASE_NODE=bushman@127.0.0.1<br />
export RELEASE_COOKIE="some real cookie"<br />

2. Build the release.
3. Start your node<br />
  _build/prod/rel/brain/bin/brain start_iex<br />
  
4. use Node.start_link to execute a prcess on a differnt node.<br />
  Node.spawn_link :"bushman@127.0.0.1", fn -> IO.inspect "YAAAY" end<br />
