# redirectBack
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)


## Installation

`box install redirectBack`

## Usage

```cfc
// handlers/Main.cfc
component {
	function plainRedirect( event, rc, prc ) {
		redirectBack();
	}

	function redirectWithAdditionalParameters( event, rc, prc ) {
		redirectBack( /* takes anything setNextEvent takes */ );
	}
}
```

Uses the ColdBox's flash storage to store the last request.  If there is no last request, redirects to "" (empty string).
## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars1.githubusercontent.com/u/2583646?v=4" width="100px;"/><br /><sub><b>Eric Peterson</b></sub>](https://github.com/elpete)<br />[💻](https://github.com/elpete/redirectBack/commits?author=elpete "Code") [📖](https://github.com/elpete/redirectBack/commits?author=elpete "Documentation") | [<img src="https://avatars2.githubusercontent.com/u/35044908?v=4" width="100px;"/><br /><sub><b>Andrew Davis</b></sub>](https://github.com/blusol850)<br />[💻](https://github.com/elpete/redirectBack/commits?author=blusol850 "Code") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->
Thanks goes to these wonderful people ([emoji key](https://github.com/kentcdodds/all-contributors#emoji-key)):

This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!
