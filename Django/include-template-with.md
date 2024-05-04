Include and the with argument

I was working on refactoring a really long template in a Django project and attempted to refactor it to break it up into more manageable pieces. As I was working through it I remembered why I made it so long in the first place ... I didn't know how to pass context from a parent template to a sub template. I really didn't want the 💩 show of a template that I had so I finally **read** the docs for the `include` for Django [here](https://docs.djangoproject.com/en/5.0/ref/templates/builtins/#include)

It turns out it's not that difficult to pass the context, you just need to include some keyword argument with a `with` in the `include` and you're good to go. 

For example, if you have a template that looks like this

```python

A bunch of HTML goes here

...

<ol>
{% for person in people %}
	<li>
	{{ person}}
	</li>
{% endfor %}
<ol>

...

A bunch more HTML is here

```

And you want to put the list into a sub template (maybe because you are using it in several places ...) you can do this

```python

A bunch of HTML goes here

...

{% include 'partal/person/person_list.html' with person=person%}

...

A bunch more HTML is here

```


And then you can have `partal/person/person_list.html` that looks like this

```python
<ol>
{% for person in people %}
	<li>
	{{ person}}
	</li>
{% endfor %}
<ol>
```

So now my templates are getting to be a little less unwieldy.