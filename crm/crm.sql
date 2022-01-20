-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_membership;
DROP TABLE IF EXISTS ids;

CREATE TABLE salespersons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  address TEXT
);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  calls TEXT,
  email TEXT,
  timing datetime,
  notes TEXT,
  salespersons_id TEXT,
  contacts_id TEXT,
  companies_id TEXT
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  company_id TEXT
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  industries_id TEXT
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Descrip TEXT,
  SubIndustry TEXT
);

CREATE TABLE industry_membership (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  Descrip TEXT,
  companies_id TEXT,
  industries_id TEXT
);

CREATE TABLE ids (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  contacts_id TEXT,
  activities_id TEXT,
  companies_id TEXT,
  sales team_id TEXT,
  industries_id TEXT
);


