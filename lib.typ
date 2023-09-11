// Functions

#let callout(body, title: "Callout", fill: blue, title-color: white, body-color: black, icon: none) = {
  block(fill: fill,
	   width: 100%,
	   inset: 8pt)[
	  = #text(title-color)[#icon #title]
	  #text(body-color)[
		  #body
		  ]
	]
}

// Presets

#callout(title: "toto",
  fill: rgb(229, 240, 252),
		title-color: rgb(21, 30, 44),
		icon: "🛈")["toto!"]

#let note(body, ..params) = callout(title: "Note",
			fill: rgb(21, 30, 44),
			icon: "✎",
			title-color: rgb(21, 122, 255),
			body-color: white,
								   body, ..params)

#let info(body, ..params) = callout(title: "Info",
		   fill: rgb(21, 30, 44),
								   icon: "🛈",
								   title-color: rgb(21, 122, 255),
								   body-color: rgb(8, 109, 221),
								   body, ..params)

#let warning(body, ..params) = callout(title: "Warning",
		   fill: rgb(42, 33, 24),
									  icon: "⚠",
									  title-color: rgb(233, 151, 63),
									  body-color: white,
									  body, ..params)

#let success(body, ..params) = callout(title: "Success",
		   fill: rgb(25, 39, 29),
									  title-color: rgb(68, 207, 110),
									  icon: "✓",
									  body-color: white,
									  body, ..params)

#let check(body, ..params) = success(body, title: "Check", ..params)

#let question(body, ..params) = callout(title: "Question",
		   fill: rgb(41, 41, 29),
									  title-color: rgb(224, 222, 113),
									  icon: "?",
									  body-color: white,
									  body, ..params)

#let fail(body, ..params) = callout(title: "Failed",
		   fill: rgb(44, 25, 26),
									  title-color: rgb(175, 52, 56),
									  icon: "𐄂",
									  body-color: white,
										body, ..params)

#let example(body, ..params) = callout(title: "Example",
		   fill: rgb(25, 79, 29),
									  title-color: rgb(68, 217, 110),
									  icon: "🕮",
									  body-color: white,
										body, ..params)

#let examples(body, ..params) = example(body, title: "Examples", ..params)

#let quote(body, ..params) = callout(title: "Quote",
		   fill: rgb(34, 34, 34),
									  title-color: rgb(158, 158, 158),
									  icon: "❞",
									  body-color: white,
										body, ..params)
