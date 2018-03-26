/*
新しくデータベースを作成する
CREATE DATABASE database_name;

新しくユーザーを作成する
CREATE USER 'your_name'@'localhost' IDENTIFIED BY 'your_password';

作成したユーザーに作成したデータベースの操作権限を付与する
GRANT ALL PRIVILEGES ON database_name.* TO 'your_name'@'localhost';
*/

CREATE DATABASE IF NOT EXISTS greenhorn COLLATE 'utf8_general_ci';

-- CREATE USER 'greenhorn'@'localhost' IDENTIFIED BY 'greenHorn1?';

GRANT ALL ON greenhorn.* TO 'greenhorn'@'localhost' IDENTIFIED BY 'greenHorn1?';