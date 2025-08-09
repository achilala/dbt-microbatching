{{
    config(
        materialized='incremental',
        incremental_strategy='microbatch',
        event_time='event_at',
        begin='2025-08-09T00:00:00Z',
        batch_size='hour'
    )
}}


with source as (
    select * from {{ source('events', 'test_data') }}
)

, renamed as (
    select
        event_id::integer as event_id,
        event_at::timestamptz as event_at,
        _loaded_at::timestamptz as _loaded_at
    from source
)

select * from renamed
