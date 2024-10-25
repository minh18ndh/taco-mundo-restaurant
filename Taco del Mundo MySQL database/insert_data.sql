DELETE FROM Dish_Origin;
DELETE FROM Dish_Ingredient;
DELETE FROM Dish;
DELETE FROM Category;
DELETE FROM Origin;
DELETE FROM Ingredient;

INSERT INTO Category (category_id, category_name) VALUES
	(1, 'Appetizer'),
    (2, 'Alcohol Drink'),
    (3, 'Non-alcohol Drink'),
    (4, 'Taco'),
    (5, 'Burrito'),
    (6, 'Taquito'),
    (7, 'Nachos'),
    (8, 'Empanada'),
    (9, 'Fajita'),
    (10, 'Quesadilla'),
    (11, 'Tamale'),
    (12, 'Salad'),
    (13, 'Cake'),
    (14, 'Ice Cream'),
    (15, 'Local Snacks');
  
INSERT INTO Origin (origin_id, origin_name) VALUES
	(1, 'Mexico'),
    (2, 'Venezuela'),
    (3, 'Guatemala'),
    (4, 'Dominican Republic'),
    (5, 'Brazil'),
    (6, 'Peru'),
    (7, 'Chile'),
    (8, 'Bolivia'),
    (9, 'Paraguay'),
    (10, 'Ecuador'),
    (11, 'Argentina'),
    (12, 'Uruguay'),
    (13, 'Colombia'),
    (14, 'Vietnam'),
    (15, 'Spain'),
    (16, 'Portugal'),
    (17, 'France'),
    (18, 'South Korea'),
    (19, 'Texas (United States)'),
    (20, 'Arizona (United States)'),
    (21, 'California (United States)');
    
-- Insert dishes for category 'Appetizer'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(1, 'Chorrillana', 4.99, 1, 1),
	(2, 'Provoleta', 4.99, 1, 1),
	(3, 'Leche de tigre', 4.99, 1, 1),
	(4, 'Ceviche', 4.99, 1, 1),
	(5, 'Bolinhos de bacalhau', 4.99, 1, 1);
    
-- Insert dishes for category 'Alcohol Drink'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(6, 'Caipirinha', 2.99, 1, 2),
	(7, 'Sucumbé', 2.99, 1, 2),
	(8, 'Carrulim', 2.99, 1, 2),
	(9, 'Canelazo', 2.99, 1, 2),
	(10, 'Refajo', 2.99, 1, 2),
	(11, 'Tannat', 2.99, 1, 2),
	(12, 'Bonarda Argentina', 2.99, 1, 2);
    
-- Insert dishes for category 'Non-alcohol Drink'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(13, 'Colada Morada', 2.99, 1, 3),
	(14, 'Mate', 2.99, 1, 3),
	(15, 'Tereré', 2.99, 1, 3),
	(16, 'Leche con Plátano', 2.99, 1, 3),
	(17, 'Ponche de Maca', 2.99, 1, 3);
    
-- Insert dishes for category 'Taco'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(18, 'Puffy taco', 5.99, 1, 4),
	(19, 'Navajo taco', 5.99, 1, 4),
	(20, 'Mission-Style taco', 5.99, 1, 4),
	(21, 'Taco de papa', 5.99, 1, 4),
	(22, 'Taco de adobada', 5.99, 1, 4),
	(23, 'Taco de canasta', 5.99, 1, 4),
	(24, 'Taco de pescado', 5.99, 1, 4),
	(25, 'Taco de chapulines', 5.99, 1, 4),
	(26, 'Taco de lengua', 5.99, 1, 4);
    
-- Insert dishes for category 'Burrito'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(27, 'French taco', 5.99, 1, 5),
    (28, 'San Diego burrito', 5.99, 1, 5),
    (29, 'Korean burrito', 5.99, 1, 5),
    (30, 'Seafood burrito', 5.99, 1, 5);
    
-- Insert dishes for category 'Taquito'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(31, 'Guatemalan Beef taquito', 5.99, 1, 6),
    (32, 'Carnitas flautas', 5.99, 1, 6);
    
