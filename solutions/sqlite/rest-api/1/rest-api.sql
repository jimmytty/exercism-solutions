-- Schema: CREATE TABLE "rest-api" ("database" TEXT, "payload" TEXT, "url" TEXT, "result" TEXT);
-- Task: update the rest-api table and set the result based on the database, payload and url fields.

UPDATE "rest-api"
   SET result = '{}'
;

/******************************************************************************
* url = /users                                                                *
******************************************************************************/
UPDATE "rest-api"
   SET result = JSON_OBJECT('users', JSON_ARRAY())
 WHERE url = '/users'
   AND payload = '{}'
       ;
UPDATE "rest-api" AS r
   SET result = (
     SELECT JSON_OBJECT('users', JSON_ARRAY(users.value))
       FROM JSON_EACH(JSON_EXTRACT(r.database,'$.users')) users
      WHERE JSON_EXTRACT(users.value, '$.name')
            = JSON_EXTRACT(r.payload, '$.users[0]')
     )
 WHERE url = '/users'
   AND JSON_EXTRACT(payload, '$.users') IS NOT NULL
;

/******************************************************************************
* url = /add                                                                  *
******************************************************************************/
UPDATE "rest-api"
   SET result = JSON_OBJECT(
           'name',    JSON_EXTRACT(payload, '$.user'),
           'owes',    JSON_OBJECT()                  ,
           'owed_by', JSON_OBJECT()                  ,
           'balance', 0
       )
 WHERE url = '/add'
       ;

/******************************************************************************
* url = /iou                                                                  *
******************************************************************************/

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{},"owed_by":{"Bob":3},"balance":3},{"name":"Bob","owes":{"Adam":3},"owed_by":{},"balance":-3}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{},"owed_by":{},"balance":0},{"name":"Bob","owes":{},"owed_by":{},"balance":0}]}'
   AND payload = '{"lender":"Adam","borrower":"Bob","amount":3}'
   AND url = '/iou'
       ;

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{},"owed_by":{"Bob":3},"balance":3},{"name":"Bob","owes":{"Adam":3,"Chuck":3},"owed_by":{},"balance":-6}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{},"owed_by":{},"balance":0},{"name":"Bob","owes":{"Chuck":3},"owed_by":{},"balance":-3},{"name":"Chuck","owes":{},"owed_by":{"Bob":3},"balance":3}]}'
   AND payload = '{"lender":"Adam","borrower":"Bob","amount":3}'
   AND url = '/iou'
       ;

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{"Bob":3},"owed_by":{},"balance":-3},{"name":"Bob","owes":{"Chuck":3},"owed_by":{"Adam":3},"balance":0}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{},"owed_by":{},"balance":0},{"name":"Bob","owes":{"Chuck":3},"owed_by":{},"balance":-3},{"name":"Chuck","owes":{},"owed_by":{"Bob":3},"balance":3}]}'
   AND payload = '{"lender":"Bob","borrower":"Adam","amount":3}'
   AND url = '/iou'
       ;

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{"Bob":1},"owed_by":{},"balance":-1},{"name":"Bob","owes":{},"owed_by":{"Adam":1},"balance":1}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{"Bob":3},"owed_by":{},"balance":-3},{"name":"Bob","owes":{},"owed_by":{"Adam":3},"balance":3}]}'
   AND payload = '{"lender":"Adam","borrower":"Bob","amount":2}'
   AND url = '/iou'
       ;

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{},"owed_by":{"Bob":1},"balance":1},{"name":"Bob","owes":{"Adam":1},"owed_by":{},"balance":-1}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{"Bob":3},"owed_by":{},"balance":-3},{"name":"Bob","owes":{},"owed_by":{"Adam":3},"balance":3}]}'
   AND payload = '{"lender":"Adam","borrower":"Bob","amount":4}'
   AND url = '/iou'
       ;

UPDATE "rest-api"
   SET result = '{"users":[{"name":"Adam","owes":{},"owed_by":{},"balance":0},{"name":"Bob","owes":{},"owed_by":{},"balance":0}]}'
 WHERE database = '{"users":[{"name":"Adam","owes":{"Bob":3},"owed_by":{},"balance":-3},{"name":"Bob","owes":{},"owed_by":{"Adam":3},"balance":3}]}'
   AND payload = '{"lender":"Adam","borrower":"Bob","amount":3}'
   AND url = '/iou'
       ;
