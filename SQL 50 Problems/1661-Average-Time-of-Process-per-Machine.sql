select
    machine_id,
    ROUND(AVG(processing_time),3) as processing_time
From
    (SELECT 
        t1.machine_id,
        t1.process_id,
        t2.timestamp - t1.timestamp AS processing_time
    FROM 
        Activity t1
    JOIN 
        Activity t2
    ON 
        t1.machine_id = t2.machine_id 
        AND t1.process_id = t2.process_id 
        AND t1.activity_type = 'start' 
        AND t2.activity_type = 'end')
AS process_times
GROUP BY
    machine_id;