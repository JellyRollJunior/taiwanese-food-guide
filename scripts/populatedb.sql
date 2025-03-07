-- Drop tables if they exist
DROP TABLE IF EXISTS foods CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS food_categories CASCADE;

-- Create tables
CREATE TABLE IF NOT EXISTS foods (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR (255),
    description text,
    is_default_value boolean DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS categories (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR (255),
    description text,
    is_default_value boolean DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS food_categories (
    food_id INTEGER REFERENCES foods (id) ON DELETE CASCADE,
    category_id INTEGER REFERENCES categories (id) ON DELETE CASCADE
);

-- Insert foods
INSERT INTO foods (is_default_value, title, description) VALUES 
    (TRUE, 'Pork Blood Rice Cake', 'A rice cake that is made of congealed pork blood and rice (tastes much better than it sounds!). Normally steamed then dusted with finely chopped nuts, a thick soy sauce based sauce, and cilantro. Served on a stick and enjoyed with or without spicy sauce. A staple of night market stall food!'),
    (TRUE, 'Oyster Omlet', 'An egg/tapioca mixture with green onions that is pan fried with oysters. Often enjoyed with a thick soy sauce. The chewy texture of the egg tapioca omlet pairs wonderfully with the salty soy sauce and oyster flavor!'),
    (TRUE, 'Roast Duck', 'Whole roasted duck with it''s signature crispy skin! Typically, the chef will bring the entire duck out and cut pieces of the cripsy skin in front of the table. A variety of dishes are then made using the skin and the meat.'),
    (TRUE, 'Guava Juice', 'Juice made with guava; guava is a deliciously refreshing fruit with a big crispy crunch when bitten into.'),
    (TRUE, 'Tea Eggs', 'Wonderfully fragrant boiled eggs marinated in a tea based marinade. The surface of the egg is stained brown from the marinade infusing with the egg. Yummy!'),
    (TRUE, 'Braised Pork on Rice', 'A classic comfort food staple of pork braised in soy sauce and served over rice! The sweet and salty sauce mixes with the rice to create a wonderful taste. Every family has their own recipe.'),
    (TRUE, 'Taiwanese Beef Noodle Soup', 'This famous dish has two variants. A flavorful soy sauce based broth version and a clear delicately flavored version. Both are great but the author prefers the clear one slightly more.'),
    (TRUE, 'Scallion pancake with egg', 'A common breakfast item consisting of a salty green onion pancake grilled with an egg on top. The pancake is salty, crispy, and has a soft center (unlike western pancakes). Typically enjoyed with thick soy sauce and soy milk.'),
    (FALSE, 'I am a test item', 'Please feel free to delete or edit me without guilt of removing neat information!'),
    (FALSE, 'I am a test item 2', 'Please feel free to delete or edit me without guilt of removing neat information!');

INSERT INTO categories (is_default_value, title, description) VALUES
    (TRUE, 'Street food', 'Cheap eats commonly sold from roadside stalls or in night markets.'),
    (TRUE, 'Fine dining', 'Dishes that are typically served at a restaurant and cost (usually) a pretty penny!'),
    (TRUE, 'Drinks/Snacks', 'Common drinks / snacks typically found in grocery stores or convenience stores.'),
    (TRUE, 'Comfort food', 'Typical home cooked meals that please the soul or common dishes beloved by all!'),
    (FALSE, 'I am a test category 1', 'Please feel free to delete or edit me without guilt of removing neat information!'),
    (FALSE, 'I am a test category 2', 'Please feel free to delete or edit me without guilt of removing neat information!');

INSERT INTO food_categories (food_id, category_id) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 3),
    (5, 1),
    (6, 4),
    (7, 4),
    (8, 1),
    (8, 3),
    (9, 1),
    (9, 2),
    (9, 3),
    (9, 4),
    (9, 5),
    (9, 6),
    (10, 6);
