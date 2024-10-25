//IMPORTANT: this uses mysql2 package (click on the folder path => type 'cmd' => in Command Prompt type 'npm install mysql2')
//access the database through: http://localhost:2468/
const mysql = require('mysql2');    
const express = require('express');
const app = express();
app.use(express.static('public'));
const dbconnection = mysql.createConnection({
    host: "localhost",
    user: "root",  //change the information of user and password correspond to your database
    password: "root",
    database: "Taco_del_mundo",
    insecureAuth: true
});

dbconnection.connect(err => {
    if (err) console.log('Failed to connect: ' + err);
    else console.log('Connected to database');
});

//--------------------Home page--------------------
app.all('/', (req, res) => {
    let html = `<!DOCTYPE html>
    <html>
    <head>
        <title>Taco del Mundo</title>
        <link rel="icon" href="webicon.ico" type="image/x-icon">
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }

            header {
                background-color: black;
                color: white;
                padding: 20px;
            }

            header a {
                color: white;
                text-decoration: none;
                margin-right: 10px;
            }

            .main-page {
                background-image: url("tacobackground.jpg");
                background-size: cover;
                background-position: center;
                height: 100vh;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-align: center;
            }

            .main-page h1 {
                font-size: 36px;
                margin-bottom: 10px;
            }

            .welcome-line1 {
                color: yellow;
                font-family: "Baguet Script", cursive;
                margin-bottom: 20px;
            }

            .welcome-line2 {
                font-size: 60px;
                font-weight: bold;
                color: white;
            }

            .main-page p {
                font-size: 24px;
                margin: 20px 0;
                color: white;
            }

            .main-page .button {
                background-color: black;
                color: white;
                padding: 10px 20px;
                font-size: 20px;
                text-decoration: none;
                border-radius: 5px;
            }

            .specials-section {
                background-color: #f2f2f2;
                color: black;
                padding: 30px;
                text-align: center;
                margin-top: 20px;
            }

            footer {
                background-color: black;
                color: white;
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>
            <a href="/" style="text-decoration: none;">Home</a>
            <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
            <a href="/about" style="text-decoration: none;">About Us</a>
            <a href="/contact" style="text-decoration: none;">Contact</a>
        </header>
        <div class="main-page">
            <h1>
                <span class="welcome-line1">~ Welcome to ~</span><br>
                <span class="welcome-line2">TACO DEL MUNDO</span>
            </h1>
            <p style="font-size: 20px; margin-top: 20px; color: white;">---GLOBAL FLAVORS WRAPPED IN ONE BITE---</p>
            <a href="/menu/page=1" class="button" style="margin-top: 20px;">View Menu</a>
            <div class="specials-section">
                <h2 style="font-size: 30px; color: black;">Today's Specials</h2>
                <p style="color: black;">Appetizer: Chorrillana</p>
                <p style="color: black;">Main Dish: Taco de chapulines</p>
                <p style="color: black;">Dessert: Créme de papayas</p>
                <p style="color: black;">Drink: Caipirinha</p>
            </div>
        </div>
        <footer>
            &copy; 2023 Taco del Mundo. All rights reserved.
        </footer>
    </body>
    </html>`;

    res.send(html);
});

