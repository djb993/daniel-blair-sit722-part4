from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
import os

# SQLALCHEMY_DATABASE_URL = "postgresql://admin:E5OJuKRE14iotwfsvHwJeqsjaKK1eKmO@dpg-cq0nb2aju9rs73b0500g-a.oregon-postgres.render.com/part2" #os.getenv("DATABASE_URL")
SQLALCHEMY_DATABASE_URL = "postgresql://cloud_native_part4_db_fj1s_user:fGcpT25oEM4H6rFJVbCXwtuhy4sks5eO@dpg-crbgi53qf0us73dcbufg-a.singapore-postgres.render.com/cloud_native_part4_db_fj1s" #os.getenv("DATABASE_URL")

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()
