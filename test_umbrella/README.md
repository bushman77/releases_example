# TestUmbrella

**TODO: Add description**
To take a distributed enviroment in a mix release
you need to edit rel/env.sh.eex file with the following commenting and uncommenting out these lines
then build the release

export RELEASE_DISTRIBUTION=sname
export RELEASE_NODE=bushman
export RELEASE_COOKIE="some real cookie"


then once exported you can connect to other nodes with the following
Node.spawn_link :"bushman@desktop", fn -> IO.inspect "YAAAY" end
if the nodes are going to connect over the internet you will also have to ensure that 4369 is open in the router and firewalls aswell
