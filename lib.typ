#let callout(body, title: "Callout", fill: blue, title_color: white, body_color: black, icon: none) = {
  block(fill: fill,
	   width: 100%,
	   inset: 8pt)[
	  = #text(title_color)[#icon #title]
	  #text(body_color)[
		  #body
		  ]
	]
}

#callout["hey there!"]

#callout(title: "toto",
  fill: rgb(229, 240, 252),
		title_color: rgb(21, 30, 44),
		icon: "🛈")["toto!"]

#let note(body, ..params) = callout(title: "Note",
			fill: rgb(21, 30, 44),
			icon: "✎",
			title_color: rgb(21, 122, 255),
			body_color: white,
								   body, ..params)

#let info(body, ..params) = callout(title: "Info",
		   fill: rgb(21, 30, 44),
								   icon: "🛈",
								   title_color: rgb(21, 122, 255),
								   body_color: rgb(8, 109, 221),
								   body, ..params)

#let warning(body, ..params) = callout(title: "Warning",
		   fill: rgb(42, 33, 24),
									  icon: "⚠",
									  title_color: rgb(233, 151, 63),
									  body_color: white,
									  body, ..params)

#let success(body, ..params) = callout(title: "Success",
		   fill: rgb(25, 39, 29),
									  title_color: rgb(68, 207, 110),
									  icon: "✓",
									  body_color: white,
									  body, ..params)

#let check(body, ..params) = success(body, title: "Check", ..params)
