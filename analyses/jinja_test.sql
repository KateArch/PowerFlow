{% set person = {
    'name': 'Katerina',
    'number': 3
} %}

{{ person.name }}
{{ person ['number']}}

{% set animals = ['fox', 'lion', 'bear']%}

{{ animals[0] }}

{% set t=80 %}
{{t}}

If it's {{t}} degrees outside I prefer a
{% if t > 60 %}
frappucino!
{% else %}
hot chocolate!
{% endif %}

{% set flavors=['chocolate', 'vanilla', 'strawberry']%}
{% for flavor in flavors %}
Today I want a {{flavor}} ice cream
{% endfor %}

{% macro hoyquiero (flavor='vanilla', dessert='ice cream')%}
Today I want {{flavor}}{{dessert}}
{% endmacro %}