from jinja2 import Template
with open(
template = Template('Hello {{ name }}!')
print(template.render(name='John Doe'))
