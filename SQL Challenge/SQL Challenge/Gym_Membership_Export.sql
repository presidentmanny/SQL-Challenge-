-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "trainers" (
    "trainer_id" int   NOT NULL,
    "gym_id" int   NOT NULL,
    "trainer_first_name" string   NOT NULL,
    "trainer_last_name" string   NOT NULL,
    "trainer_phone_number" int   NOT NULL,
    CONSTRAINT "pk_trainers" PRIMARY KEY (
        "trainer_id"
     )
);

CREATE TABLE "members" (
    "member_id" int   NOT NULL,
    "member_first_name" string   NOT NULL,
    "member_last_name" string   NOT NULL,
    "member_address" string   NOT NULL,
    "member_phone_number" int   NOT NULL,
    "member_age" int   NOT NULL,
    "member_exercise_level" string   NOT NULL,
    CONSTRAINT "pk_members" PRIMARY KEY (
        "member_id"
     )
);

CREATE TABLE "gym" (
    "gym_id" int   NOT NULL,
    "member_id" int   NOT NULL,
    "trainer_id" int   NOT NULL,
    "gym_address" string   NOT NULL,
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

