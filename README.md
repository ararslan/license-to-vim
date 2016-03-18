# license-to-vim

This is a simple Vim plugin that gives you the license to license your code.
You can insert a license right into your code without leaving Vim!

The table below lists all licenses currently available in this plugin, as well as the abbreviation used by the plugin and whether the license suggests adding a stub.

| License | Abbreviation | Stub |
|:----------------------------------------------------------------------------------|:----------:|:---:|
| [GNU Affero General Public License 3.0](https://opensource.org/licenses/AGPL-3.0) | `agpl`     | Yes |
| [Apache License 2.0](https://opensource.org/licenses/Apache-2.0)                  | `apache`   | Yes |
| [Artistic License 2.0](https://opensource.org/licenses/Artistic-2.0)              | `artistic` | No  |
| [BSD 2-Clause License](https://opensource.org/licenses/BSD-2-Clause)              | `bsd-2`    | No  |
| [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause)              | `bsd-3`    | No  |
| [CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0)                      | `cc0`      | Yes |
| [Eclipse Public License 1.0](https://opensource.org/licenses/EPL-1.0)             | `epl`      | No  |
| [GNU General Public License 2.0](https://opensource.org/licenses/GPL-2.0)         | `gpl-2`    | Yes |
| [GNU General Public License 3.0](https://opensource.org/licenses/GPL-3.0)         | `gpl-3`    | Yes |
| [ISC License](https://opensource.org/licenses/ISC)                                | `isc`      | No  |
| [GNU Lesser General Public License 2.1](https://opensource.org/licenses/LGPL-2.1) | `lgpl-2`   | Yes |
| [GNU Lesser General Public License 3.0](https://opensource.org/licenses/LGPL-3.0) | `lgpl-3`   | Yes |
| [MIT License](https://opensource.org/licenses/MIT)                                | `mit`      | No  |
| [Mozilla Public License 2.0](https://opensource.org/licenses/MPL-2.0)             | `mpl`      | No  |
| [Unlicense](http://unlicense.org)                                                 | `unlicense` | No  |
| [Do What The Fuck You Want To Public License](http://www.wtfpl.net)               | `wtf`      | No  |

Don't see the license you want?
Open an issue and I'd be happy to add it.

To insert the full text of a license under the cursor, enter `:License('abbr')`, where `abbr` refers to the abbreviation in the table.
Some licenses require that license stubs be inserted at the top of files.
(See the **Stub** column in the table.)
For applicable licenses, you can get the stub using `:Stub('abbr')`.
Calling `:Stub` on licenses without an available stub causes an error.
