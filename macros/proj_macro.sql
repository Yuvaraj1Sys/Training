{% macro cur_timestamp() %}
    convert_timezone('UTC',current_timestamp)::timestamp_ntz
{% endmacro %}

{% macro macro_var(var_nm) %}
    {% set val=target.name %}
    {% if var_nm=='ana_db_name' %}
        {% do return("analytics_"~val~"db") %}      
    {% endif %}
{% endmacro %}
