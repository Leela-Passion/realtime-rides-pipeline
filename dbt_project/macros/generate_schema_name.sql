{% macro generate_schema_name(custom_schema_name, node) -%}

    {# Use the target schema as default #}
    {% set default_schema = target.schema -%}

    {# If no custom schema is provided, use default #}
    {% if custom_schema_name is none -%}

        {{ default_schema }}

    {% else -%}

        {{ custom_schema_name | trim }}

    {% endif %}

{%- endmacro %}
