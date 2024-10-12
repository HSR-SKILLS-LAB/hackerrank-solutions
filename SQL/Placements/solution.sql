SELECT
    st.Name
FROM
    students AS st
    JOIN packages AS sp ON st.ID = sp.ID
    JOIN friends AS f ON st.ID = f.ID
    JOIN packages AS fp ON f.Friend_ID = fp.ID
WHERE
    sp.Salary < fp.Salary
ORDER BY
    fp.Salary;