//--------------------Contact page--------------------
app.all('/contact', (req, res) => {
    let html = `<!DOCTYPE html>
    <html>
    <head>
        <title>Taco del Mundo - Contact</title>
        <link rel="icon" href="webicon.ico" type="image/x-icon">
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
    
            header {
                background-color: black;
                color: white;
                padding: 20px;
            }
    
                header a {
                    color: white;
                    text-decoration: none;
                    margin-right: 10px;
                }
    
            .contact-section {
                background-color: #f2f2f2;
                padding: 50px;
                text-align: center;
            }
    
            .contact-card {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-bottom: 30px;
            }
    
                .contact-card .contact-info {
                    text-align: left;
                }
    
                .contact-card h3 {
                    margin: 0;
                }
    
                .contact-card p {
                    margin: 5px 0;
                }
    
            footer {
                background-color: black;
                color: white;
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>
            <a href="/" style="text-decoration: none;">Home</a>
            <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
            <a href="/about" style="text-decoration: none;">About Us</a>
            <a href="/contact" style="text-decoration: none;">Contact</a>
        </header>
        <div class="contact-section">
            <div class="contact-card">
                <div class="contact-info">
                    <h3>Hoang Minh</h3>
                    <p>Student ID: 20213577</p>
                    <p>Phone: 0328877390</p>
                    <p>Email: minh.h213577@sis.hust.edu.vn</p>
                </div>
            </div>
            <div class="contact-card">
                <div class="contact-info">
                    <h3>Nguyen Do Hoang Minh</h3>
                    <p>Student ID: 20210591</p>
                    <p>Phone: 0386691328</p>
                    <p>Email: minh.ndh210591@sis.hust.edu.vn</p>
                </div>
            </div>
            <div class="contact-card">
                <div class="contact-info">
                    <h3>Nguyen Huu Phong</h3>
                    <p>Student ID: 20210668</p>
                    <p>Phone: 0906240403</p>
                    <p>Email: phong.nh210668@sis.hust.edu.vn</p>
                </div>
            </div>
        </div>
        <footer>
            &copy; 2023 Taco del Mundo. All rights reserved.
        </footer>
    </body>
    </html>`;

    res.send(html);
});

//--------------------About Us page--------------------
app.all('/about', (req, res) => {
    let html = `<!DOCTYPE html>
    <html>
    <head>
        <title>Taco del Mundo - About Us</title>
        <link rel="icon" href="webicon.ico" type="image/x-icon">
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
    
            header {
                background-color: black;
                color: white;
                padding: 20px;
            }
    
                header a {
                    color: white;
                    text-decoration: none;
                    margin-right: 10px;
                }
    
            .about-section {
                background-color: #f2f2f2;
                padding: 50px;
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
            }
    
                .about-section img {
                    width: 300px;
                    height: auto;
                    border-radius: 5px;
                }
    
                .about-section .text-section {
                    flex-grow: 1;
                    margin-left: 20px;
                }
    
                .about-section p {
                    font-size: 18px;
                    text-align: justify;
                    margin-bottom: 20px;
                }
    
            footer {
                background-color: black;
                color: white;
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>
            <a href="/" style="text-decoration: none;">Home</a>
            <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
            <a href="/about" style="text-decoration: none;">About Us</a>
            <a href="/contact" style="text-decoration: none;">Contact</a>
        </header>
        <div class="about-section">
            <div>
                <img src="image1about.jpg" alt="Image 1">
                <p>
                    Taco del Mundo is an imaginative restaurant created by a group of students from Database class in Hanoi University of Science and Technology (HUST). 
                    Founded in 2023 and situated in Hanoi, this exceptional establishment has quickly garnered attention from locals, media, and food enthusiasts alike.
    
                    With its creative concept, Taco del Mundo offers a wide selection of taco flavors inspired by different countries. 
                    Alongside their delicious tacos, customers can enjoy appetizing starters, delightful desserts, and refreshing beverages. 
                    The welcoming ambiance ensures that all guests receive friendly service and have a memorable experience.
                </p>
            </div>
            <div class="text-section">
                <p>
                    Taco del Mundo hosts exciting weekly promotions like Taco Tuesday and organizes special events throughout the year, 
                    including festive celebrations during Tet, Christmas, Pride Month, Halloween, and more. 
                    These occasions provide patrons with unexpected surprises and memorable experiences.
    
                    As a testament to the passion and imagination of its student founders, Taco del Mundo has become a beloved dining destination where culinary creativity knows no bounds. 
                    Visitors are invited to embark on a unique gastronomic journey, savoring vibrant taco creations that blend diverse culinary traditions from around the world.
                    As we always say "Global flavors wrapped in just one bite!"
                </p>
                <img src="image2about.jpg" alt="Image 2">
            </div>
        </div>
        <footer>
            &copy; 2023 Taco del Mundo. All rights reserved.
        </footer>
    </body>
    </html>`;

    res.send(html);
});

