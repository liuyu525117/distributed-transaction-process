
/***********************
 *   用户账户 TCC 库
 ***********************/

CREATE SEQUENCE public.tcc_transaction_account_id;

CREATE TABLE public.TCC_TRANSACTION_ACCOUNT
(
  TRANSACTION_ID int NOT NULL DEFAULT nextval('tcc_transaction_account_id'::regclass),
  DOMAIN character varying(100) DEFAULT NULL,
  GLOBAL_TX_ID bytea NOT NULL,
  BRANCH_QUALIFIER bytea NOT NULL,
  CONTENT bytea NOT NULL,
  STATUS int DEFAULT NULL,
  TRANSACTION_TYPE int DEFAULT NULL,
  RETRIED_COUNT int DEFAULT NULL,
  CREATE_TIME timestamp with time zone DEFAULT NULL,
  LAST_UPDATE_TIME timestamp with time zone DEFAULT NULL,
  VERSION int DEFAULT NULL,
  CONSTRAINT tcc_transaction_account_pkey PRIMARY KEY (TRANSACTION_ID),
  CONSTRAINT unique_tx UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.TCC_TRANSACTION_ACCOUNT
  OWNER TO postgres;
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.TRANSACTION_ID IS 'ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.DOMAIN IS '事务域';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.GLOBAL_TX_ID IS '全局事务ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.BRANCH_QUALIFIER IS '分支事务标识符';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.CONTENT IS '事务对象内容';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.STATUS IS '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.TRANSACTION_TYPE IS '事务类型: 1 主事务；2 分支事务';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.RETRIED_COUNT IS '事务恢复重试次数';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.LAST_UPDATE_TIME IS '最后更新时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_ACCOUNT.VERSION IS '版本号';


/***********************
 *   积分账户 TCC 库
 ***********************/

CREATE SEQUENCE public.tcc_transaction_point_id;

CREATE TABLE public.TCC_TRANSACTION_POINT
(
  TRANSACTION_ID int NOT NULL DEFAULT nextval('tcc_transaction_account_id'::regclass),
  DOMAIN character varying(100) DEFAULT NULL,
  GLOBAL_TX_ID bytea NOT NULL,
  BRANCH_QUALIFIER bytea NOT NULL,
  CONTENT bytea NOT NULL,
  STATUS int DEFAULT NULL,
  TRANSACTION_TYPE int DEFAULT NULL,
  RETRIED_COUNT int DEFAULT NULL,
  CREATE_TIME timestamp with time zone DEFAULT NULL,
  LAST_UPDATE_TIME timestamp with time zone DEFAULT NULL,
  VERSION int DEFAULT NULL,
  CONSTRAINT tcc_transaction_point_pkey PRIMARY KEY (TRANSACTION_ID),
  CONSTRAINT unique_tx_point UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.TCC_TRANSACTION_POINT
  OWNER TO postgres;
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.TRANSACTION_ID IS 'ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.DOMAIN IS '事务域';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.GLOBAL_TX_ID IS '全局事务ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.BRANCH_QUALIFIER IS '分支事务标识符';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.CONTENT IS '事务对象内容';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.STATUS IS '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.TRANSACTION_TYPE IS '事务类型: 1 主事务；2 分支事务';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.RETRIED_COUNT IS '事务恢复重试次数';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.LAST_UPDATE_TIME IS '最后更新时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_POINT.VERSION IS '版本号';


/***********************
 *   资金账户 TCC 库
 ***********************/

CREATE SEQUENCE public.tcc_transaction_capital_id;

CREATE TABLE public.TCC_TRANSACTION_CAPITAL
(
  TRANSACTION_ID int NOT NULL DEFAULT nextval('tcc_transaction_capital_id'::regclass),
  DOMAIN character varying(100) DEFAULT NULL,
  GLOBAL_TX_ID bytea NOT NULL,
  BRANCH_QUALIFIER bytea NOT NULL,
  CONTENT bytea NOT NULL,
  STATUS int DEFAULT NULL,
  TRANSACTION_TYPE int DEFAULT NULL,
  RETRIED_COUNT int DEFAULT NULL,
  CREATE_TIME timestamp with time zone DEFAULT NULL,
  LAST_UPDATE_TIME timestamp with time zone DEFAULT NULL,
  VERSION int DEFAULT NULL,
  CONSTRAINT tcc_transaction_capital_pkey PRIMARY KEY (TRANSACTION_ID),
  CONSTRAINT unique_tx_capital UNIQUE (GLOBAL_TX_ID, BRANCH_QUALIFIER)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.TCC_TRANSACTION_CAPITAL
  OWNER TO postgres;
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.TRANSACTION_ID IS 'ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.DOMAIN IS '事务域';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.GLOBAL_TX_ID IS '全局事务ID';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.BRANCH_QUALIFIER IS '分支事务标识符';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.CONTENT IS '事务对象内容';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.STATUS IS '事务状态，TRYING(1)，CONFIRMING(2)，CANCELLING(3)';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.TRANSACTION_TYPE IS '事务类型: 1 主事务；2 分支事务';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.RETRIED_COUNT IS '事务恢复重试次数';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.CREATE_TIME IS '创建时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.LAST_UPDATE_TIME IS '最后更新时间';
COMMENT ON COLUMN public.TCC_TRANSACTION_CAPITAL.VERSION IS '版本号';