-- Insert dishes for category 'Nachos'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(33, 'Big Mac nachos', 5.99, 1, 7),
    (34, 'Loaded Veggie nachos', 5.99, 1, 7);
   
-- Insert dishes for category 'Empanada'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(35, 'Empanada de cordero', 5.99, 1, 8),
    (36, 'Empanada Tucumanas', 5.99, 1, 8);
    
-- Insert dishes for category 'Fajita'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(37, 'Tejano fajita', 5.99, 1, 9),
    (38, 'Arrachera taco', 5.99, 1, 9);
    
-- Insert dishes for category 'Quesadilla'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(39, 'Blue corn quesadilla', 5.99, 1, 10),
    (40, 'Queso quesadilla', 5.99, 1, 10);
    
-- Insert dishes for category 'Tamale'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(41, 'Pasteles en hoja', 5.99, 1, 11),
    (42, 'Hallacas', 5.99, 1, 11);
    
-- Insert dishes for category 'Salad'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(43, 'Palta reina', 5.99, 1, 12),
    (44, 'Solterito', 5.99, 1, 12),
    (45, 'Salpicão de Frangos', 5.99, 1, 12);
    
-- Insert dishes for category 'Cake'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(46, 'Milhojas de dulce de leche', 4.99, 1, 13),
    (47, 'Chajá', 4.99, 1, 13),
	(48, 'Bolo de brigadeiro', 4.99, 1, 13);

-- Insert dishes for category 'Ice Cream'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(49, 'Queso helado', 3.99, 1, 14),
    (50, 'Fried Ice Cream', 3.99, 1, 14),
    (51, 'Créme de papayas', 3.99, 1, 14);
    
-- Insert dishes for category 'Local Snacks'
INSERT INTO Dish (dish_id, dish_name, price, availability, category_id) VALUES
	(52, 'Takis', 1.99, 1, 15),
    (53, 'Duvalín', 1.99, 1, 15),
    (54, 'Lucas Muecas Chamoy', 1.99, 1, 15);
    


