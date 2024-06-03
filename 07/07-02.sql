CREATE VIEW dept_summary AS
SELECT
    d.dname,
    MIN(e.sal) AS minsal,
    MAX(e.sal) AS maxsal,
    AVG(e.sal) AS avgsal
FROM
    dept d
    JOIN emp e ON d.deptno = e.deptno
GROUP BY
    d.dname;
