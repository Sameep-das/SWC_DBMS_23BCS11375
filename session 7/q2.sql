SELECT COUNT(*)
FROM (
        SELECT DISTINCT ON (page_id) page_id,
            status
        FROM page_status_log
        ORDER BY page_id,
            changed_at DESC,
            event_id DESC
    ) t
WHERE status = 'active';