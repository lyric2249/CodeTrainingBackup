-- Conceptually, NULL means “a missing unknown value” and it is treated somewhat differently from other values.

select col2 from t1 where col1 != 'A';


select col2 from t1 where col1 != 'A' or col1 is null;


select col2 from t1 where coalesce(col1, 'B') != 'A';
