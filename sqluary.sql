select
    mt.trip_id
from
    TEAM_MEMBER as m
    join TEAM_MANAGEMENT as mt on m.LEADER_ID = mt.LEADER_ID
    and m.START_TIME_OF_TRIP = mt.START_TIME_OF_TRIP
where
    m.member_id = '123456789012';






SELECT
    city
from
    routestop
where
    trip_id = 2;








select
    rating,
    comment
from
    review
where
    concat (LEADER_ID, START_TIME_OF_TRIP) in (
        select
            concat (LEADER_ID, START_TIME_OF_TRIP)
        from
            TEAM_MANAGEMENT
        where
            trip_id = 2
    )




select
    sum(memcount)*(select price from trip where trip_id=2) as total
from
    (
        select
            count(member_id) as memcount
        from
            team_member
        where
            concat (LEADER_ID, START_TIME_OF_TRIP) in (
                select
                    concat (LEADER_ID, START_TIME_OF_TRIP)
                from
                    TEAM_MANAGEMENT
                where
                    trip_id = 2
            )
    ) as f










