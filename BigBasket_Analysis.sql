mysql> create database groceries;
Query OK, 1 row affected (0.00 sec)

mysql> use groceries;
Database changed

mysql> CREATE TABLE customer (
    ->     customer_id VARCHAR(10) NOT NULL PRIMARY KEY,
    ->     name VARCHAR(100) NOT NULL,
    ->     city VARCHAR(65) NOT NULL,
    ->     email VARCHAR(45) NOT NULL UNIQUE,
    ->     phone_no VARCHAR(15) NOT NULL UNIQUE,
    ->     address VARCHAR(100) NOT NULL,
    ->     pin_code INT NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO customer (customer_id, name, city, email, phone_no, address, pin_code)
    -> VALUES
    -> ('CUST001', 'Amit Sharma', 'Mumbai', 'amit.sharma@example.com', '9876543210', '12, MG Road, Mumbai', 400001),
    -> ('CUST002', 'Priya Singh', 'Delhi', 'priya.singh@example.com', '9876543211', '45, CP Avenue, Delhi', 110001),
    -> ('CUST003', 'Rahul Verma', 'Pune', 'rahul.verma@example.com', '9876543212', '67, Koregaon Park, Pune', 411001),
    -> ('CUST004', 'Aditi Joshi', 'Bangalore', 'aditi.joshi@example.com', '9876543213', '89, MG Road, Bangalore', 560001),
    -> ('CUST005', 'Vikram Patel', 'Kolkata', 'vikram.patel@example.com', '9876543214', '23, Park Street, Kolkata', 700001),
    -> ('CUST006', 'Neha Kapoor', 'Chennai', 'neha.kapoor@example.com', '9876543215', '56, Anna Salai, Chennai', 600001),
    -> ('CUST007', 'Rajesh Gupta', 'Nashik', 'rajesh.gupta@example.com', '9876543216', '78, College Road, Nashik', 422001),
    -> ('CUST008', 'Simran Kaur', 'Jaipur', 'simran.kaur@example.com', '9876543217', '34, MI Road, Jaipur', 302001),
    -> ('CUST009', 'Alok Mehta', 'Indore', 'alok.mehta@example.com', '9876543218', '12, Palasia, Indore', 452001),
    -> ('CUST010', 'Kavita Reddy', 'Mumbai', 'kavita.reddy@example.com', '9876543219', '90, Juhu Lane, Mumbai', 400002),
    -> ('CUST011', 'Arjun Das', 'Delhi', 'arjun.das@example.com', '9876543220', '56, Lajpat Nagar, Delhi', 110002),
    -> ('CUST012', 'Pooja Iyer', 'Pune', 'pooja.iyer@example.com', '9876543221', '67, Aundh, Pune', 411002),
    -> ('CUST013', 'Rohit Sinha', 'Bangalore', 'rohit.sinha@example.com', '9876543222', '45, Whitefield, Bangalore', 560002),
    -> ('CUST014', 'Anjali Desai', 'Kolkata', 'anjali.desai@example.com', '9876543223', '78, Salt Lake, Kolkata', 700002),
    -> ('CUST015', 'Manoj Pandey', 'Chennai', 'manoj.pandey@example.com', '9876543224', '90, T Nagar, Chennai', 600002),
    -> ('CUST016', 'Sakshi Jain', 'Nashik', 'sakshi.jain@example.com', '9876543225', '34, Gangapur Road, Nashik', 422002),
    -> ('CUST017', 'Ramesh Kumar', 'Jaipur', 'ramesh.kumar@example.com', '9876543226', '12, Bani Park, Jaipur', 302002),
    -> ('CUST018', 'Divya Rao', 'Indore', 'divya.rao@example.com', '9876543227', '78, Vijay Nagar, Indore', 452002),
    -> ('CUST019', 'Karan Bhatt', 'Mumbai', 'karan.bhatt@example.com', '9876543228', '45, Bandra West, Mumbai', 400003),
    -> ('CUST020', 'Meena Roy', 'Delhi', 'meena.roy@example.com', '9876543229', '90, South Delhi, Delhi', 110003),
    -> ('CUST021', 'Varun Agarwal', 'Pune', 'varun.agarwal@example.com', '9876543230', '34, Baner, Pune', 411003),
    -> ('CUST022', 'Nikita Sharma', 'Bangalore', 'nikita.sharma@example.com', '9876543231', '56, Koramangala, Bangalore', 560003),
    -> ('CUST023', 'Anil Chatterjee', 'Kolkata', 'anil.chatterjee@example.com', '9876543232', '67, Howrah, Kolkata', 700003),
    -> ('CUST024', 'Sunita Nair', 'Chennai', 'sunita.nair@example.com', '9876543233', '78, Besant Nagar, Chennai', 600003),
    -> ('CUST025', 'Ashok Malhotra', 'Nashik', 'ashok.malhotra@example.com', '9876543234', '89, Panchavati, Nashik', 422003),
    -> ('CUST026', 'Ritu Kapoor', 'Jaipur', 'ritu.kapoor@example.com', '9876543235', '90, Civil Lines, Jaipur', 302003),
    -> ('CUST027', 'Shivam Joshi', 'Indore', 'shivam.joshi@example.com', '9876543236', '56, MG Road, Indore', 452003),
    -> ('CUST028', 'Preeti Saxena', 'Mumbai', 'preeti.saxena@example.com', '9876543237', '67, Worli, Mumbai', 400004),
    -> ('CUST029', 'Harish Vyas', 'Delhi', 'harish.vyas@example.com', '9876543238', '34, Karol Bagh, Delhi', 110004),
    -> ('CUST030', 'Sneha Dubey', 'Pune', 'sneha.dubey@example.com', '9876543239', '45, Hadapsar, Pune', 411004);
Query OK, 30 rows affected (0.01 sec)
Records: 30  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE product (
    ->     product_id VARCHAR(10) PRIMARY KEY,
    ->     product_name VARCHAR(100) NOT NULL,
    ->     brand VARCHAR(100) NOT NULL,
    ->     category VARCHAR(65) NOT NULL,
    ->     sub_category VARCHAR(65) NOT NULL,
    ->     market_price DOUBLE NOT NULL,
    ->     sale_price DOUBLE NOT NULL,
    ->     stock INT NOT NULL,
    ->     type VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.02 sec)




mysql> INSERT INTO product (product_id, product_name, category, sub_category, brand, sale_price, market_price, stock, type) VALUES
    -> ('P001', 'Garlic Oil - Vegetarian Capsule 500 mg', 'Beauty & Hygiene', 'Hair Care', 'Sri Sri Ayurveda', 220, 220, 50, 'Hair Oil & Serum'),
    -> ('P002', 'Water Bottle - Orange', 'Kitchen, Garden & Pets', 'Storage & Accessories', 'Mastercook', 180, 180, 70, 'Water & Fridge Bottles'),
    -> ('P003', 'Brass Angle Deep - Plain, No.2', 'Cleaning & Household', 'Pooja Needs', 'Trm', 119, 250, 30, 'Lamp & Lamp Oil'),
    -> ('P004', 'Cereal Flip Lid Container/Storage Jar - Assorted Colour', 'Cleaning & Household', 'Bins & Bathroom Ware', 'Nakoda', 149, 176, 60, 'Laundry, Storage Baskets'),
    -> ('P005', 'Creme Soft Soap - For Hands & Body', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Nivea', 162, 162, 100, 'Bathing Bars & Soaps'),
    -> ('P006', 'Germ - Removal Multipurpose Wipes', 'Cleaning & Household', 'All Purpose Cleaners', 'Nature Protect', 169, 199, 40, 'Disinfectant Spray & Cleaners'),
    -> ('P007', 'Multani Mati', 'Beauty & Hygiene', 'Skin Care', 'Satinance', 58, 58, 150, 'Face Care'),
    -> ('P008', 'Hand Sanitizer - 70% Alcohol Base', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Bionova', 250, 250, 80, 'Hand Wash & Sanitizers'),
    -> ('P009', 'Biotin & Collagen Volumizing Hair Shampoo + Biotin & Collagen Hair Conditioner', 'Beauty & Hygiene', 'Hair Care', 'StBotanica', 1098, 1098, 20, 'Shampoo & Conditioner'),
    -> ('P010', 'Scrub Pad - Anti- Bacterial, Regular', 'Cleaning & Household', 'Mops, Brushes & Scrubs', 'Scotch brite', 20, 20, 200, 'Utensil Scrub-Pad, Glove'),
    -> ('P011', 'Wheat Grass Powder - Raw', 'Gourmet & World Food', 'Cooking & Baking Needs', 'NUTRASHIL', 261, 290, 50, 'Flours & Pre-Mixes'),
    -> ('P012', 'Butter Cookies Gold Collection', 'Gourmet & World Food', 'Chocolates & Biscuits', 'Sapphire', 600, 600, 35, 'Luxury Chocolates, Gifts'),
    -> ('P013', 'Face Wash - Oil Control, Active', 'Beauty & Hygiene', 'Skin Care', 'Oxy', 110, 110, 90, 'Face Care'),
    -> ('P014', 'Mold & Mildew Remover with Bleach', 'Cleaning & Household', 'All Purpose Cleaners', 'Clorox', 350, 350, 25, 'Floor & Other Cleaners'),
    -> ('P015', 'Just Spray - Mosquito Repellent Room Spray', 'Cleaning & Household', 'Fresheners & Repellents', 'Herbal Strategi', 200, 200, 70, 'Mosquito Repellent'),
    -> ('P016', 'Dove Plastic Soap Case - Assorted Colour', 'Cleaning & Household', 'Bins & Bathroom Ware', 'Nakoda', 49, 59, 120, 'Soap Cases & Dispensers'),
    -> ('P017', 'Smooth Skin Oil - For Dry Skin', 'Beauty & Hygiene', 'Skin Care', 'Aroma Treasures', 324, 360, 60, 'Aromatherapy'),
    -> ('P018', 'Salted Pumpkin', 'Gourmet & World Food', 'Snacks, Dry Fruits, Nuts', 'Graminway', 180, 180, 80, 'Roasted Seeds & Nuts'),
    -> ('P019', 'Flax Seeds - Roasted', 'Gourmet & World Food', 'Snacks, Dry Fruits, Nuts', 'True Elements', 120, 120, 100, 'Roasted Seeds & Nuts'),
    -> ('P020', 'Organic Tofu - Soy Paneer', 'Gourmet & World Food', 'Dairy & Cheese', 'Murginns', 85.14, 90, 40, 'Tofu');
Query OK, 20 rows affected (0.00 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> INSERT INTO product (product_id, product_name, category, sub_category, brand, sale_price, market_price, stock, type) VALUES
    -> ('P021', 'Ceramic Barrel Brush - Colour May Vary', 'Beauty & Hygiene', 'Hair Care', 'Bronson Professional', 525, 700, 40, 'Tools & Accessories'),
    -> ('P022', 'Instant Noodles - Chicken Satay Flavor', 'Gourmet & World Food', 'Pasta, Soup & Noodles', 'Koka', 45, 50, 150, 'Imported Noodles'),
    -> ('P023', 'Chia Seeds', 'Foodgrains, Oil & Masala', 'Dry Fruits', 'NaturoBell', 120, 120, 80, 'Other Dry Fruits'),
    -> ('P024', 'Cleanse Green Tea - Whole Leaf Loose Tea', 'Gourmet & World Food', 'Drinks & Beverages', 'Cambridge Tea Party', 75, 75, 60, 'Gourmet Tea & Tea Bags'),
    -> ('P025', 'Veggie Cutter', 'Kitchen, Garden & Pets', 'Kitchen Accessories', 'IRICH', 195, 195, 100, 'Choppers & Graters'),
    -> ('P026', 'Insulated Hot Fresh Casserole For Roti/Chapati - White', 'Kitchen, Garden & Pets', 'Flask & Casserole', 'Cello', 659, 895, 50, 'Casserole'),
    -> ('P027', 'Granola - Happy Berries', 'Snacks & Branded Foods', 'Breakfast Cereals', 'Fit & Flex', 245, 265, 30, 'Granola & Cereal Bars'),
    -> ('P028', 'Flaxseed - Pesticide Free', 'Foodgrains, Oil & Masala', 'Dry Fruits', 'Safe Harvest', 53.9, 55, 120, 'Other Dry Fruits'),
    -> ('P029', 'Paratha Puff', 'Snacks & Branded Foods', 'Frozen Veggies & Snacks', 'Switz', 90, 110, 70, 'Frozen Veg Snacks'),
    -> ('P030', 'Lip Butter - Rose', 'Beauty & Hygiene', 'Skin Care', 'Organic Harvest', 169.15, 199, 90, 'Lip Care'),
    -> ('P031', 'Fruit Power - Masala Sugarcane', 'Beverages', 'Fruit Juices & Drinks', 'Real', 19, 20, 150, 'Juices'),
    -> ('P032', 'Chocobakes Choc Filled Cookies', 'Bakery, Cakes & Dairy', 'Cookies, Rusk & Khari', 'Cadbury', 102, 120, 60, 'Bakery Biscuits, Cookies'),
    -> ('P033', 'Amber - Deodorant Body Spray', 'Beauty & Hygiene', 'Fragrances & Deos', 'Old Spice', 211.65, 249, 50, 'Men\'s Deodorants'),
    -> ('P034', 'Green Tea - Tulsi Loose Leaf', 'Beverages', 'Tea', 'Octavius', 225, 225, 40, 'Green Tea'),
    -> ('P035', 'Pet Solitaire Container Set - Silver', 'Kitchen, Garden & Pets', 'Storage & Accessories', 'Steelo', 499, 969, 35, 'Containers Sets'),
    -> ('P036', 'Dhania - Dal', 'Foodgrains, Oil & Masala', 'Masalas & Spices', 'bb Royal', 98, 120, 100, 'Whole Spices'),
    -> ('P037', 'Pudina Chutney Masala', 'Foodgrains, Oil & Masala', 'Masalas & Spices', 'Catch', 46.75, 55, 110, 'Blended Masalas'),
    -> ('P038', 'Bodylicious Deodorant Spray - Mate (For Men)', 'Beauty & Hygiene', 'Fragrances & Deos', 'Engage', 136.5, 195, 80, 'Men\'s Deodorants'),
    -> ('P039', 'Sport Deo Spray - Fresh, for Men', 'Beauty & Hygiene', 'Men\'s Grooming', 'Engage', 112.75, 205, 90, 'Men\'s Deodorants'),
    -> ('P040', 'Choco Deck - Mini Delights', 'Snacks & Branded Foods', 'Chocolates & Candies', 'Fabelle', 160, 200, 70, 'Chocolates');
Query OK, 20 rows affected (0.00 sec)
Records: 20  Duplicates: 0  Warnings: 0

INSERT INTO product (product_id, product_name, category, sub_category, brand, sale_price, market_price, stock, type) VALUES
('P041', 'Eau De Toilette - Homme Green', 'Beauty & Hygiene', 'Fragrances & Deos', 'Colour Me', 427.5, 450, 60, 'Eau De Toilette'),
('P042', 'Lemon & Tea Tree Oil Soap', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Liril', 360, 360, 90, 'Bathing Bars & Soaps'),
('P043', 'Flavoured Cream Wafer Roll - Strawberry', 'Gourmet & World Food', 'Chocolates & Biscuits', 'Twister', 275, 275, 100, 'Cookies, Biscotti, Wafer'),
('P044', 'Storage/Lunch Steel Container with PP Lid - Red', 'Kitchen, Garden & Pets', 'Steel Utensils', 'Classic Essentials', 109, 299, 80, 'Steel Lunch Boxes'),
('P045', 'Plain Green Olives', 'Gourmet & World Food', 'Tinned & Processed Food', 'Figaro', 179, 179, 150, 'Olive, Jalapeno, Gherkin'),
('P046', 'Quinoa - Organic', 'Foodgrains, Oil & Masala', 'Organic Staples', 'Organic Tattva', 250, 250, 90, 'Organic Rice, Other Rice'),
('P047', 'After Shave Splash - Arctic Ice', 'Beauty & Hygiene', 'Men\'s Grooming', 'Gillette', 459.62, 469, 50, 'Shaving Care'),
('P048', 'Colour Catcher Sheets', 'Cleaning & Household', 'All Purpose Cleaners', 'Dylon', 799, 799, 60, 'Imported Cleaners'),
('P049', 'Sauce - Sweet & Sour', 'Gourmet & World Food', 'Sauces, Spreads & Dips', 'Pantai', 245, 245, 120, 'Thai & Asian Sauces'),
('P050', 'Super Hot and Sweet Mango Chutney', 'Snacks & Branded Foods', 'Pickles & Chutney', 'Spice Story', 100, 125, 140, 'Chutney Powder'),
('P051', 'Pani Puri Mix Paste', 'Foodgrains, Oil & Masala', 'Masalas & Spices', 'Mother\'s Recipe', 48.95, 55, 160, 'Cooking Pastes'),
('P052', 'Peach Syrup', 'Gourmet & World Food', 'Drinks & Beverages', 'Pekers', 850, 850, 50, 'Gourmet Juices & Drinks'),
('P053', 'Acne & Oil Control Face Wash', 'Beauty & Hygiene', 'Men\'s Grooming', 'Red Hunt', 80, 100, 120, 'Face & Body'),
('P054', 'Choco Deck - French Dessert Inspired Layered Bar', 'Snacks & Branded Foods', 'Chocolates & Candies', 'Fabelle', 56, 70, 80, 'Chocolates'),
('P055', 'Extra Fine Green Peas', 'Gourmet & World Food', 'Tinned & Processed Food', 'Daucy', 202.5, 225, 100, 'Beans & Pulses'),
('P056', 'Soothing Cucumber Facial Scrub With Apricot Seeds', 'Beauty & Hygiene', 'Skin Care', 'TJORI', 299.4, 499, 70, 'Face Care'),
('P057', 'Foochka', 'Snacks & Branded Foods', 'Ready To Cook & Eat', 'Shareat', 60, 60, 150, 'Papads, Ready To Fry'),
('P058', 'Argan-Liquid Gold Hair Spa', 'Beauty & Hygiene', 'Hair Care', 'Aroma Treasures', 199.5, 210, 60, 'Hair & Scalp Treatment'),
('P059', 'Baby Bed Protector - Sublimation Print, Pink', 'Baby Care', 'Baby Bath & Hygiene', 'Quick Dry', 199, 199, 50, 'Baby Health'),
('P060', 'Corporate Planner Diary With Premium PU Leather Cover With Card Holder', 'Cleaning & Household', 'Stationery', 'Prozo Plus', 399, 399, 80, 'Notebooks, Files, Folders'),
('P061', 'Atta Chalan - Stainless Steel, Size- No.8', 'Kitchen, Garden & Pets', 'Kitchen Accessories', 'Kvg', 149, 179, 130, 'Kitchen Tools & Other Accessories'),
('P062', 'Dog Supplement - Absolute Skin + Coat Tablet', 'Kitchen, Garden & Pets', 'Pet Food & Accessories', 'Drools', 348.6, 498, 40, 'Pet Meals & Treats'),
('P063', 'Peanut Butter - Creamy, Super', 'Gourmet & World Food', 'Sauces, Spreads & Dips', 'Happilo', 209.4, 349, 90, 'Chocolate, Peanut Spread'),
('P064', 'Sugar Free Petit Beurre - The Taste of France', 'Snacks & Branded Foods', 'Biscuits & Cookies', 'Bisk Farm', 35, 35, 180, 'Marie, Health, Digestive'),
('P065', 'Aqua Halo Rejuvenating Conditioner', 'Beauty & Hygiene', 'Hair Care', 'Azafran', 168.75, 225, 120, 'Shampoo & Conditioner'),
('P066', 'Ayurvedic Anti-Tan Face Pack', 'Beauty & Hygiene', 'Skin Care', 'TJORI', 269.4, 449, 100, 'Face Care'),
('P067', 'Dog Supplement - Absolute Calcium Tablet', 'Kitchen, Garden & Pets', 'Pet Food & Accessories', 'Drools', 339.15, 399, 80, 'Pet Meals & Treats'),
('P068', 'Battery Power Kids Toothbrush - Barbie', 'Beauty & Hygiene', 'Oral Care', 'Colgate', 374.25, 499, 60, 'Electric Toothbrush'),
('P069', 'Organic Carom Seeds/Ajwain/Om Kalu', 'Foodgrains, Oil & Masala', 'Masalas & Spices', 'Earthon', 72, 72, 100, 'Whole Spices'),
('P070', 'Padded Harness - 3/4 inch, Grey Colour', 'Kitchen, Garden & Pets', 'Pet Food & Accessories', 'Glenand', 840, 840, 40, 'Pet Collars & Leashes');Query OK, 30 rows affected (0.00 sec)
Query OK, 30 rows affected (0.00 sec)
Records: 30  Duplicates: 0  Warnings: 0

INSERT INTO product (product_id, product_name, category, sub_category, brand, sale_price, market_price, stock, type) VALUES
('P071', 'Kids Motu Patlu Toothpaste - 2-5 Years, Bubble Fruit Flavour', 'Beauty & Hygiene', 'Oral Care', 'Colgate', 43, 43, 150, 'Toothpaste'),
('P072', 'Pure & Gentle Face Wash', 'Beauty & Hygiene', 'Skin Care', 'Pears', 120, 150, 100, 'Face Care'),
('P073', 'Sesame Seed Oil', 'Beauty & Hygiene', 'Skin Care', 'INATUR', 210, 300, 70, 'Aromatherapy'),
('P074', 'Til Dil Seeds', 'Gourmet & World Food', 'Snacks, Dry Fruits, Nuts', 'Mantra', 70, 70, 120, 'Roasted Seeds & Nuts'),
('P075', 'Penta Plastic Pet Water Bottle - Green, Wide Mouth', 'Kitchen, Garden & Pets', 'Storage & Accessories', 'BB Home', 75, 126, 150, 'Water & Fridge Bottles'),
('P076', 'Acne Pimple Kit For Acne & Pimple Removal', 'Beauty & Hygiene', 'Skin Care', 'Natures Essence', 500, 500, 50, 'Face Care'),
('P077', 'Disposable Bamboo Wood Skewer/Picker Sticks- For Barbeque, 12 Inch', 'Kitchen, Garden & Pets', 'Kitchen Accessories', 'Bamboooz', 135, 299, 60, 'Kitchen Tools & Other Accessories'),
('P078', '& Moms Bathing Soap - Jasmine', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Dettol', 108, 120, 100, 'Bathing Bars & Soaps'),
('P079', 'Amla Chatpata Dry Fruit', 'Gourmet & World Food', 'Snacks, Dry Fruits, Nuts', 'Fresho Signature', 49, 65, 130, 'Dry Fruits & Berries'),
('P080', 'Toothbrush Superhero Assorted, Batman/Spiderman', 'Beauty & Hygiene', 'Oral Care', 'Colgate', 49, 79, 180, 'Toothbrush'),
('P081', 'Chips - Topica', 'Snacks & Branded Foods', 'Snacks & Namkeen', 'Sanjay', 65, 65, 150, 'Chips & Corn Snacks'),
('P082', 'Cup a Soup - Croutons Cream of Asparagus', 'Gourmet & World Food', 'Pasta, Soup & Noodles', 'Batchelors', 269.1, 299, 90, 'Imported Soups'),
('P083', 'Organic Dal - Masoor', 'Foodgrains, Oil & Masala', 'Organic Staples', 'Pro Nature', 96, 96, 150, 'Organic Dals & Pulses'),
('P084', 'Strawberry Ice Cream', 'Gourmet & World Food', 'Dairy & Cheese', 'Haagen-Dazs', 225, 225, 80, 'Gourmet Ice Cream'),
('P085', 'Exo Dishwash Bar- Round 700 gm Box + Pril Dishwash Liquid- Active 2X Lime 225 ml', 'Cleaning & Household', 'Detergents & Dishwash', 'bb Combo', 95, 114, 200, 'Dishwash Bars & Powders'),
('P086', 'Jupiter Water/Juice Glass Tumbler', 'Kitchen, Garden & Pets', 'Crockery & Cutlery', 'BB Home', 479, 629, 90, 'Glassware'),
('P087', 'Cheese - Feta Greek, Block', 'Gourmet & World Food', 'Dairy & Cheese', 'Fresho Signature', 695.7, 773, 50, 'International Cheese'),
('P088', 'Avida 3-in-1 Semi Economy Pouch - FG01248', 'Cleaning & Household', 'Pooja Needs', 'Shalimar', 31.5, 35, 200, 'Agarbatti, Incense Sticks'),
('P089', 'Bathing Soap - Sandal & Turmeric', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Godrej No.1', 254.15, 299, 80, 'Bathing Bars & Soaps'),
('P090', 'Sweet Corn Kernels - Chipotle', 'Fruits & Vegetables', 'Cuts & Sprouts', 'Supa Corn', 55, 55, 180, 'Cut & Peeled Veggies'),
('P091', 'Ashwagandha Tablets', 'Beauty & Hygiene', 'Health & Medicine', 'Muniyal Ayurveda', 120, 120, 60, 'Ayurveda'),
('P092', 'Hard Anodised Ezee-Pour Saucepan With Lid - L88', 'Kitchen, Garden & Pets', 'Cookware & Non Stick', 'Hawkins Futura', 864.5, 910, 30, 'Tawa & Sauce Pan'),
('P093', 'Topp Up Milk - Elaichi', 'Bakery, Cakes & Dairy', 'Dairy', 'Gowardhan', 80.01, 90, 100, 'Flavoured, Soya Milk'),
('P094', 'Namkeen - Madras Mixture', 'Snacks & Branded Foods', 'Snacks & Namkeen', 'Townbus', 10, 10, 200, 'Namkeen & Savoury Snacks'),
('P095', 'Stainless Steel Storage Lunch Container - Flat, Carry Snack Pack', 'Kitchen, Garden & Pets', 'Steel Utensils', 'Ramson', 129, 249, 120, 'Steel Storage Containers'),
('P096', 'Oceans Deodorant for Men - Long Lasting & Fresh Aquatic Fragrance', 'Beauty & Hygiene', 'Fragrances & Deos', 'Brut', 179.4, 299, 150, 'Men\'s Deodorants'),
('P097', 'Hair Remover Spray - Foam Lemon', 'Beauty & Hygiene', 'Feminine Hygiene', 'Dimples', 1200, 1200, 50, 'Hair Removal'),
('P098', 'Mr. Magic Powder-To-Liquid Germ Protection Handwash Empty Bottle + Refill', 'Beauty & Hygiene', 'Bath & Hand Wash', 'Godrej Protekt', 32.55, 35, 200, 'Hand Wash & Sanitizers'),
('P099', 'Frankincense Oil', 'Beauty & Hygiene', 'Skin Care', 'Organic Harvest', 258.75, 345, 60, 'Aromatherapy'),
('P100', 'Wonder Diaper Pants - Xtra Large, 12-17 Kg', 'Baby Care', 'Diapers & Wipes', 'Huggies', 1266.38, 1398, 50, 'Diapers'),
('P101', 'Samrakshana Vaastu Deepa Thailam', 'Foodgrains, Oil & Masala', 'Edible Oils & Ghee', 'Samvruddhi', 515, 515, 80, 'Other Edible Oils');
Query OK, 31 rows affected (0.00 sec)
Records: 31  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE orders (
    ->     order_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     customer_id VARCHAR(10) NOT NULL,
    ->     product_id VARCHAR(10) NOT NULL,
    ->     quantity DOUBLE NOT NULL,
    ->     total_price DOUBLE NOT NULL,
    ->     payment_mode VARCHAR(60) NOT NULL,
    ->     order_date DATETIME DEFAULT NULL,
    ->     order_status VARCHAR(20) NOT NULL,
    ->     rating DECIMAL(3,2) DEFAULT NULL,
    ->     FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    ->     FOREIGN KEY (product_id) REFERENCES product(product_id) ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.03 sec)

INSERT INTO orders (customer_id, product_id, quantity, total_price, payment_mode, order_date, order_status, rating) 
VALUES 
('CUST001', 'P023', 4, 884.71, 'Debit Card', '2024-11-30 13:41:48', 'Pending', 2.9),
('CUST025', 'P093', 1, 336.07, 'Debit Card', '2024-11-30 13:41:48', 'Cancelled', 4.7),
('CUST012', 'P094', 3, 420.09, 'Cash on Delivery', '2024-11-30 13:41:48', 'Cancelled', 2.7),
('CUST030', 'P042', 2, 650.32, 'Cash on Delivery', '2024-11-30 13:41:48', 'Delivered', 3.7),
('CUST020', 'P085', 1, 326.61, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 1.8),
('CUST010', 'P031', 3, 930.47, 'UPI', '2024-11-30 13:41:48', 'Pending', 1.4),
('CUST027', 'P099', 1, 218.12, 'UPI', '2024-11-30 13:41:48', 'Shipped', 1.2),
('CUST028', 'P060', 5, 1815.99, 'Credit Card', '2024-11-30 13:41:48', 'Pending', 1.5),
('CUST002', 'P047', 2, 315.18, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 1.2),
('CUST008', 'P055', 5, 2097.26, 'UPI', '2024-11-30 13:41:48', 'Cancelled', 4.0),
('CUST014', 'P003', 2, 950.74, 'Debit Card', '2024-11-30 13:41:48', 'Pending', 3.6),
('CUST022', 'P015', 3, 315.97, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 4.2),
('CUST021', 'P054', 4, 930.02, 'Cash on Delivery', '2024-11-30 13:41:48', 'Shipped', 2.5),
('CUST009', 'P078', 1, 305.64, 'UPI', '2024-11-30 13:41:48', 'Pending', 3.0),
('CUST019', 'P018', 3, 545.72, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 3.3),
('CUST016', 'P002', 2, 428.56, 'Debit Card', '2024-11-30 13:41:48', 'Pending', 2.2),
('CUST017', 'P061', 1, 512.79, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 4.5),
('CUST003', 'P070', 2, 703.92, 'UPI', '2024-11-30 13:41:48', 'Cancelled', 3.0),
('CUST023', 'P081', 5, 1592.45, 'Cash on Delivery', '2024-11-30 13:41:48', 'Delivered', 2.8),
('CUST013', 'P077', 1, 201.02, 'Debit Card', '2024-11-30 13:41:48', 'Pending', 4.9),
('CUST025', 'P093', 1, 336.07, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 3.6),
('CUST029', 'P050', 4, 1022.44, 'Cash on Delivery', '2024-11-30 13:41:48', 'Pending', 2.1),
('CUST014', 'P010', 1, 312.77, 'UPI', '2024-11-30 13:41:48', 'Shipped', 1.4),
('CUST027', 'P054', 1, 460.28, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 4.0),
('CUST022', 'P081', 2, 1186.14, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 3.2),
('CUST008', 'P049', 1, 400.62, 'UPI', '2024-11-30 13:41:48', 'Delivered', 4.1),
('CUST028', 'P009', 3, 825.84, 'Cash on Delivery', '2024-11-30 13:41:48', 'Pending', 2.3),
('CUST016', 'P033', 2, 765.47, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 4.6),
('CUST026', 'P071', 1, 340.25, 'Cash on Delivery', '2024-11-30 13:41:48', 'Delivered', 3.0),
('CUST025', 'P014', 3, 786.48, 'UPI', '2024-11-30 13:41:48', 'Shipped', 1.8),
('CUST017', 'P026', 2, 490.20, 'Credit Card', '2024-11-30 13:41:48', 'Pending', 3.5),
('CUST029', 'P089', 1, 370.56, 'Cash on Delivery', '2024-11-30 13:41:48', 'Cancelled', 2.8),
('CUST018', 'P021', 5, 1769.75, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 4.7),
('CUST010', 'P042', 3, 652.58, 'UPI', '2024-11-30 13:41:48', 'Shipped', 3.1),
('CUST013', 'P027', 2, 484.59, 'Cash on Delivery', '2024-11-30 13:41:48', 'Pending', 2.0),
('CUST022', 'P053', 3, 971.28, 'Credit Card', '2024-11-30 13:41:48', 'Cancelled', 3.3),
('CUST019', 'P063', 4, 628.96, 'UPI', '2024-11-30 13:41:48', 'Pending', 3.2),
('CUST006', 'P015', 2, 354.50, 'Credit Card', '2024-11-30 13:41:48', 'Shipped', 2.9),
('CUST012', 'P017', 3, 504.93, 'UPI', '2024-11-30 13:41:48', 'Delivered', 4.2),
('CUST027', 'P086', 1, 490.21, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 3.4),
('CUST020', 'P091', 1, 392.79, 'Cash on Delivery', '2024-11-30 13:41:48', 'Delivered', 4.6),
('CUST016', 'P067', 1, 530.16, 'Credit Card', '2024-11-30 13:41:48', 'Pending', 2.9),
('CUST029', 'P062', 2, 775.81, 'UPI', '2024-11-30 13:41:48', 'Cancelled', 1.6),
('CUST024', 'P046', 3, 894.65, 'Cash on Delivery', '2024-11-30 13:41:48', 'Delivered', 4.2),
('CUST015', 'P019', 2, 710.40, 'Debit Card', '2024-11-30 13:41:48', 'Shipped', 3.8),
('CUST023', 'P070', 1, 201.02, 'Cash on Delivery', '2024-11-30 13:41:48', 'Shipped', 4.0);
Query OK, 46 rows affected (0.01 sec)
Records: 46  Duplicates: 0  Warnings: 0

mysql> INSERT INTO orders (customer_id, product_id, quantity, total_price, payment_mode, order_date, order_status, rating)
    -> VALUES
    -> ('CUST011', 'P005', 2, 684.16, 'Debit Card', '2024-11-30 14:15:42', 'Shipped', 3.9),
    -> ('CUST015', 'P046', 1, 297.11, 'Cash on Delivery', '2024-11-30 14:15:42', 'Delivered', 4.0),
    -> ('CUST030', 'P067', 3, 1021.83, 'UPI', '2024-11-30 14:15:42', 'Shipped', 3.5),
    -> ('CUST003', 'P028', 4, 1435.45, 'Credit Card', '2024-11-30 14:15:42', 'Pending', 2.7),
    -> ('CUST022', 'P062', 2, 430.28, 'Cash on Delivery', '2024-11-30 14:15:42', 'Delivered', 4.6),
    -> ('CUST019', 'P043', 1, 539.19, 'Debit Card', '2024-11-30 14:15:42', 'Shipped', 2.8),
    -> ('CUST018', 'P070', 5, 1863.50, 'UPI', '2024-11-30 14:15:42', 'Shipped', 4.2),
    -> ('CUST008', 'P022', 1, 513.74, 'Credit Card', '2024-11-30 14:15:42', 'Delivered', 3.9),
    -> ('CUST006', 'P029', 3, 744.22, 'Cash on Delivery', '2024-11-30 14:15:42', 'Pending', 2.5),
    -> ('CUST025', 'P074', 2, 736.72, 'Debit Card', '2024-11-30 14:15:42', 'Shipped', 3.1),
    -> ('CUST021', 'P019', 4, 1120.68, 'Credit Card', '2024-11-30 14:15:42', 'Cancelled', 4.4),
    -> ('CUST027', 'P090', 1, 281.43, 'UPI', '2024-11-30 14:15:42', 'Shipped', 3.7),
    -> ('CUST014', 'P064', 2, 459.91, 'Cash on Delivery', '2024-11-30 14:15:42', 'Delivered', 4.3),
    -> ('CUST029', 'P080', 3, 928.56, 'UPI', '2024-11-30 14:15:42', 'Pending', 3.0);
Query OK, 14 rows affected (0.00 sec)
Records: 14  Duplicates: 0  Warnings: 0