INSERT INTO Ingredient (ingredient_id, ingredient_name, quantity, import_date, expired_date, unit) VALUES
	(1, 'Beef', 0.0, '2023-06-25', '2023-07-24', 'kg'),
	(2, 'Onion', 64.9, '2023-06-12', '2023-07-21', 'kg'),
	(3, 'Egg', 92.5, '2023-06-10', '2023-07-19', 'piece'),
	(4, 'Provolone cheese', 21.3, '2023-06-28', '2023-07-27', 'kg'),
	(5, 'Garlic', 56.9, '2023-06-14', '2023-07-23', 'kg'),
	(6, 'Ginger', 39.1, '2023-06-05', '2023-07-25', 'kg'),
	(7, 'Yellow chili pepper', 24.8, '2023-06-27', '2023-07-28', 'piece'),
	(8, 'Codfish', 18.3, '2023-06-09', '2023-07-16', 'kg'),
	(9, 'Potato', 53.2, '2023-06-07', '2023-07-20', 'kg'),
	(10, 'Parsley', 37.8, '2023-06-19', '2023-07-26', 'kg'),
	(11, 'Cachaça (sugar cane rum)', 26.5, '2023-06-15', '2023-07-22', 'bottle'),
	(12, 'Lime', 68.2, '2023-06-13', '2023-07-17', 'piece'),
	(13, 'Sugar', 83.6, '2023-06-08', '2023-07-24', 'kg'),
	(14, 'Lemongrass', 45.4, '2023-06-18', '2023-07-23', 'kg'),
	(15, 'Cane spirit', 32.7, '2023-06-21', '2023-07-25', 'bottle'),
	(16, 'Cinnamon', 60.3, '2023-06-20', '2023-07-26', 'gram'),
	(17, 'Brown sugar', 43.9, '2023-06-16', '2023-07-27', 'kg'),
	(18, 'Water', 91.8, '2023-06-05', '2023-07-21', 'bottle'),
	(19, 'Beer', 28.6, '2023-06-28', '2023-07-30', 'bottle'),
	(20, 'Colombiana soda', 15.4, '2023-06-09', '2023-07-18', 'bottle'),
	(21, 'Tannat red wine', 42.1, '2023-06-26', '2023-07-19', 'bottle'),
	(22, 'Bonarda red wine', 38.9, '2023-06-17', '2023-07-24', 'bottle'),
	(23, 'Purple corn flour', 27.5, '2023-06-20', '2023-07-27', 'gram'),
	(24, 'Pineapple', 18.7, '2023-06-12', '2023-07-23', 'piece'),
	(25, 'Yerba mate leaves', 32.8, '2023-06-19', '2023-07-27', 'gram'),
	(26, 'Milk', 43.8, '2023-06-28', '2023-07-29', 'bottle'),
	(27, 'Bananas', 38.2, '2023-06-13', '2023-07-24', 'kg'),
	(28, 'Maca powder', 25.7, '2023-06-15', '2023-07-19', 'gram'),
	(29, 'Tomato', 48.9, '2023-06-07', '2023-07-26', 'kg'),
	(30, 'Beef tongue', 30.5, '2023-06-29', '2023-07-25', 'kg'),
	(31, 'Frybread', 26.9, '2023-06-05', '2023-07-28', 'piece'),
	(32, 'Chicken', 45.8, '2023-06-10', '2023-07-19', 'kg'),
	(33, 'Barbecue sauce', 38.7, '2023-06-12', '2023-07-20', 'bottle'),
	(34, 'Pork', 54.3, '2023-06-21', '2023-07-26', 'kg'),
	(35, 'Kimchi', 39.5, '2023-06-17', '2023-07-24', 'kg'),
	(36, 'Rice', 67.9, '2023-06-04', '2023-07-27', 'kg'),
	(37, 'Lettuce', 43.2, '2023-06-13', '2023-07-22', 'kg'),
	(38, 'Gochujang', 26.1, '2023-06-25', '2023-07-23', 'bottle'),
	(39, 'Lima beans', 49.7, '2023-06-06', '2023-07-30', 'kg'),
	(40, 'Corn tortillas', 59.4, '2023-06-08', '2023-07-18', 'piece'),
	(41, 'Guajillo chili powder', 42.3, '2023-06-22', '2023-07-27', 'gram'),
	(42, 'Cheddar cheese', 34.7, '2023-06-07', '2023-07-29', 'bottle'),
	(43, 'Pickles', 38.4, '2023-06-13', '2023-07-19', 'kg'),
	(44, 'Thousand Island dressing', 29.5, '2023-06-16', '2023-07-28', 'bottle'),
	(45, 'Black beans', 46.8, '2023-06-06', '2023-07-27', 'kg'),
	(46, 'Corn', 61.2, '2023-06-14', '2023-07-25', 'kg'),
	(47, 'Sour cream', 55.7, '2023-06-10', '2023-07-22', 'kg'),
	(48, 'Lamb', 36.8, '2023-06-27', '2023-07-26', 'kg'),
	(49, 'Flour or corn dough', 47.3, '2023-06-15', '2023-07-19', 'kg'),
	(50, 'Cumin', 56.7, '2023-06-06', '2023-07-24', 'gram'),
	(51, 'Paprika', 43.9, '2023-06-16', '2023-07-25', 'gram'),
	(52, 'Oregano', 41.8, '2023-06-25', '2023-07-27', 'gram'),
	(53, 'Bell pepper', 48.9, '2023-06-08', '2023-07-29', 'kg'),
	(54, 'Cornmeal dough', 36.5, '2023-06-09', '2023-07-18', 'kg'),
	(55, 'Raisins', 39.7, '2023-06-12', '2023-07-26', 'kg'),
	(56, 'Olives', 46.2, '2023-06-29', '2023-07-30', 'kg'),
	(57, 'Achiote (annatto)', 33.8, '2023-06-07', '2023-07-27', 'gram'),
	(58, 'Banana leaf', 25.1, '2023-06-25', '2023-07-26', 'piece'),
	(59, 'Avocado', 51.9, '2023-06-11', '2023-07-19', 'piece'),
	(60, 'Shrimp', 47.6, '2023-06-05', '2023-07-29', 'kg'),
	(61, 'Mayonnaise', 52.4, '2023-06-16', '2023-07-27', 'bottle'),
	(62, 'Salt', 73.5, '2023-06-10', '2023-07-19', 'gram'),
	(63, 'Cilantro', 52.7, '2023-06-28', '2023-07-27', 'kg'),
	(64, 'Olive oil', 42.8, '2023-06-15', '2023-07-20', 'bottle'),
	(65, 'Carrots', 61.6, '2023-06-12', '2023-07-24', 'kg'),
	(66, 'Green apple', 38.2, '2023-06-18', '2023-07-27', 'piece'),
	(67, 'Puff pastry', 26.9, '2023-06-29', '2023-07-26', 'piece'),
	(68, 'Dulce de leche (caramelized condensed milk)', 35.7, '2023-06-08', '2023-07-23', 'bottle'),
	(69, 'Sponge cake', 42.4, '2023-06-14', '2023-07-29', 'piece'),
	(70, 'Whipped cream', 37.5, '2023-06-21', '2023-07-19', 'bottle'),
	(71, 'Peaches', 43.8, '2023-06-17', '2023-07-22', 'kg'),
	(72, 'Meringue', 28.3, '2023-06-05', '2023-07-26', 'gram'),
	(73, 'Brigadeiro (Brazilian chocolate truffle)', 37.9, '2023-06-19', '2023-07-23', 'piece'),
	(74, 'Chocolate ganache', 31.6, '2023-06-12', '2023-07-27', 'bottle'),
	(75, 'Papaya', 10.8, '2023-06-15', '2023-07-31', 'kg'),
    (76, 'Ice Cream', 10.8, '2023-06-17', '2023-07-22', 'kg'),
    (77, 'Takis', 37.9, '2023-06-19', '2023-07-23', 'piece'),
    (78, 'Duvalín', 37.9, '2023-06-19', '2023-07-23', 'piece'),
    (79, 'Lucas Muecas Chamoy', 37.9, '2023-06-19', '2023-07-23', 'piece');


