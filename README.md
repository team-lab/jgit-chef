jgit Cookbook
==================
Install jgit.sh
Clone from Amazon s3.

Resource
-----
#### jgit resource

```ruby
jgit "/app/app_name" do
  repository "amazon-s3://IAM@backet-name/app.git"
  revision "master"
  action :sync
end
```

jgit resource is extend from git resource.
see https://docs.getchef.com/resource_git.html


Attributes
----------

#### jgit::install
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
    <td><tt>"https://github.com/team-lab/jgit/releases/download/v3.6.0.201411121045-token4-env4/jgit"</tt></td>
  </tr>
  <tr>
    <td><tt>['jgit']['checksum']</tt></td>
    <td>String</td>
    <td>checksum of jgit binary</td>
    <td><tt>"03548ab0660fb275c5cbf260cb6f7a41412f8fb4b11016ce6025bb2336566b52"</tt></td>
  </tr>
</table>

Recipe
-----
#### jgit::install

Just include `jgit` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[java]"
    "recipe[jgit-chef::install]"
  ]
}
```

*WARNING* : jgit::install is not install 'jre(Java Runtime Environment)', but jgit need jre.
you need jre by othre recipe.


Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Public domain

