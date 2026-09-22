-- FINAL SUPABASE MIGRATION FOR NAJDIA PORTFOLIO CMS
-- Run this ONCE in Supabase SQL Editor before using Publish/Unpublish
-- on Learning, Research, Goals, Projects, Timeline, Currently, Education,
-- Skills and Contact. Existing content is preserved and becomes published.

begin;

alter table if exists public.learning add column if not exists visibility text not null default 'published';
alter table if exists public.research add column if not exists visibility text not null default 'published';
alter table if exists public.goals add column if not exists visibility text not null default 'published';
alter table if exists public.projects add column if not exists visibility text not null default 'published';
alter table if exists public.timeline add column if not exists visibility text not null default 'published';
alter table if exists public.currently add column if not exists visibility text not null default 'published';
alter table if exists public.education add column if not exists visibility text not null default 'published';
alter table if exists public.skills add column if not exists visibility text not null default 'published';
alter table if exists public.contact add column if not exists visibility text not null default 'published';

update public.learning set visibility='published' where visibility is null or visibility='';
update public.research set visibility='published' where visibility is null or visibility='';
update public.goals set visibility='published' where visibility is null or visibility='';
update public.projects set visibility='published' where visibility is null or visibility='';
update public.timeline set visibility='published' where visibility is null or visibility='';
update public.currently set visibility='published' where visibility is null or visibility='';
update public.education set visibility='published' where visibility is null or visibility='';
update public.skills set visibility='published' where visibility is null or visibility='';
update public.contact set visibility='published' where visibility is null or visibility='';

-- Sync the requested current portfolio identity/content.
update public.home_content
set name='Najdia Islam Shaj',
    small_title='Welcome to my Journey',
    headline='Electrical and Electronic Engineering Student',
    button_text='Welcome to my Journey'
where id=(select id from public.home_content order by updated_at desc nulls last, id desc limit 1);

update public.about_content
set department='Electrical and Electronic Engineering',
    university='Jamalpur Science & Technology Univarsity , Jamalpur'
where id=(select id from public.about_content order by updated_at desc nulls last, id desc limit 1);

update public.education
set university='Jamalpur Science & Technology Univarsity , Jamalpur',
    session='2022-2023'
where id=(select id from public.education order by created_at asc nulls last, id asc limit 1);

commit;
