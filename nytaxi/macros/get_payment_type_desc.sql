{#
    Payment type currently has integers. With the help of this function, we will create a look-up case statement to create the descriptions field
#}

{% macro get_payment_type_desc(payment_type) %}

    CASE cast ( {{ payment_type }} AS integer)
        WHEN 1 then 'Credit Card'
        WHEN 2 then 'Cash'
        WHEN 3 then 'No Charge'
        WHEN 4 then 'Dispute'
        WHEN 5 then 'Unknown'
        WHEN 6 then 'Voided Trip'
        ELSE 'EMPTY'
    END

{% endmacro %}