-- Insert dish-ingredient mappings
INSERT INTO Dish_Ingredient (dish_id, ingredient_id) VALUES
	-- Chorrillana
	(1, 1), -- Beef
	(1, 2), -- Onion
	(1, 3), -- Egg
	(1, 5), -- Garlic
	(1, 9), -- Potato
	-- Provoleta
	(2, 4), -- Provolone cheese
	(2, 5), -- Garlic
	-- Leche de tigre
	(3, 6), -- Ginger
	(3, 7), -- Yellow chili pepper
	(3, 12), -- Lime
	(3, 13), -- Sugar
	-- Ceviche
	(4, 8), -- Codfish
	(4, 12), -- Lime
	(4, 13), -- Sugar
	-- Bolinhos de bacalhau
	(5, 4), -- Provolone cheese
	(5, 8), -- Codfish
	(5, 9), -- Potato
	-- Caipirinha
	(6, 11), -- Cachaça (sugar cane rum)
	(6, 12), -- Lime
	(6, 13), -- Sugar
	-- Sucumbé
	(7, 26), -- Milk
	(7, 3), -- Egg
	(7, 13), -- Sugar
	(7, 15), -- Cane spirit
	-- Carrulim
	(8, 12), -- Lime
	(8, 15), -- Cane spirit
	(8, 16), -- Cinnamon
	(8, 18), -- Water
	-- Canelazo
	(9, 62), -- Salt
	(9, 15), -- Cane spirit
	(9, 16), -- Cinnamon
	(9, 17), -- Brown sugar
	-- Refajo
	(10, 19), -- Beer
	(10, 20), -- Colombiana soda
	-- Tannat
	(11, 21), -- Tannat red wine
	-- Bonarda Argentina
	(12, 22), -- Bonarda red wine
	-- Colada Morada
	(13, 23), -- Purple corn flour
	(13, 12), -- Lime
	(13, 24), -- Pineapple
	(13, 25), -- Yerba mate leaves
	-- Mate
	(14, 25), -- Yerba mate leaves
	-- Tereré
	(15, 25), -- Yerba mate leaves
	(15, 18), -- Water
	-- Leche con Plátano
	(16, 26), -- Milk
	(16, 27), -- Bananas
	-- Ponche de Maca
	(17, 26), -- Milk
	(17, 28), -- Maca powder
	-- Puffy taco
	(18, 1), -- Beef
	(18, 2), -- Onion
	(18, 5), -- Garlic
	(18, 29), -- Tomato
	(18, 30), -- Beef tongue
	(18, 37), -- Lettuce
	(18, 62), -- Salt
	-- Navajo taco
	(19, 1), -- Beef
	(19, 2), -- Onion
	(19, 5), -- Garlic
	(19, 29), -- Tomato
	(19, 37), -- Lettuce
	(19, 62), -- Salt
	-- Mission-Style taco
	(20, 1), -- Beef
	(20, 2), -- Onion
	(20, 5), -- Garlic
	(20, 29), -- Tomato
	(20, 37), -- Lettuce
	(20, 62), -- Salt
	-- Taco de papa
	(21, 2), -- Onion
	(21, 5), -- Garlic
	(21, 9), -- Potato
	(21, 31), -- Frybread
	(21, 37), -- Lettuce
	(21, 62), -- Salt
	-- Taco de adobada
	(22, 1), -- Beef
	(22, 2), -- Onion
	(22, 5), -- Garlic
	(22, 37), -- Lettuce
	(22, 62), -- Salt
	-- Taco de canasta
	(23, 1), -- Beef
	(23, 2), -- Onion
	(23, 5), -- Garlic
	(23, 37), -- Lettuce
	(23, 62), -- Salt
	-- Taco de pescado
	(24, 8), -- Codfish
	(24, 12), -- Lime
	(24, 13), -- Sugar
	(24, 37), -- Lettuce
	(24, 62), -- Salt
	-- Taco de chapulines
	(25, 25), -- Yerba mate leaves
	(25, 29), -- Tomato
	(25, 31), -- Frybread
	(25, 37), -- Lettuce
	(25, 62), -- Salt
	-- Taco de lengua
	(26, 30), -- Beef tongue
	(26, 2), -- Onion
	(26, 5), -- Garlic
	(26, 37), -- Lettuce
	(26, 62), -- Salt
	-- French taco
	(27, 31), -- Frybread
	(27, 32), -- Chicken
	(27, 33), -- Barbecue sauce
	(27, 62),  -- Salt
	-- San Diego burrito
	(28, 30), -- Beef tongue
	(28, 34), -- Pork
	(28, 36), -- Rice
	(28, 37), -- Lettuce
	(28, 62), -- Salt
	-- Korean burrito
	(29, 32), -- Chicken
	(29, 35), -- Kimchi
	(29, 36), -- Rice
	(29, 37), -- Lettuce
	(29, 38), -- Gochujang
	(29, 62), -- Salt
	-- Seafood burrito
	(30, 8), -- Codfish
	(30, 36), -- Rice
	(30, 37), -- Lettuce
	(30, 60), -- Shrimp
	(30, 62), -- Salt
	-- Guatemalan Beef taquito
	(31, 1), -- Beef
	(31, 37), -- Lettuce
	(31, 62), -- Salt
	-- Carnitas flautas
	(32, 34), -- Pork
	(32, 37), -- Lettuce
	(32, 62), -- Salt
	-- Big Mac nachos
	(33, 1), -- Beef
	(33, 2), -- Onion
	(33, 5), -- Garlic
	(33, 29), -- Tomato
	(33, 37), -- Lettuce
	(33, 62), -- Salt
	-- Loaded Veggie nachos
	(34, 29), -- Tomato
	(34, 35), -- Kimchi
	(34, 37), -- Lettuce
	(34, 62), -- Salt
	-- Empanada de cordero
	(35, 48), -- Lamb
	(35, 2), -- Onion
	(35, 5), -- Garlic
	(35, 49), -- Flour or corn dough
	(35, 50), -- Cumin
	(35, 51), -- Paprika
	(35, 52), -- Oregano
	(35, 62), -- Salt
	-- Empanada Tucumanas
	(36, 34), -- Pork
	(36, 43), -- Pickles
	(36, 49), -- Flour or corn dough
	(36, 51), -- Paprika
	(36, 52), -- Oregano
	(36, 62), -- Salt
	-- Tejano fajita
	(37, 34), -- Pork
	(37, 2), -- Onion
	(37, 5), -- Garlic
	(37, 37), -- Lettuce
	(37, 62), -- Salt
	-- Arrachera taco
	(38, 30), -- Beef tongue
	(38, 2), -- Onion
	(38, 5), -- Garlic
	(38, 37), -- Lettuce
	(38, 62), -- Salt
	-- Blue corn quesadilla
	(39, 42), -- Cheddar cheese
	(39, 46), -- Corn
	(39, 54), -- Cornmeal dough
	(39, 62), -- Salt
	-- Queso quesadilla
	(40, 42), -- Cheddar cheese
	(40, 54), -- Cornmeal dough
	(40, 62), -- Salt
	-- Pasteles en hoja
	(41, 34), -- Pork
	(41, 42), -- Cheddar cheese
	(41, 45), -- Black beans
	(41, 54), -- Cornmeal dough
	(41, 62), -- Salt
	-- Hallacas
	(42, 34), -- Pork
	(42, 42), -- Cheddar cheese
	(42, 45), -- Black beans
	(42, 49), -- Flour or corn dough
	(42, 50), -- Cumin
	(42, 51), -- Paprika
	(42, 52), -- Oregano
	(42, 62), -- Salt
	-- Palta reina
	(43, 59), -- Avocado
	(43, 43), -- Pickles
	(43, 64), -- Olive oil
	(43, 62), -- Salt
	-- Solterito
	(44, 59), -- Avocado
	(44, 29), -- Tomato
	(44, 65), -- Carrots
	(44, 66), -- Green apple
	(44, 37), -- Lettuce
	(44, 62), -- Salt
	-- Salpicão de Frangos
	(45, 32), -- Chicken
	(45, 29), -- Tomato
	(45, 67), -- Puff pastry
	(45, 37), -- Lettuce
	(45, 62), -- Salt
	-- Milhojas de dulce de leche
	(46, 68), -- Dulce de leche (caramelized condensed milk)
	(46, 69), -- Sponge cake
	(46, 70), -- Whipped cream
	(46, 72), -- Meringue
	-- Chajá
	(47, 66), -- Green apple
	(47, 70), -- Whipped cream
	(47, 71), -- Peaches
	(47, 73), -- Brigadeiro (Brazilian chocolate truffle)
	(47, 72), -- Meringue
    -- Bolo de brigadeiro
    (48, 68), -- Dulce de leche (caramelized condensed milk)
    (48, 69), -- Sponge cake
    (48, 73), -- Brigadeiro (Brazilian chocolate truffle)
    -- Queso helado
    (49, 26), -- Milk
    (49, 61), -- Mayonnaise
    -- Fried Ice Cream
    (50, 26), -- Milk
    (50, 74), -- Chocolate ganache
    (50, 67), -- Puff pastry
    (50, 76), -- Ice Cream
    -- Créme de papayas
    (51, 24), -- Pineapple
    (51, 75), -- Papaya
    (51, 76), -- Ice cream
    -- Takis
    (52, 77), -- Takis
    -- Duvalín
    (53, 78), -- Duvalín
    -- Lucas Muecas Chamoy
    (54, 79); -- Lucas Muecas Chamoy
		
        
