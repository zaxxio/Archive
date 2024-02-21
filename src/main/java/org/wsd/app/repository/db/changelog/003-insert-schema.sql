--liquibase formatted sql

--changeset samlien:3 context:dev
INSERT INTO budget.department ("name", created_time, created_person, updated_time, updated_person)
VALUES('DEV1', current_timestamp, 'demo', null, null);
INSERT INTO budget.department ("name", created_time, created_person, updated_time, updated_person)
VALUES('DEV2', current_timestamp, 'demo', null, null);
--rollback delete from budget.department where name in ('DEV1', 'DEV2')

--changeset samlien:4 context:prod
INSERT INTO budget.department ("name", created_time, created_person, updated_time, updated_person)
VALUES('DAS', current_timestamp, 'system', null, null);
INSERT INTO budget.department ("name", created_time, created_person, updated_time, updated_person)
VALUES('CSD', current_timestamp, 'system', null, null);
--rollback delete from budget.department where name in ('DAS', 'CSD')