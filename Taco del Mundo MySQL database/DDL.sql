USE Taco_del_mundo;

CREATE TABLE Category (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Origin (
  origin_id INT PRIMARY KEY,
  origin_name VARCHAR(50) NOT NULL
);

CREATE TABLE Ingredient (
  ingredient_id INT PRIMARY KEY,
  ingredient_name VARCHAR(50) NOT NULL,
  quantity DECIMAL(10, 2) NOT NULL,
  import_date DATE NOT NULL,
  expired_date DATE NOT NULL,
  unit VARCHAR(20) NOT NULL
);

CREATE TABLE Dish (
  dish_id INT PRIMARY KEY,
  dish_name VARCHAR(100) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  availability BOOLEAN NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Dish_Origin (
  dish_id INT NOT NULL,
  origin_id INT NOT NULL,
  PRIMARY KEY (dish_id, origin_id),
  FOREIGN KEY (dish_id) REFERENCES Dish(dish_id),
  FOREIGN KEY (origin_id) REFERENCES Origin(origin_id)
);

CREATE TABLE Dish_Ingredient (
  dish_id INT NOT NULL,
  ingredient_id INT NOT NULL,
  PRIMARY KEY (dish_id, ingredient_id),
  FOREIGN KEY (dish_id) REFERENCES Dish(dish_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);