-- Insert dish-origin mappings
INSERT INTO Dish_Origin (dish_id, origin_id) VALUES
	-- Chorrillana
	(1, 7), -- Chile
    (1, 17), -- France
    -- Provoleta
	(2, 11), -- Argentina
	-- Leche de tigre
	(3, 6), -- Peru
	-- Ceviche
	(4, 6), -- Peru
	-- Bolinhos de bacalhau
	(5, 5), -- Brazil
    (5, 16), -- Portugal
	-- Caipirinha
	(6, 5), -- Brazil
	-- Sucumbé
	(7, 8), -- Bolivia
	-- Carrulim
	(8, 9), -- Paraguay
	-- Canelazo
	(9, 10), -- Ecuador
	-- Refajo
	(10, 13), -- Colombia
	-- Tannat
	(11, 12), -- Uruguay
	-- Bonarda Argentina
	(12, 11), -- Argentina
	-- Colada Morada
	(13, 10), -- Ecuador
	-- Mate
	(14, 11), -- Argentina
	-- Tereré
	(15, 9), -- Paraguay
	-- Leche con Plátano
	(16, 7), -- Chile
	-- Ponche de Maca
	(17, 6), -- Peru
	-- Puffy taco
	(18, 1), -- Mexico
	(18, 19), -- Texas
	-- Navajo taco
	(19, 1), -- Mexico
	(19, 20), -- Arizona
	-- Mission-Style taco
	(20, 1), -- Mexico
	(20, 21), -- California
	-- Taco de papa
	(21, 1), -- Mexico
	-- Taco de adobada
	(22, 1), -- Mexico
	-- Taco de canasta
	(23, 1), -- Mexico
	-- Taco de pescado
	(24, 1), -- Mexico
	-- Taco de chapulines
	(25, 1), -- Mexico
	-- Taco de lengua
	(26, 1), -- Mexico
	-- French taco
	(27, 1), -- Mexico
	(27, 17), -- France
	-- San Diego burrito
	(28, 1), -- Mexico
	(28, 21), -- California
	-- Korean burrito
	(29, 1), -- Mexico
	(29, 18), -- Korea
	(29, 21), -- California
	-- Seafood burrito
	(30, 1), -- Mexico
	-- Guatemalan Beef taquito
	(31, 3), -- Guatemala
	-- Carnitas flautas
	(32, 1), -- Mexico
	-- Big Mac nachos
	(33, 1), -- Mexico
	(33, 21), -- California
	-- Loaded Veggie nachos
	(34, 1), -- Mexico
	(34, 21), -- California
	-- Empanada de cordero
	(35, 15), -- Spain
	-- Empanada Tucumanas
	(36, 11), -- Argentina
	-- Tejano fajita
	(37, 1), -- Mexico
	(37, 19), -- Texas
	-- Arrachera taco
	(38, 1), -- Mexico
	-- Blue corn quesadilla
	(39, 1), -- Mexico
	-- Queso quesadilla
	(40, 1), -- Mexico
	(40, 19), -- Texas
	-- Pasteles en hoja
	(41, 4), -- Dominican Republic
    -- Hallacas
	(42, 2), -- Venezuela
	-- Palta reina
	(43, 7), -- Chile
	-- Solterito
	(44, 6), -- Peru
	-- Salpicão de Frangos
	(45, 5), -- Brazil
	-- Milhojas de dulce de leche
	(46, 11), -- Argentina
	-- Chajá
	(47, 12), -- Uruguay
    -- Bolo de brigadeiro
    (48, 5), -- Brazil
    -- Queso helado
    (49, 6), -- Peru
    -- Fried Ice Cream
    (50, 21), -- California
    -- Créme de papayas
    (51, 5), -- Brazil
    -- Takis
    (52, 1), -- Mexico
    -- Duvalín
    (53, 1), -- Mexico
    -- Lucas Muecas Chamoy
    (54, 1); -- Mexicodish
		
    
    
    
    
    
    
    
    