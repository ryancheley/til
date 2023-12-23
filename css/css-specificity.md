# CSS Specificity

I've always struggled with understanding CSS and have **mostly** given up on trying to make any sense of it for the longest time. I purchased one of Julia Evan's (b0rk) zines (Hell Yes! CSS!) and came across an idea called specificity when determining what style gets applied. While I **know** that CSS stands for Cascading Style Sheets, the Cascading part of that always meant to me an inheritance relationship with the elements, but in doing a bit more digging it [seems to mean several things all at once](https://chat.openai.com/share/b02a3c74-df0d-4e03-9f64-a4b385833d59):

- Priority of Styles
- Specificity
- Source Order
- Inheritance

From the MDN docs for [CSS Specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity):

> The selector weight categories are listed here in the order of decreasing specificity:
> 
> [ID column](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity#id_column)
> 
> Includes only [ID selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/ID_selectors), such as `#example`. For each ID in a matching selector, add 1-0-0 to the weight value.
> 
> [CLASS column](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity#class_column)
> 
> Includes [class selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/Class_selectors), such as `.myClass`, attribute selectors like [`type="radio"]` and [`type="radio"]`, and pseudo-classes, such as `:hover`, `:nth-of-type(3n)`, and `:required`. For each class, attribute selector, or pseudo-class in a matching selector, add 0-1-0 to the weight value.
> 
> [TYPE column](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity#type_column)
> 
> Includes [type selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/Type_selectors), such as `p`, `h1`, and `td`, and pseudo-elements like `::before`, `::placeholder`, and all other selectors with double-colon notation. For each type or pseudo-element in a matching selector, add 0-0-1 to the weight value.
> 
> [No value](https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity#no_value)
> 
> The universal selector ([`type="radio"](https://developer.mozilla.org/en-US/docs/Web/CSS/Universal_selectors)) and the pseudo-class [`type="radio"](https://developer.mozilla.org/en-US/docs/Web/CSS/:where) and its parameters aren't counted when calculating the weight so their value is 0-0-0, but they do match elements. These selectors do not impact the specificity weight value.