//--------------------Menu--------------------
app.all('/menu/page=:pageNumber', (req, res) => {
    const page = parseInt(req.params.pageNumber) || 1;  //convert page value to an integer, if cannot => set to default value '1'
    const limit = 10;  //set limit for DishNumber per page
    const offset = (page - 1) * limit;  //e.g., on page = 3 => offset = 40 (the query will start fetching data from the 41st student)
    
    dbconnection.query('select count(*) as totalDishNumber from Dish', (err, countResults) => {
        if (err) {
            console.log('Query error: ' + err);
            return res.send('An error occurred while fetching menu data');
        }
        const totalDishes = countResults[0].totalDishNumber;
        const totalPages = Math.ceil(totalDishes / limit);  //e.g., math.ceil(52/5)=11

        dbconnection.query(`SELECT A.dish_id as ID, A.dish_name as name, A.price, A.availability, GROUP_CONCAT(distinct C.origin_name) as origin, 
        D.category_name as category, GROUP_CONCAT(distinct F.ingredient_name) as ingredient, GROUP_CONCAT(distinct F.quantity) as quantity
        FROM dish as A, dish_origin as B, origin as C, category as D, dish_ingredient as E, ingredient as F
        WHERE A.dish_id = B.dish_id and B.origin_id = C.origin_id and A.category_id = D.category_id 
        and A.dish_id = E.dish_id and E.ingredient_id = F.ingredient_id
        GROUP BY A.dish_id
        LIMIT ?, ?`, [offset, limit], (err, results) => {
            if (err) {
                console.log('Query error: ' + err);
                return res.send('An error occurred while fetching menu data');
            }
        let html = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Taco del Mundo - Menu</title>
            <link rel="icon" href="webicon.ico" type="image/x-icon">
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }
        
                header {
                    background-color: black;
                    color: white;
                    padding: 20px;
                }
        
                    header a {
                        color: white;
                        text-decoration: none;
                        margin-right: 10px;
                    }
        
                .menu-section {
                    background-color: #f2f2f2;
                    padding: 30px;
                    text-align: center;
                }
        
                .menu-item {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-bottom: 20px;
                }
        
                    .menu-item img {
                        width: 200px;
                        height: 150px;
                        object-fit: cover;
                        border-radius: 5px;
                        margin-right: 20px;
                    }
        
                    .menu-item .info {
                        text-align: left;
                    }
        
                        .menu-item .info h3 {
                            margin: 0;
                            font-size: 24px;
                        }
        
                        .menu-item .info p {
                            margin: 10px 0;
                            font-size: 18px;
                        }
        
                    .menu-item .availability {
                        font-size: 16px;
                        font-style: italic;
                    }
        
                footer {
                    background-color: black;
                    color: white;
                    padding: 20px;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <header style="display: flex; justify-content: space-between;">
             <div>
                <a href="/" style="text-decoration: none;">Home</a>
                <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
                <a href="/about" style="text-decoration: none;">About Us</a>
                <a href="/contact" style="text-decoration: none;">Contact</a>
             </div>
             <div>
                <a href="/menu/category" style="text-decoration: none;">Category</a>
                <a href="/menu/origin" style="text-decoration: none;">Origin</a>
             </div>
            </header>
            <div class="menu-section">`;
            
            for (let i = 0; i < results.length; i++) {
                if (parseFloat(results[i].quantity) === 0) {
                    avail = "No"
                }
                else {
                    avail = "Yes"
                }
                html += `
                <h2>---${results[i].category}---</h2>
                <div class="menu-item">
                    <img src="/${results[i].ID}.jpg" alt="Number ${results[i].ID}">
                    <div class="info">
                        <h3>${results[i].name}</h3>
                        <p>Origin: ${results[i].origin}</p>
                        <p>Price: ${results[i].price} $</p>
                        <p class="availability">Availability: ${avail}</p>
                    </div>
                </div>`;
            }
            
            //pagination links
            const prevPage = page > 1 ? page - 1 : null;
            const nextPage = page < totalPages ? page + 1 : null;
            
            if (prevPage) {
                html += `<a href="/menu/page=${prevPage}" style="text-decoration: none; color: black;">Previous</a>`;
            }
            if (nextPage) {
                html += `<span style="margin-left: 10px;"></span><a href="/menu/page=${nextPage}" style="text-decoration: none; color: black;">Next</a>`;
            }
            
            html += `
            </div>
            <footer>
                &copy; 2023 Taco del Mundo. All rights reserved.
            </footer>
            </body>
            </html>`;
            

        res.send(html);
        });
    });
});

//--------------------Category--------------------
app.all('/menu/category', (req, res) => {
    dbconnection.query('SELECT category_id as ID, category_name as name FROM Category', (err, results) => {
        if (err) {
            console.log('Query error: ' + err);
            return res.send('An error occurred while fetching category information');
        }
        let html = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Taco del Mundo - Menu</title>
            <link rel="icon" href="webicon.ico" type="image/x-icon">
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }
        
                header {
                    background-color: black;
                    color: white;
                    padding: 20px;
                }
        
                    header a {
                        color: white;
                        text-decoration: none;
                        margin-right: 10px;
                    }
        
                .menu-section {
                    background-color: #f2f2f2;
                    padding: 30px;
                    text-align: center;
                }
        
                .menu-item {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-bottom: 20px;
                }
        
                    .menu-item img {
                        width: 200px;
                        height: 150px;
                        object-fit: cover;
                        border-radius: 5px;
                        margin-right: 20px;
                    }
        
                    .menu-item .info {
                        text-align: left;
                    }
        
                        .menu-item .info h3 {
                            margin: 0;
                            font-size: 24px;
                        }
        
                        .menu-item .info p {
                            margin: 10px 0;
                            font-size: 18px;
                        }
        
                    .menu-item .availability {
                        font-size: 16px;
                        font-style: italic;
                    }
        
                footer {
                    background-color: black;
                    color: white;
                    padding: 20px;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <header style="display: flex; justify-content: space-between;">
             <div>
                <a href="/" style="text-decoration: none;">Home</a>
                <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
                <a href="/about" style="text-decoration: none;">About Us</a>
                <a href="/contact" style="text-decoration: none;">Contact</a>
             </div>
             <div>
                <a href="/menu/category" style="text-decoration: none;">Category</a>
                <a href="/menu/origin" style="text-decoration: none;">Origin</a>
             </div>
            </header>
            <div class="menu-section">`;
            for (let i = 0; i < results.length; i++) {
                html += `
                <h2><a href="/menu/category=${results[i].name}" style="text-decoration: none; color: black;">${results[i].name}</h2>
                <div class="menu-item">
                    <img src="/c${results[i].ID}.jpg">
                </div>`;
            }

    res.send(html);
    })
});

//--------------------Origin--------------------
app.all('/menu/origin', (req, res) => {
    dbconnection.query('SELECT origin_id as ID, origin_name as name FROM Origin', (err, results) => {
        if (err) {
            console.log('Query error: ' + err);
            return res.send('An error occurred while fetching origin information');
        }
        let html = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Taco del Mundo - Menu</title>
            <link rel="icon" href="webicon.ico" type="image/x-icon">
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }
        
                header {
                    background-color: black;
                    color: white;
                    padding: 20px;
                }
        
                    header a {
                        color: white;
                        text-decoration: none;
                        margin-right: 10px;
                    }
        
                .menu-section {
                    background-color: #f2f2f2;
                    padding: 30px;
                    text-align: center;
                }
        
                .menu-item {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-bottom: 20px;
                }
        
                    .menu-item img {
                        width: 200px;
                        height: 150px;
                        object-fit: cover;
                        border-radius: 5px;
                        margin-right: 20px;
                    }
        
                    .menu-item .info {
                        text-align: left;
                    }
        
                        .menu-item .info h3 {
                            margin: 0;
                            font-size: 24px;
                        }
        
                        .menu-item .info p {
                            margin: 10px 0;
                            font-size: 18px;
                        }
        
                    .menu-item .availability {
                        font-size: 16px;
                        font-style: italic;
                    }
        
                footer {
                    background-color: black;
                    color: white;
                    padding: 20px;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <header style="display: flex; justify-content: space-between;">
             <div>
                <a href="/" style="text-decoration: none;">Home</a>
                <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
                <a href="/about" style="text-decoration: none;">About Us</a>
                <a href="/contact" style="text-decoration: none;">Contact</a>
             </div>
             <div>
                <a href="/menu/category" style="text-decoration: none;">Category</a>
                <a href="/menu/origin" style="text-decoration: none;">Origin</a>
             </div>
            </header>
            <div class="menu-section">`;
            for (let i = 0; i < results.length; i++) {
                html += `
                <h2><a href="/menu/origin=${results[i].name}" style="text-decoration: none; color: black;">${results[i].name}</h2>
                <div class="menu-item">
                    <img src="/o${results[i].ID}.png">
                </div>`;
            }

    res.send(html);
    })
});

//--------------------Category filtered menu--------------------
app.all('/menu/category=:categoryName', (req, res) => {
    const categoryName = req.params.categoryName;

    // Query the database to fetch menu items filtered by category
    dbconnection.query(`SELECT * FROM Dish INNER JOIN Category ON Dish.category_id = Category.category_id 
    WHERE Category.category_name = ?`, [categoryName], (err, results) => {
        if (err) {
            console.log('Query error: ' + err);
            return res.send('An error occurred while fetching menu data');
        }

        dbconnection.query(`SELECT A.dish_id as ID, A.dish_name as name, A.price, A.availability, GROUP_CONCAT(distinct C.origin_name) as origin, 
        D.category_name as category, GROUP_CONCAT(distinct F.ingredient_name) as ingredient, GROUP_CONCAT(distinct F.quantity) as quantity
        FROM dish as A, dish_origin as B, origin as C, category as D, dish_ingredient as E, ingredient as F
        WHERE A.dish_id = B.dish_id and B.origin_id = C.origin_id and A.category_id = D.category_id 
        and A.dish_id = E.dish_id and E.ingredient_id = F.ingredient_id and D.category_name = '${categoryName}'
        GROUP BY A.dish_id`, (err, results) => {
            if (err) {
                console.log('Query error: ' + err);
                return res.send('An error occurred while fetching menu data');
            }

        let html = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Taco del Mundo - Menu</title>
            <link rel="icon" href="webicon.ico" type="image/x-icon">
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }
        
                header {
                    background-color: black;
                    color: white;
                    padding: 20px;
                }
        
                    header a {
                        color: white;
                        text-decoration: none;
                        margin-right: 10px;
                    }
        
                .menu-section {
                    background-color: #f2f2f2;
                    padding: 30px;
                    text-align: center;
                }
        
                .menu-item {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-bottom: 20px;
                }
        
                    .menu-item img {
                        width: 200px;
                        height: 150px;
                        object-fit: cover;
                        border-radius: 5px;
                        margin-right: 20px;
                    }
        
                    .menu-item .info {
                        text-align: left;
                    }
        
                        .menu-item .info h3 {
                            margin: 0;
                            font-size: 24px;
                        }
        
                        .menu-item .info p {
                            margin: 10px 0;
                            font-size: 18px;
                        }
        
                    .menu-item .availability {
                        font-size: 16px;
                        font-style: italic;
                    }
        
                footer {
                    background-color: black;
                    color: white;
                    padding: 20px;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <header style="display: flex; justify-content: space-between;">
             <div>
                <a href="/" style="text-decoration: none;">Home</a>
                <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
                <a href="/about" style="text-decoration: none;">About Us</a>
                <a href="/contact" style="text-decoration: none;">Contact</a>
             </div>
             <div>
                <a href="/menu/category" style="text-decoration: none;">Category</a>
                <a href="/menu/origin" style="text-decoration: none;">Origin</a>
             </div>
            </header>
            <div class="menu-section">`;

        for (let i = 0; i < results.length; i++) {
                if (parseFloat(results[i].quantity) === 0) {
                    avail = "No"
                }
                else {
                    avail = "Yes"
                }
                html += `
                <h2>---${results[i].category}---</h2>
                <div class="menu-item">
                    <img src="/${results[i].ID}.jpg" alt="Number ${results[i].ID}">
                    <div class="info">
                        <h3>${results[i].name}</h3>
                        <p>Origin: ${results[i].origin}</p>
                        <p>Price: ${results[i].price} $</p>
                        <p class="availability">Availability: ${avail}</p>
                    </div>
                </div>`;
            }

        html += `
            </div>
            <footer>
                &copy; 2023 Taco del Mundo. All rights reserved.
            </footer>
        </body>
        </html>`;

        res.send(html);
        });
    });
});

