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

To insert the full text of a license at the top of the file, enter `:License('abbr')`, where `abbr` refers to the abbreviation in the table.
Some licenses require that license stubs be inserted at the top of files.
(See the **Stub** column in the table.)
For applicable licenses, you can get the stub using `:Stub('abbr')`.
Calling `:Stub` on licenses without an available stub causes an error.

Some licenses and stubs require a year, author, and/or email address.
This plugin automatically populates those for you!
The year always uses the current year, but to set your name and email address, add these lines to your .vimrc or equivalent:

```VimL
let g:license_author = 'Rick Astley'
let g:license_email = 'rickroll@example.com'
```

Though, unless you happen to be Rick Astley, you should use your own information.
You don't need to set these values; if the variables aren't set, the author and email in the inserted license text will appear as `{AUTHOR}` and `{EMAIL}`, respectively.

## Installation

If you don't have a preferred installation method, I recommend installing [Vim Plug](https://github.com/junegunn/vim-plug).
Then just add

```VimL
Plug 'ararslan/license-to-vim'
```

to your .vimrc or equivalent and submit `:source %` then `:PlugInstall`.

## License

Copyright (C) 2016, Alex Arslan. Distributed under the same terms as Vim itself. See `:help license`.
