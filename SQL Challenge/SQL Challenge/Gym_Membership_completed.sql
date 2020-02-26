CREATE TABLE "trainers" (
    "trainer_id" int   NOT NULL,
    "gym_id" int   NOT NULL,
    "trainer_first_name" VARCHAR   NOT NULL,
    "trainer_last_name" VARCHAR   NOT NULL,
    "trainer_phone_number" int   NOT NULL,
    CONSTRAINT "pk_trainers" PRIMARY KEY (
        "trainer_id"
     )
);

CREATE TABLE "members" (
    "member_id" int   NOT NULL,
    "member_first_name" VARCHAR   NOT NULL,
    "member_last_name" VARCHAR   NOT NULL,
    "member_address" VARCHAR   NOT NULL,
    "member_phone_number" int   NOT NULL,
    "member_age" int   NOT NULL,
    "member_exercise_level" VARCHAR   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "member_id"
     )
);

CREATE TABLE "gym" (
    "gym_id" int   NOT NULL,
    "member_id" int   NOT NULL,
    "trainer_id" int   NOT NULL,
    "gym_address" VARCHAR   NOT NULL,
    CONSTRAINT "pk_gym" PRIMARY KEY (
        "gym_id"
     )
);

CREATE TABLE "payments" (
    "payment_id" int   NOT NULL,
    "monthly_gym_fee" int   NOT NULL,
    CONSTRAINT "pk_payments" PRIMARY KEY (
        "payment_id"
     )
);


SELECT * FROM "members"