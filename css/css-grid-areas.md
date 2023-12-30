# css grid areas

There is a css concept called `grid areas` that will allow you to visually layout your site. 

Using an example from Julia Evan's zine [Hell Yes! CSS!]() page 17

1. Write the HTML
```
<div class="grid">
	<div class="top"></div>
	<div class="side"></div>
	<div class="main"></div>
</div>
```

2. Define the areas

```
.grid {
	display: grid;
	grid-template-columns: 
		200px 800px;
	grid-template-areas: 
		"header header"
		"sidebar content";
}
```

3. Set grid-area

.top {
	grid-area: header;
	border: 2pm solid black;
}
.side {
	grid-area: sidebar;
	border: 2pm solid black;
}
.main {
	grid-area: content;
	border: 2pm solid black;
}

An example I created can be found [here](https://codepen.io/ryancheley/pen/ZEPbzqy)