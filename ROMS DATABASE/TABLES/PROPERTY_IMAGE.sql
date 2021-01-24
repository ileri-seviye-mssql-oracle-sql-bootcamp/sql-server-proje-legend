
CREATE TABLE PROPERTY_IMAGES
(
ID INT PRIMARY KEY,
PROPERTY_ID INT,
ADDED_BY_USER INT,
IMAGE IMAGE,
CREATED DATETIME,
STATUS TINYINT,
	CONSTRAINT FK_PROPERTY FOREIGN KEY(PROPERTY_ID) REFERENCES PROPERTIES(ID)
)