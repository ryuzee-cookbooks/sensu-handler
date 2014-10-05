sensu-handler Cookbook
===========================
This cookbook enables hanlder function to Sensu

Requirements
------------

No requirement

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### sensu-handler::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sensu-handler']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### sensu-handler::default
Just include `sensu-handler` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[sensu-handler]"
  ]
}
```

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
Authors: TODO: List authors
