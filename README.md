# redirectBack
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)


## Installation

`box install redirectBack`

## Basic Usage

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

## History Usage
This allows you to redirect 1-5 pages/events back.  
Ex. You're on an index page of listings, where you click on "new" that brings you to a new form.  After submitting the form, you do not wish to go back to the new form page instead you wish to go back to the index page. `redirectBack( 2 );`
```cfc
// handlers/Main.cfc
component {
	function plainRedirect( event, rc, prc ) {
		redirectBack( 2 );
	}
}
```


Uses the ColdBox's flash storage to store the last 5 request.  If there is no last request, redirects to "" (empty string).
## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars1.githubusercontent.com/u/2583646?v=4" width="100px;"/><br /><sub><b>Eric Peterson</b></sub>](https://github.com/elpete)<br />[💻](https://github.com/elpete/redirectBack/commits?author=elpete "Code") [📖](https://github.com/elpete/redirectBack/commits?author=elpete "Documentation") | [<img src="https://avatars2.githubusercontent.com/u/35044908?v=4" width="100px;"/><br /><sub><b>Andrew Davis</b></sub>](https://github.com/blusol850)<br />[💻](https://github.com/elpete/redirectBack/commits?author=blusol850 "Code") [📖](https://github.com/elpete/redirectBack/commits?author=blusol850 "Documentation") |
| :---: | :---: |
<!-- ALL-CONTRIBUTORS-LIST:END -->
Thanks goes to these wonderful people ([emoji key](https://github.com/kentcdodds/all-contributors#emoji-key)):

This project follows the [all-contributors](https://github.com/kentcdodds/all-contributors) specification. Contributions of any kind welcome!