//--------------------Origin filtered menu--------------------
app.all('/menu/origin=:originName', (req, res) => {
    const originName = req.params.originName;

    // Query the database to fetch menu items filtered by category
    dbconnection.query(`SELECT * FROM Dish, Dish_Origin, Origin
    WHERE Dish.dish_id = Dish_Origin.dish_id and Dish_Origin.origin_id = Origin.origin_id and
    Origin.origin_name = ?`, [originName], (err, results) => {
        if (err) {
            console.log('Query error: ' + err);
            return res.send('An error occurred while fetching menu data');
        }

        dbconnection.query(`SELECT A.dish_id as ID, A.dish_name as name, A.price, A.availability, GROUP_CONCAT(distinct C.origin_name) as origin, 
        D.category_name as category, GROUP_CONCAT(distinct F.ingredient_name) as ingredient, GROUP_CONCAT(distinct F.quantity) as quantity
        FROM dish as A, dish_origin as B, origin as C, category as D, dish_ingredient as E, ingredient as F
        WHERE A.dish_id = B.dish_id and B.origin_id = C.origin_id and A.category_id = D.category_id 
        and A.dish_id = E.dish_id and E.ingredient_id = F.ingredient_id
        GROUP BY A.dish_id HAVING FIND_IN_SET('${originName}', GROUP_CONCAT(distinct C.origin_name))`, (err, results) => {
            if (err) {
                console.log('Query error: ' + err);
                return res.send('An error occurred while fetching menu data');
            }

        let html = `
        <!DOCTYPE html>
        <html>
        <head>
            <title>Taco del Mundo - Menu</title>
            <link rel="icon" href="webicon.ico" type="image/x-icon">
            <style>
                body {
                    margin: 0;
                    padding: 0;
                    font-family: Arial, sans-serif;
                }
        
                header {
                    background-color: black;
                    color: white;
                    padding: 20px;
                }
        
                    header a {
                        color: white;
                        text-decoration: none;
                        margin-right: 10px;
                    }
        
                .menu-section {
                    background-color: #f2f2f2;
                    padding: 30px;
                    text-align: center;
                }
        
                .menu-item {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-bottom: 20px;
                }
        
                    .menu-item img {
                        width: 200px;
                        height: 150px;
                        object-fit: cover;
                        border-radius: 5px;
                        margin-right: 20px;
                    }
        
                    .menu-item .info {
                        text-align: left;
                    }
        
                        .menu-item .info h3 {
                            margin: 0;
                            font-size: 24px;
                        }
        
                        .menu-item .info p {
                            margin: 10px 0;
                            font-size: 18px;
                        }
        
                    .menu-item .availability {
                        font-size: 16px;
                        font-style: italic;
                    }
        
                footer {
                    background-color: black;
                    color: white;
                    padding: 20px;
                    text-align: center;
                }
            </style>
        </head>
        <body>
            <header style="display: flex; justify-content: space-between;">
             <div>
                <a href="/" style="text-decoration: none;">Home</a>
                <a href="/menu/page=1" style="text-decoration: none;">Menu</a>
                <a href="/about" style="text-decoration: none;">About Us</a>
                <a href="/contact" style="text-decoration: none;">Contact</a>
             </div>
             <div>
                <a href="/menu/category" style="text-decoration: none;">Category</a>
                <a href="/menu/origin" style="text-decoration: none;">Origin</a>
             </div>
            </header>
            <div class="menu-section">`;
        if (results.length === 0) {
            html += `
            <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" style="text-decoration: none; color: black;"
            >CLICK FOR SPECIAL VIETNAMESE DISHES!</a>`
        }
        else {
            for (let i = 0; i < results.length; i++) {
                if (parseFloat(results[i].quantity) === 0) {
                    avail = "No"
                }
                if (parseFloat(results[i].quantity) !== 0) {
                    avail = "Yes"
                }
                html += `
                <h2>---${results[i].category}---</h2>
                <div class="menu-item">
                    <img src="/${results[i].ID}.jpg" alt="Number ${results[i].ID}">
                    <div class="info">
                        <h3>${results[i].name}</h3>
                        <p>Origin: ${results[i].origin}</p>
                        <p>Price: ${results[i].price} $</p>
                        <p class="availability">Availability: ${avail}</p>
                    </div>
                </div>`;
            }
        }
        html += `
            </div>
            <footer>
                &copy; 2023 Taco del Mundo. All rights reserved.
            </footer>
        </body>
        </html>`;

        res.send(html);
        });
    });
});

//////////
app.listen(2468, (err) => {
    if (err) console.log('Web server failed to start: ' + err);
    else console.log('Web server is running');
});

//access the database through: http://localhost:2468/
