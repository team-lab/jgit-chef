jgit-chef Cookbook
==================
Install jgit.sh

WARNING: jgit-chef is not install 'jre(Java Runtime Environment)', but jgit need jre.

Attributes
----------

#### jgit-chef::install
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
    <td>URL of jgit releases</td>
    <td><tt>"https://github.com/team-lab/jgit/releases/download/v3.6.0.201411121045-token3-lsremote/jgit"</tt></td>
  </tr>
  <tr>
    <td><tt>['jgit']['checksum']</tt></td>
    <td>String</td>
    <td>checksum of jgit binary</td>
    <td><tt>"4007728e35c49c069095bdc1bf4f5c8a537722c4bf955af72c33cb15d7f81766"</tt></td>
  </tr>
</table>

Usage
-----
#### jgit-chef::install

Just include `jgit-chef` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[java]"
    "recipe[jgit-chef::install]"
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

