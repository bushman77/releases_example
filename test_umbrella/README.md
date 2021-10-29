# TestUmbrella

**TODO: Add description**
To take a distributed enviroment in a mix release<br />
you need to edit rel/env.sh.eex file with the following commenting and uncommenting out these lines<br />
then build the release<br />
<br />
export RELEASE_DISTRIBUTION=sname<br />
export RELEASE_NODE=bushman<br />
export RELEASE_COOKIE="some real cookie"<br />
<br />
<br />
then once exported you can connect to other nodes with the following<br />
Node.spawn_link :"bushman@desktop", fn -> IO.inspect "YAAAY" end<br />
if the nodes are going to connect over the internet you will also have to ensure that 4369 is open in the router and firewalls aswell<br />
