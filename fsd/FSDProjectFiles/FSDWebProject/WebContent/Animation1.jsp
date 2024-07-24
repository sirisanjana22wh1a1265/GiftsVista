<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animation 1</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap"
      rel="stylesheet"
    /><title>3D Flip Card Gallery & Image Rotate Animation</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: url('https://files.123freevectors.com/wp-content/original/110755-dark-color-blurred-background-vector.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        header {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #2c2c2c;
            padding: 10px 20px;
            position: fixed;
            top: 0;
            z-index: 1000;
        }

        header .logo {
            font-size: 1.5rem;
            color: white;
            margin-left:30px;
        }

        header nav {
            display: flex;
            gap: 20px;
        }

        header nav a {
            color: white;
            text-decoration: none;
            font-size: 1.5rem;
        }

        .list {
            display: flex;
            gap: 0.25rem;
            transform-style: preserve-3d;
            list-style-type: none;
            margin-top: 60px;
        }

        .list:hover :not(:hover) {
            margin: 0 -20px;
            transform: perspective(500px) rotateY(45deg) scale(0.95);
        }

        .list:hover :not(:hover)::after {
            opacity: 0.4;
        }

        .item1, .item2, .item3, .item4, .item5 {
            position: relative;
            width: 120px;
            aspect-ratio: 3/4;
            border-radius: 0.5rem;
            background-size: cover;
            background-position: center;
            transition: margin 0.5s, transform 0.5s;
        }

        .item1 { background-image: url(https://media.istockphoto.com/id/1070159778/photo/tasty-birthday-cake-with-lighting-candles-on-blue-background.jpg?s=612x612&w=0&k=20&c=bmUqhMl2KLLTiAXzCCZQhYQWK0tnuW5Nt4ymK6G4ZUw=); }
        .item2 { background-image: url(https://media.istockphoto.com/id/473081644/photo/fresh-flowers-in-ice-cream-cone-still-life.jpg?s=612x612&w=0&k=20&c=r0j07ks8h04VT1chdQ4S61e-RUPE1Gm6rziflT0SULI=); }
        .item3 { background-image: url(https://media.istockphoto.com/id/1190471066/photo/top-view-of-golden-rings-set-on-pink-and-blue-background.jpg?s=612x612&w=0&k=20&c=yKR8W5NAvpL5wXIx36nvHpaMMOc0FfcDZZQ5fZouyhk=); }
        .item4 { background-image: url(https://media.istockphoto.com/id/1317147958/photo/devils-ivy-or-epipremnum-aureum-in-beige-plastic-pot-placed-on-white-table-against-white-wall.jpg?s=612x612&w=0&k=20&c=X7_NwfJDtMfAZV_HVqkKR1llu2BnltdjM86L-vbYSVs=); }
        .item5 { background-image: url(https://media.istockphoto.com/id/1264288252/photo/composition-of-helium-balloons.jpg?s=612x612&w=0&k=20&c=5AU607eq01LAi_peu0VZmLsj1agEBPUHizpE996qCS4=); }

        .item1:hover ~ .item1, .item2:hover ~ .item2, .item3:hover ~ .item3, .item4:hover ~ .item4, .item5:hover ~ .item5 {
            transform: perspective(500px) rotateY(-45deg) scale(0.95);
        }

        .item1:hover, .item2:hover, .item3:hover , .item4:hover , .item5:hover  {
            transform: perspective(500px) rotateY(0) scale(1.2);
        }

        .item1::after, .item2::after, .item3::after, .item4::after, .item5::after {
            content: '';
            position: absolute;
            width: inherit;
            aspect-ratio: inherit;
            border-radius: inherit;
            background-color: black;
            opacity: 0;
            transition: opacity 0.5s;
        }

        @property --a { 
            syntax: "<angle>";
            initial-value: 0deg; 
            inherits: true;
        }

        @property --d { 
            syntax: "<percentage>";
            initial-value: 0%; 
            inherits: true;
        }

        .images {
            display: flex;
            gap: 20px;
            margin-top: 10px;
        }

        img {
            --b: 10px; /* control the border thickness */
            --g: 20px; /* control the gap */
            --d: 30%;
            --a: 45deg;
            --_o:50% + (var(--d) + var(--g) + var(--b));
            --_i:50% + (var(--d) + var(--g));
            --_f:50% + (var(--d));
            clip-path: polygon(
                calc(var(--_o)*sin(-45deg + var(--a))) calc(var(--_o)*cos(-45deg + var(--a))),
                calc(var(--_o)*sin( 45deg + var(--a))) calc(var(--_o)*cos( 45deg + var(--a))),
                calc(var(--_o)*sin(135deg + var(--a))) calc(var(--_o)*cos(135deg + var(--a))),
                calc(var(--_o)*sin(225deg + var(--a))) calc(var(--_o)*cos(225deg + var(--a))),
                calc(var(--_o)*sin(-45deg + var(--a))) calc(var(--_o)*cos(-45deg + var(--a))),
                calc(var(--_i)*sin(-45deg + var(--a))) calc(var(--_i)*cos(-45deg + var(--a))),
                calc(var(--_i)*sin(225deg + var(--a))) calc(var(--_i)*cos(225deg + var(--a))),
                calc(var(--_i)*sin(135deg + var(--a))) calc(var(--_i)*cos(135deg + var(--a))),
                calc(var(--_i)*sin( 45deg + var(--a))) calc(var(--_i)*cos( 45deg + var(--a))),
                calc(var(--_i)*sin(-45deg + var(--a))) calc(var(--_i)*cos(-45deg + var(--a))),
                calc(var(--_f)*sin(-45deg + var(--a))) calc(var(--_f)*cos(-45deg + var(--a))),
                calc(var(--_f)*sin( 45deg + var(--a))) calc(var(--_f)*cos( 45deg + var(--a))),
                calc(var(--_f)*sin(135deg + var(--a))) calc(var(--_f)*cos(135deg + var(--a))),
                calc(var(--_f)*sin(225deg + var(--a))) calc(var(--_f)*cos(225deg + var(--a))),
                calc(var(--_f)*sin(-45deg + var(--a))) calc(var(--_f)*cos(-45deg + var(--a)))
            );
            outline: 166px solid #2c2c2c; /* color here */
            outline-offset: 2px; /* a small value to avoid a visual glitch */
            cursor: pointer;
            transition: --d .3s, --a .2s .2s;
        }

        img:hover {
            --a: 0deg;
            --d: 71%;
            transition: --a .3s, --d .2s .2s;
        }

        .bottom-section {
            background: #2c2c2c;
            color: white;
            padding: 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: auto;
        }

        .bottom-section .bottom-list {
            display: flex;
            gap: 20px;
            list-style-type: none;
        }

        .bottom-section .bottom-list li {
            white-space: nowrap;
        }

        .bottom-section .bottom-list a {
            color: white;
            text-decoration: none;
        }

        .bottom-section .bottom-list a:hover {
            text-decoration: underline;
        }

        body {
               margin: 0;
         background: linear-gradient(#0d0d0d, #212121);
        font-family: "Euclid Circular A", "Poppins";
        color: #d6dfed;
}

html,
body {
  height: 100%;
}

.background {
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}

ul {
  display: flex;
  list-style: none;
  padding: 0;
  margin: 0;
}

.socials {
  gap: 20px;
}

.socials a {
  font-size: 24px;
}

.links {
  gap: 10px;
}

.legal {
  font-size: 12px;
  margin: 0;
}

svg {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  transform: scaleY(3) scaleX(2.25);
  transform-origin: bottom;
  box-sizing: border-box;
  display: block;
  pointer-events: none;
}

footer {
  position: fixed;
  left: 0;
  bottom: 12px;
  display: flex;
  width: 100%;
  height: 260px;
}

section {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  gap: 30px;
  padding-bottom: 80px;
  padding-left: 60px;
  width: 100%;
}

@media (width > 420px) {
  section {
    align-items: center;
    padding-left: 0;
    gap: 20px;
  }

  .links {
    gap: 20px;
  }
}

         .dropdown a {
            display: inline-block;
        }
        .menu-bar {
    position: fixed;
    top: 20px;
    left: 20px;
    z-index: 1000;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-menu {
    display: none;
    position: absolute;
    background-color: #333;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    padding: 10px;
}

.dropdown-menu a {
    color: white;
    padding: 10px;
    text-decoration: none;
    display: block;
    transition: background-color 0.3s;
}

.dropdown-menu a:hover {
    background-color: #555;
}

.dropdown:hover .dropdown-menu {
    display: block;
}

        
        
    </style>
  </head>
  <body>
    <header>
        <div class="logo">Gifts Vista</div>
        <nav>
            <a href="#"><i class="fas fa-home"></i></a>
            <div class = "dropdown">
            	<a href=# id="dropdownIcon"><i class="fas fa-user"></i></a>
            	<div class="dropdown-menu">
            		<a href="1stpage.jsp">Logout</a>" 
            	</div>
            </div>
            
            
            <a href="WishlistDisplay.jsp"><i class="fas fa-heart"></i></a>
            <a href="#"><i class="fas fa-shopping-cart"></i></a>
        </nav>
    </header>
    <ul class='list'>
        <a href="cakes.jsp"><li class="item1"></li></a>
        <a href="first.jsp"><li class='item2'></li></a>
        <a href="acessories1.jsp"><li class='item3'></li></a>
        <a href="plants.jsp"><li class='item4'></li></a>
        <a href="decorations1.jsp"><li class='item5'></li></a>
        
    </ul>
    <div class="images">
        <a href="Husband.jsp"><img src="https://www.shutterstock.com/shutterstock/videos/1110394153/thumb/1.jpg?ip=x480" alt="Him"></a>
        <a href="wife.jsp"><img src="https://www.shutterstock.com/shutterstock/videos/1110394143/thumb/1.jpg?ip=x480" alt="Her"></a>
    </div>
    <div class="menu-bar">
        <div class="dropdown">
            <a href="#" id="dropdownIcon"><i class="fas fa-bars"></i></a>
            <div class="dropdown-menu">
                <a href="cakes.jsp">Cakes</a>
                <a href="first.jsp">Flowers</a>
                <a href="acessories1.jsp">Accessories</a>
                <a href="plants.jsp">Plants</a>
                <a href="decorations1.jsp">Decorations</a>
                <a href="him.jsp">Him</a>
                <a href="her.jsp">Her</a>
                <a href="husband.jsp">Husband</a>
                <a href="wife.jsp">Wife</a>
                <a href="kids.jsp">Kids</a>
                <!-- Add more items as needed -->
            </div>
        </div>
    </div>

    
</body>

    <footer>
      <div class="background">
        <svg
          version="1.1"
          xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          x="0px"
          y="0px"
          width="100%"
          height="100%"
          viewBox="0 0 1600 900">
          <defs>
            <linearGradient id="bg" x2="0%" y2="100%">
              <stop
                offset="0%"
                style="stop-color: rgba(53, 127, 242, 0.6)"
              ></stop>
              <stop
                offset="100%"
                style="stop-color: rgba(38, 89, 190, 0.06)"
              ></stop>
            </linearGradient>
            <path
              id="wave"
              fill="url(#bg)"
              d="M-363.852,502.589c0,0,236.988-41.997,505.475,0
      s371.981,38.998,575.971,0s293.985-39.278,505.474,5.859s493.475,48.368,716.963-4.995v560.106H-363.852V502.589z"
            />
          </defs>
          <g>
            <use xlink:href="#wave" opacity=".3">
              <animateTransform
                attributeName="transform"
                attributeType="XML"
                type="translate"
                dur="8s"
                calcMode="spline"
                values="270 230; -334 180; 270 230"
                keyTimes="0; .5; 1"
                keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                repeatCount="indefinite"
              />
            </use>
            <use xlink:href="#wave" opacity=".6">
              <animateTransform
                attributeName="transform"
                attributeType="XML"
                type="translate"
                dur="6s"
                calcMode="spline"
                values="-270 230;243 220;-270 230"
                keyTimes="0; .6; 1"
                keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                repeatCount="indefinite"
              />
            </use>
            <use xlink:href="#wave" opacty=".9">
              <animateTransform
                attributeName="transform"
                attributeType="XML"
                type="translate"
                dur="4s"
                calcMode="spline"
                values="0 230;-140 200;0 230"
                keyTimes="0; .4; 1"
                keySplines="0.42, 0, 0.58, 1.0;0.42, 0, 0.58, 1.0"
                repeatCount="indefinite"
              />
            </use>
          </g>
        </svg>
      </div>

      <section>
        <ul class="socials">
          <li><a class="fa-brands fa-facebook"></a></li>
          <li><a class="fa-brands fa-twitter"></a></li>
          <li><a class="fa-brands fa-linkedin"></a></li>
          <li><a class="fa-brands fa-instagram"></a></li>
        </ul>
        <ul class="links">
          <li><a>Home</a></li>
          <li><a>About</a></li>
          <li><a>Services</a></li>
          <li><a>Team</a></li>
          <li><a>Contact</a></li>
        </ul>
        <p class="legal">© 2023 All rights reserved</p>
      </section>
    </footer>
  </body>
</html>