TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` trigger before_insert_price\nBEFORE INSERT\nON products\nFOR EACH ROW\nBEGIN\nIF new.cost_price>= new.retail_price then\nSIGNAL SQLSTATE\'45000\' SET MESSAGE_TEXT = \'Retail price must be greater than cost price\';\nend if;\nend'
sql_modes=1098907648
definers='root@localhost'
client_cs_names='cp850'
connection_cl_names='cp850_general_ci'
db_cl_names='utf8mb4_general_ci'
created=167406718370
