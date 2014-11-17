jgit-chef Cookbook
==================
Install jgit.sh

WARNING: jgit-chef is not install 'jre(Java Runtime Environment)', but jgit need jre.

Attributes
----------

#### jgit-chef::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['jgit']['path']</tt></td>
    <td>String</td>
    <td>path to copy jgit binary</td>
    <td><tt>"/usr/local/bin/jgit"</tt></td>
  </tr>
  <tr>
    <td><tt>['jgit']['source']</tt></td>
    <td>String</td>
    <td>URL of jgit</td>
    <td><tt>"https://repo.eclipse.org/content/groups/releases//org/eclipse/jgit/org.eclipse.jgit.pgm/3.5.2.201411120430-r/org.eclipse.jgit.pgm-3.5.2.201411120430-r.sh"</tt></td>
  </tr>
  <tr>
    <td><tt>['jgit']['checksum']</tt></td>
    <td>String</td>
    <td>checksum of jgit binary</td>
    <td><tt>"284e714d8a481204d1c986f5debc56f5101df769f865a616721e4d74877ae59a"</tt></td>
  </tr>
</table>

Usage
-----
#### jgit-chef::default

Just include `jgit-chef` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[java]"
    "recipe[jgit-chef]"
  ]
}
```

Contributing
------------

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Public domain

