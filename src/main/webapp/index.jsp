<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>BookMyShow - Telugu Movies</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
<style>
:root{
  --bg:#f5f5f5;--bg-card:#fff;--primary:#333545;--primary-light:#4a4d5e;
  --accent:#f84464;--accent-light:#ffe8ec;--accent-dark:#d6304a;
  --muted:#666;--muted-light:#999;--surface:#f0f0f0;--success:#14a76c;
  --warning:#ffb400;--radius:8px;--radius-sm:6px;
  --shadow:0 2px 12px rgba(0,0,0,.08);--shadow-hover:0 8px 32px rgba(248,68,100,.2);
  --transition:.25s cubic-bezier(.4,0,.2,1);--container:1240px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:'Inter',system-ui,-apple-system,sans-serif;background:var(--bg);color:var(--primary);line-height:1.5;-webkit-font-smoothing:antialiased}
a{color:inherit;text-decoration:none}
img{display:block;max-width:100%}
button{cursor:pointer;font-family:inherit;border:none;background:none;color:inherit}
input{font-family:inherit}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}
.sr-only{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0,0,0,0)}

/* Buttons */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 28px;border-radius:var(--radius);font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent)}
.btn-primary:hover{background:var(--accent-dark);border-color:var(--accent-dark);transform:translateY(-2px);box-shadow:0 8px 24px rgba(248,68,100,.35)}
.btn-ghost{background:rgba(255,255,255,.15);color:#fff;border-color:rgba(255,255,255,.25)}
.btn-ghost:hover{background:rgba(255,255,255,.25);border-color:rgba(255,255,255,.4);transform:translateY(-2px)}

/* Header */
header{position:sticky;top:0;z-index:100;background:#fff;border-bottom:1px solid rgba(0,0,0,.06)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:10px 0;min-height:64px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;letter-spacing:-.5px;color:var(--primary);flex-shrink:0}
.brand .accent{color:var(--accent)}
.brand i{font-size:24px;color:var(--accent)}
nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center}
nav.main-nav li a{display:flex;align-items:center;gap:6px;padding:8px 14px;border-radius:var(--radius-sm);font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition)}
nav.main-nav li a:hover,nav.main-nav li a.active{background:var(--surface);color:var(--primary)}
nav.main-nav li a i{font-size:14px}
.header-actions{display:flex;align-items:center;gap:6px;flex-shrink:0}
.header-actions .icon-btn{width:40px;height:40px;display:grid;place-items:center;border-radius:50%;font-size:17px;color:var(--muted);transition:var(--transition);position:relative}
.header-actions .icon-btn:hover{background:var(--surface);color:var(--accent)}
.ticket-wrap{position:relative}
.ticket-count{position:absolute;top:-2px;right:-2px;background:var(--accent);color:#fff;font-size:11px;font-weight:700;width:20px;height:20px;border-radius:50%;display:grid;place-items:center;border:2px solid #fff}
.search-wrap{display:flex;align-items:center;background:var(--surface);border-radius:var(--radius);padding:0 14px 0 16px;transition:var(--transition);border:2px solid transparent;min-width:220px}
.search-wrap:focus-within{border-color:var(--accent);background:#fff;box-shadow:0 0 0 4px rgba(248,68,100,.1)}
.search-wrap input{border:0;background:transparent;outline:none;width:100%;padding:10px 0;font-size:14px;color:var(--primary)}
.search-wrap input::placeholder{color:var(--muted-light)}
.search-wrap button{padding:8px 0 8px 10px;color:var(--muted);font-size:15px;transition:var(--transition)}
.search-wrap button:hover{color:var(--accent)}
.mobile-toggle{display:none;width:40px;height:40px;border-radius:50%;font-size:20px;background:var(--surface);color:var(--primary)}
#mobileMenu{display:none;background:#fff;border-top:1px solid rgba(0,0,0,.06);padding:12px 0 20px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu ul li a{display:flex;align-items:center;gap:12px;padding:12px 16px;border-radius:var(--radius-sm);font-weight:500;color:var(--primary)}
#mobileMenu ul li a:hover{background:var(--surface)}
#mobileMenu ul li a i{width:22px;color:var(--muted)}

/* Hero */
.hero{position:relative;display:flex;align-items:center;min-height:420px;padding:60px 0;border-radius:var(--radius);overflow:hidden;margin:20px 24px 0;background:linear-gradient(135deg,#1a1a2e 0%,#16213e 100%)}
.hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;opacity:.3;z-index:0}
.hero::after{content:'';position:absolute;inset:0;background:linear-gradient(135deg,rgba(26,26,46,.6) 0%,rgba(248,68,100,.25) 100%);z-index:0}
.hero .container{position:relative;z-index:1}
.hero .badge{display:inline-block;background:rgba(248,68,100,.2);color:#ffb3c1;padding:4px 16px;border-radius:999px;font-weight:600;font-size:13px;letter-spacing:.3px;margin-bottom:16px}
.hero h1{font-family:'Playfair Display',serif;font-size:46px;font-weight:700;color:#fff;line-height:1.15;max-width:640px;margin-bottom:16px}
.hero h1 .highlight{color:#ffb3c1}
.hero p{color:rgba(255,255,255,.85);font-size:17px;max-width:520px;margin-bottom:28px;line-height:1.6}
.hero .actions{display:flex;gap:12px;flex-wrap:wrap}

/* Section */
.section{padding:48px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:28px;flex-wrap:wrap}
.section-header .title-group h2{font-size:26px;font-weight:700;letter-spacing:-.3px}
.section-header .title-group p{color:var(--muted);margin-top:4px;font-size:15px}
.section-header .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:6px;font-size:14px;transition:var(--transition);white-space:nowrap}
.section-header .view-all:hover{gap:12px;color:var(--accent-dark)}

/* Locations */
.locations-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(200px,1fr));gap:12px}
.loc-card{background:var(--bg-card);border-radius:var(--radius);padding:18px 16px;box-shadow:var(--shadow);transition:var(--transition);cursor:pointer;border:2px solid transparent;display:flex;align-items:center;gap:12px}
.loc-card:hover{transform:translateY(-4px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.loc-card .loc-icon{width:44px;height:44px;border-radius:50%;background:var(--accent-light);display:grid;place-items:center;font-size:18px;color:var(--accent);transition:var(--transition);flex-shrink:0}
.loc-card:hover .loc-icon{background:var(--accent);color:#fff}
.loc-card .loc-info h4{font-size:14px;font-weight:600;line-height:1.2}
.loc-card .loc-info .count{font-size:12px;color:var(--muted);margin-top:2px}

/* Movies */
.movies-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
.movie-card{background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent;cursor:pointer}
.movie-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.movie-card .img-wrap{position:relative;overflow:hidden;background:#1a1a2e;aspect-ratio:2/3}
.movie-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
.movie-card:hover .img-wrap img{transform:scale(1.04)}
.movie-card .badge{position:absolute;top:10px;left:10px;background:var(--accent);color:#fff;padding:4px 10px;border-radius:999px;font-size:11px;font-weight:700;letter-spacing:.3px}
.movie-card .badge.rating{background:var(--warning);color:var(--primary);left:auto;right:10px}
.movie-card .wish-btn{position:absolute;top:10px;right:10px;width:34px;height:34px;border-radius:50%;background:rgba(255,255,255,.9);display:grid;place-items:center;font-size:15px;color:var(--muted);transition:var(--transition);backdrop-filter:blur(4px)}
.movie-card .badge.rating ~ .wish-btn{top:48px}
.movie-card .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.1)}
.movie-card .body{padding:14px 16px 12px;flex:1;display:flex;flex-direction:column;gap:4px}
.movie-card .body .genre-tag{font-size:11px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.5px;font-weight:600}
.movie-card .body h5{font-size:16px;font-weight:600;line-height:1.3;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.movie-card .body .meta{display:flex;align-items:center;gap:8px;font-size:13px;color:var(--muted);margin-top:2px}
.movie-card .body .rating{display:flex;align-items:center;gap:4px;font-size:13px;color:var(--warning);font-weight:600}
.movie-card .footer{padding:0 16px 16px;display:flex;gap:8px}
.movie-card .footer .book-btn{flex:1;padding:10px;border-radius:var(--radius-sm);background:var(--accent);color:#fff;font-weight:600;font-size:14px;transition:var(--transition);display:flex;align-items:center;justify-content:center;gap:8px}
.movie-card .footer .book-btn:hover{background:var(--accent-dark);transform:scale(1.02)}

/* Theaters */
.theaters-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:16px}
.theater-card{background:var(--bg-card);border-radius:var(--radius);padding:18px 20px;box-shadow:var(--shadow);transition:var(--transition);border-left:4px solid var(--accent)}
.theater-card:hover{box-shadow:var(--shadow-hover);transform:translateX(4px)}
.theater-card h4{font-size:15px;font-weight:600;margin-bottom:4px}
.theater-card .address{font-size:13px;color:var(--muted);line-height:1.4;display:flex;align-items:flex-start;gap:6px}
.theater-card .address i{color:var(--accent);margin-top:3px;font-size:12px}
.theater-card .amenities{display:flex;gap:8px;margin-top:10px;flex-wrap:wrap}
.theater-card .amenities span{font-size:11px;background:var(--surface);padding:3px 10px;border-radius:999px;color:var(--muted);font-weight:500}

/* Testimonials */
.testimonials-scroll{display:flex;gap:20px;overflow-x:auto;padding:8px 4px 16px;scroll-snap-type:x mandatory;-webkit-overflow-scrolling:touch}
.testimonials-scroll::-webkit-scrollbar{height:4px}
.testimonials-scroll::-webkit-scrollbar-thumb{background:var(--accent-light);border-radius:999px}
.testimonial-card{flex:0 0 340px;background:var(--bg-card);border-radius:var(--radius);padding:24px 26px;box-shadow:var(--shadow);scroll-snap-align:start;transition:var(--transition)}
.testimonial-card:hover{box-shadow:var(--shadow-hover)}
.testimonial-card .stars{color:var(--warning);font-size:16px;letter-spacing:2px;margin-bottom:10px}
.testimonial-card blockquote{font-size:15px;line-height:1.6;color:var(--primary);margin-bottom:14px;font-style:italic}
.testimonial-card .author{display:flex;align-items:center;gap:12px}
.testimonial-card .author .avatar{width:44px;height:44px;border-radius:50%;object-fit:cover;background:var(--surface)}
.testimonial-card .author .name{font-weight:600;font-size:14px}
.testimonial-card .author .role{font-size:13px;color:var(--muted)}

/* Newsletter */
.newsletter-wrap{background:linear-gradient(135deg,#1a1a2e 0%,#16213e 100%);border-radius:var(--radius);padding:48px 56px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:32px;flex-wrap:wrap;position:relative;overflow:hidden}
.newsletter-wrap::before{content:'';position:absolute;top:-50%;right:-10%;width:320px;height:320px;border-radius:50%;background:radial-gradient(circle,rgba(248,68,100,.35) 0%,transparent 70%);pointer-events:none}
.newsletter-wrap .text{position:relative;z-index:1}
.newsletter-wrap .text h3{font-size:26px;font-weight:700;margin-bottom:4px}
.newsletter-wrap .text p{opacity:.75;font-size:15px}
.newsletter-wrap form{display:flex;gap:10px;flex-wrap:wrap;flex:1;max-width:480px;position:relative;z-index:1}
.newsletter-wrap form input{flex:1;min-width:200px;padding:14px 20px;border-radius:var(--radius);border:0;font-size:15px;background:rgba(255,255,255,.12);color:#fff;transition:var(--transition);outline:2px solid transparent}
.newsletter-wrap form input::placeholder{color:rgba(255,255,255,.5)}
.newsletter-wrap form input:focus{outline-color:var(--accent);background:rgba(255,255,255,.18)}
.newsletter-wrap form .btn{background:var(--accent);color:#fff;border-color:var(--accent);padding:14px 32px}
.newsletter-wrap form .btn:hover{background:var(--accent-dark);border-color:var(--accent-dark)}
#newsletterMsg{margin-top:12px;font-size:14px;opacity:.9;width:100%}

/* Footer */
footer{margin-top:16px;padding:44px 0 28px;border-top:1px solid rgba(0,0,0,.06);background:#fff}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:32px}
.footer-grid .brand-col .brand{font-size:20px;margin-bottom:8px}
.footer-grid .brand-col p{color:var(--muted);font-size:14px;max-width:300px;line-height:1.6}
.footer-grid .brand-col .socials{display:flex;gap:10px;margin-top:14px}
.footer-grid .brand-col .socials a{width:40px;height:40px;border-radius:50%;background:var(--surface);display:grid;place-items:center;color:var(--muted);transition:var(--transition);font-size:16px}
.footer-grid .brand-col .socials a:hover{background:var(--accent);color:#fff}
.footer-grid .col h5{font-weight:700;font-size:14px;margin-bottom:12px;color:var(--primary)}
.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:6px}
.footer-grid .col ul li a{color:var(--muted);font-size:14px;transition:var(--transition)}
.footer-grid .col ul li a:hover{color:var(--accent)}
.footer-bottom{text-align:center;padding-top:20px;border-top:1px solid rgba(0,0,0,.06);color:var(--muted-light);font-size:13px}

/* Responsive */
@media(max-width:1200px){.movies-grid{grid-template-columns:repeat(3,1fr)}.footer-grid{grid-template-columns:1fr 1fr;gap:28px}}
@media(max-width:992px){.hero h1{font-size:36px}.hero{min-height:340px;margin:16px 16px 0;padding:40px 0}.newsletter-wrap{padding:32px 28px;flex-direction:column;text-align:center}.newsletter-wrap form{max-width:100%}.search-wrap{min-width:150px}}
@media(max-width:768px){nav.main-nav{display:none}.mobile-toggle{display:grid;place-items:center}.movies-grid{grid-template-columns:repeat(2,1fr);gap:14px}.locations-grid{grid-template-columns:repeat(2,1fr);gap:10px}.hero h1{font-size:28px}.hero p{font-size:15px}.section-header h2{font-size:22px}.footer-grid{grid-template-columns:1fr;gap:20px}.brand{font-size:18px}.brand i{font-size:20px}.search-wrap{min-width:120px;padding:0 10px 0 14px}.search-wrap input{font-size:13px;padding:8px 0}.header-actions .icon-btn{width:36px;height:36px;font-size:15px}.testimonial-card{flex:0 0 280px}.section{padding:32px 0}}
@media(max-width:480px){.movies-grid{grid-template-columns:1fr 1fr;gap:10px}.locations-grid{grid-template-columns:1fr 1fr;gap:8px}.hero{margin:10px 10px 0;min-height:280px;padding:28px 0}.hero h1{font-size:24px}.container{padding:0 14px}.newsletter-wrap{padding:24px 18px}.movie-card .body{padding:10px 10px 8px}.movie-card .body h5{font-size:13px}.movie-card .footer{padding:0 10px 10px}.movie-card .footer .book-btn{font-size:12px;padding:8px}.loc-card{padding:12px 10px;gap:8px}.loc-card .loc-icon{width:36px;height:36px;font-size:14px}.loc-card .loc-info h4{font-size:12px}.theater-card{padding:14px 16px}}
</style>
</head>
<body>

<!-- HEADER -->
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-ticket-alt"></i><span>Book<span class="accent">MyShow</span></span></a>
    </div>
    <nav class="main-nav" id="mainNav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-film"></i> Movies</a></li>
        <li><a href="#locations"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
        <li><a href="#theaters"><i class="fas fa-building"></i> Theaters</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search movies..." aria-label="Search" />
        <button id="searchBtn" aria-label="Submit search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <div class="ticket-wrap">
          <button class="icon-btn" id="ticketBtn" title="My Tickets" aria-label="My Tickets"><i class="fas fa-ticket-alt"></i></button>
          <span class="ticket-count" id="ticketCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-film"></i> Movies</a></li>
        <li><a href="#locations"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
        <li><a href="#theaters"><i class="fas fa-building"></i> Theaters</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        <li><a href="#"><i class="far fa-heart"></i> Wishlist</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- HERO -->
  <section class="hero" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-star"></i> Latest Telugu Releases 2026</div>
      <h1>Book Tickets for <br><span class="highlight">Telugu Blockbusters</span></h1>
      <p>Experience the best of Tollywood in theaters near you. Hyderabad, Visakhapatnam, Vijayawada, Guntur & more.</p>
      <div class="actions">
        <button class="btn btn-primary" id="browseMovies"><i class="fas fa-film"></i> Browse Movies</button>
        <button class="btn btn-ghost" id="exploreTheaters"><i class="fas fa-map-marker-alt"></i> Find Theaters</button>
      </div>
    </div>
  </section>

  <!-- LOCATIONS -->
  <section class="section" id="locations" aria-labelledby="loc-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="loc-title">Select Your City</h2>
          <p>Andhra Pradesh & Telangana locations</p>
        </div>
        <a href="#" class="view-all">All Cities <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="locations-grid" id="locationsGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- MOVIES -->
  <section class="section" id="movies" aria-labelledby="movie-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="movie-title">Now Showing — Telugu</h2>
          <p>Latest Tollywood releases in theaters</p>
        </div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="movies-grid" id="moviesGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- THEATERS -->
  <section class="section" id="theaters" aria-labelledby="th-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="th-title">Popular Theaters</h2>
          <p>Real cinemas across AP & Telangana</p>
        </div>
        <a href="#" class="view-all">All Theaters <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="theaters-grid" id="theatersGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- TESTIMONIALS -->
  <section class="section" id="testimonials" aria-labelledby="test-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="test-title">What Our Customers Say</h2>
          <p>Real reviews from movie lovers</p>
        </div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- NEWSLETTER -->
  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3 id="news-title">Never Miss a Release</h3>
          <p>Get alerts for new Telugu movies & exclusive offers</p>
        </div>
        <form id="newsletterForm" onsubmit="return false;">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required />
          <button class="btn" id="subscribeBtn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<!-- FOOTER -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-ticket-alt"></i><span>Book<span class="accent">MyShow</span></span></div>
        <p>India's largest movie ticketing platform. Book tickets for Telugu, Hindi, Tamil, English movies across AP & Telangana.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col">
        <h5>Company</h5>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
      </div>
      <div class="col">
        <h5>Support</h5>
        <ul>
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Cancellation</a></li>
          <li><a href="#">Refunds</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
      <div class="col">
        <h5>Legal</h5>
        <ul>
          <li><a href="#">Privacy Policy</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Cookies</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> BookMyShow Clone — Telugu Cinema Demo. All rights reserved.</div>
  </div>
</footer>

<script>
/* ===================== DATA ===================== */
const LOCATIONS = [
  { id:'hyd', name:'Hyderabad', count:48 },
  { id:'vzg', name:'Visakhapatnam', count:22 },
  { id:'vjw', name:'Vijayawada', count:18 },
  { id:'gnt', name:'Guntur', count:14 },
  { id:'nlr', name:'Nellore', count:10 },
  { id:'vzm', name:'Vizianagaram', count:8 },
  { id:'skm', name:'Srikakulam', count:6 },
  { id:'pvp', name:'Parvathipuram', count:4 },
  { id:'bbl', name:'Bobbili', count:3 },
  { id:'rjp', name:'Rajahmundry', count:9 },
  { id:'kkd', name:'Kakinada', count:7 },
  { id:'tpt', name:'Tirupati', count:11 },
  { id:'wgl', name:'Warangal', count:9 },
  { id:'nzb', name:'Nizamabad', count:5 },
  { id:'kmm', name:'Khammam', count:4 },
  { id:'krm', name:'Karimnagar', count:6 }
];

const MOVIES = [
  { id:1, title:'Pushpa 3: The Rampage', genre:'Action / Drama', lang:'Telugu', rating:9.2, votes:'128K',
    cert:'UA', duration:'2h 45m', img:'https://images.unsplash.com/photo-1594909122845-11baa439b7bf?auto=format&fit=crop&w=500&q=80', badge:'Blockbuster' },
  { id:2, title:'RRR: Rise of Revolution', genre:'Action / Epic', lang:'Telugu', rating:9.0, votes:'210K',
    cert:'UA', duration:'3h 00m', img:'https://images.unsplash.com/photo-1440404653325-ab127d49abc1?auto=format&fit=crop&w=500&q=80', badge:'Re-Release' },
  { id:3, title:'Kalki 2898 AD — Part 2', genre:'Sci-Fi / Mythological', lang:'Telugu', rating:9.5, votes:'340K',
    cert:'UA', duration:'2h 55m', img:'https://images.unsplash.com/photo-1478720568477-152d9b164e26?auto=format&fit=crop&w=500&q=80', badge:'Trending' },
  { id:4, title:'Baahubali: The Beginning', genre:'Fantasy / Action', lang:'Telugu', rating:9.1, votes:'180K',
    cert:'U', duration:'2h 40m', img:'https://images.unsplash.com/photo-1518676590629-3dcbd9c5a5c9?auto=format&fit=crop&w=500&q=80', badge:'Classic' },
  { id:5, title:'Salaar: Part 2', genre:'Action / Crime', lang:'Telugu', rating:8.8, votes:'156K',
    cert:'A', duration:'2h 50m', img:'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=500&q=80', badge:'New' },
  { id:6, title:'Devara: Part 2', genre:'Action / Drama', lang:'Telugu', rating:8.9, votes:'142K',
    cert:'UA', duration:'2h 48m', img:'https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=500&q=80', badge:'New' },
  { id:7, title:'Game Changer', genre:'Political / Thriller', lang:'Telugu', rating:8.7, votes:'98K',
    cert:'UA', duration:'2h 38m', img:'https://images.unsplash.com/photo-1574267432553-4b4628081c31?auto=format&fit=crop&w=500&q=80', badge:'Now Showing' },
  { id:8, title:'Hanuman: Jai Sri Ram', genre:'Devotional / Fantasy', lang:'Telugu', rating:9.3, votes:'220K',
    cert:'U', duration:'2h 30m', img:'https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=500&q=80', badge:'Family' }
];

const THEATERS = [
  { name:'Prasads Multiplex', city:'Hyderabad', addr:'NTR Marg, Khairatabad, Hyderabad', tags:['IMAX','Dolby Atmos','Recliner'] },
  { name:'AMB Cinemas', city:'Hyderabad', addr:'Gachibowli, Financial District, Hyderabad', tags:['4K Laser','Dolby 7.1'] },
  { name:'PVR Forum Mall', city:'Hyderabad', addr:'Kukatpally, Hyderabad', tags:['Dolby Atmos','Recliner'] },
  { name:'INOX GVK One', city:'Hyderabad', addr:'Banjara Hills, Hyderabad', tags:['4DX','Dolby'] },
  { name:'Cinepolis Nexus Mall', city:'Hyderabad', addr:'Kukatpally, Hyderabad', tags:['Dolby Atmos'] },
  { name:'Asian Cinemas — Mukta A2', city:'Visakhapatnam', addr:'Dwaraka Nagar, Visakhapatnam', tags:['Dolby Atmos','2K'] },
  { name:'INOX CMR Central', city:'Visakhapatnam', addr:'Maddilapalem, Visakhapatnam', tags:['Dolby 7.1'] },
  { name:'Jagadamba Theatre', city:'Visakhapatnam', addr:'Jagadamba Centre, Visakhapatnam', tags:['Single Screen','AC'] },
  { name:'Sri Kanya Theatre', city:'Visakhapatnam', addr:'Gajuwaka, Visakhapatnam', tags:['Single Screen'] },
  { name:'PVR Icon — Vijayawada', city:'Vijayawada', addr:'Benz Circle, Vijayawada', tags:['Dolby Atmos','Recliner'] },
  { name:'INOX — Trendset Mall', city:'Vijayawada', addr:'MG Road, Vijayawada', tags:['4K','Dolby'] },
  { name:'SVC — Vijayawada', city:'Vijayawada', addr:'Labbipet, Vijayawada', tags:['Dolby Atmos'] },
  { name:'Sri Venkateswara Theatre', city:'Guntur', addr:'Lakshmipuram, Guntur', tags:['Single Screen','AC'] },
  { name:'PVR — Guntur', city:'Guntur', addr:'Guntur City Centre, Guntur', tags:['Dolby'] },
  { name:'SVC — Nellore', city:'Nellore', addr:'Trunk Road, Nellore', tags:['Dolby Atmos'] },
  { name:'Sri Ranga Theatre', city:'Vizianagaram', addr:'Main Road, Vizianagaram', tags:['Single Screen'] },
  { name:'Sai Krishna Theatre', city:'Srikakulam', addr:'GT Road, Srikakulam', tags:['Single Screen','AC'] },
  { name:'Sri Rama Theatre', city:'Parvathipuram', addr:'Main Bazaar, Parvathipuram', tags:['Single Screen'] },
  { name:'Sri Venkateswara Talkies', city:'Bobbili', addr:'Bobbili Town, Vizianagaram Dist.', tags:['Single Screen'] },
  { name:'INOX — Rajahmundry', city:'Rajahmundry', addr:'Danavaipeta, Rajahmundry', tags:['Dolby'] },
  { name:'SVC — Kakinada', city:'Kakinada', addr:'Main Road, Kakinada', tags:['Dolby Atmos'] },
  { name:'PVR — Tirupati', city:'Tirupati', addr:'Renigunta Road, Tirupati', tags:['Dolby','Recliner'] },
  { name:'AMB — Warangal', city:'Warangal', addr:'Hanamkonda, Warangal', tags:['Dolby Atmos'] },
  { name:'INOX — Nizamabad', city:'Nizamabad', addr:'Khaleelwadi, Nizamabad', tags:['Dolby'] }
];

const TESTIMONIALS = [
  { name:'Ravi Teja', role:'Movie Buff, Hyderabad', stars:5, text:'Booked Pushpa 3 tickets at Prasads in seconds. The seat selection is smooth and the confirmation was instant!', avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80' },
  { name:'Sneha Reddy', role:'Regular Viewer, Vizag', stars:5, text:'Love that I can find all Vizag theaters in one place. Asian Cinemas and INOX both listed with real showtimes.', avatar:'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80' },
  { name:'Kiran Kumar', role:'Film Critic, Vijayawada', stars:4, text:'Great coverage of AP cities — even small towns like Bobbili and Parvathipuram are included. Very useful.', avatar:'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80' },
  { name:'Priya Sharma', role:'Student, Guntur', stars:5, text:'The Telugu movie collection is up to date with the latest releases. Booking for my family was super easy.', avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80' }
];

/* ===================== STATE ===================== */
let ticketCount = 0;

/* ===================== DOM ===================== */
const locationsGrid = document.getElementById('locationsGrid');
const moviesGrid = document.getElementById('moviesGrid');
const theatersGrid = document.getElementById('theatersGrid');
const testimonialsList = document.getElementById('testimonialsList');
const ticketCountEl = document.getElementById('ticketCount');
const searchInput = document.getElementById('searchInput');
const searchBtn = document.getElementById('searchBtn');
const mobileToggle = document.getElementById('mobileToggle');
const mobileMenu = document.getElementById('mobileMenu');
const newsletterForm = document.getElementById('newsletterForm');
const newsletterEmail = document.getElementById('newsletterEmail');
const newsletterMsg = document.getElementById('newsletterMsg');

/* ===================== UTILS ===================== */
function escapeHtml(t){return String(t).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));}
function updateTicketCount(){ticketCountEl.textContent=ticketCount;ticketCountEl.style.transform='scale(1.3)';setTimeout(()=>ticketCountEl.style.transform='scale(1)',200);}

/* ===================== RENDER ===================== */
function renderLocations(){
  locationsGrid.innerHTML='';
  LOCATIONS.forEach(loc=>{
    const el=document.createElement('div');
    el.className='loc-card';
    el.innerHTML=`
      <div class="loc-icon"><i class="fas fa-map-marker-alt"></i></div>
      <div class="loc-info">
        <h4>${escapeHtml(loc.name)}</h4>
        <div class="count">${loc.count} theaters</div>
      </div>`;
    el.addEventListener('click',()=>{
      searchInput.value=loc.name;
      filterMovies(loc.name);
      document.getElementById('movies').scrollIntoView({behavior:'smooth',block:'start'});
    });
    locationsGrid.appendChild(el);
  });
}

function renderMovies(list){
  moviesGrid.innerHTML='';
  if(!list.length){
    moviesGrid.innerHTML=`<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No movies found.</p>`;
    return;
  }
  list.forEach(m=>{
    const el=document.createElement('article');
    el.className='movie-card';
    const stars='★'.repeat(Math.round(m.rating/2))+'☆'.repeat(5-Math.round(m.rating/2));
    el.innerHTML=`
      <div class="img-wrap">
        <img src="${m.img}" alt="${escapeHtml(m.title)}" loading="lazy">
        ${m.badge?`<span class="badge">${escapeHtml(m.badge)}</span>`:''}
        <span class="badge rating"><i class="fas fa-star"></i> ${m.rating}</span>
        <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
      </div>
      <div class="body">
        <div class="genre-tag">${escapeHtml(m.genre)} • ${escapeHtml(m.lang)}</div>
        <h5>${escapeHtml(m.title)}</h5>
        <div class="meta"><i class="fas fa-clock"></i> ${m.duration} • ${m.cert}</div>
        <div class="rating">${stars} <span style="color:var(--muted);font-weight:400;">(${m.votes} votes)</span></div>
      </div>
      <div class="footer">
        <button class="book-btn" data-id="${m.id}"><i class="fas fa-ticket-alt"></i> Book Tickets</button>
      </div>`;
    moviesGrid.appendChild(el);
  });
  moviesGrid.querySelectorAll('.book-btn').forEach(btn=>{
    btn.addEventListener('click',function(e){
      e.stopPropagation();
      bookTicket(this);
    });
  });
  moviesGrid.querySelectorAll('.wish-btn').forEach(btn=>{
    btn.addEventListener('click',function(e){
      e.stopPropagation();
      const icon=this.querySelector('i');
      if(icon.classList.contains('far')){icon.classList.replace('far','fas');this.style.color='var(--accent)';}
      else{icon.classList.replace('fas','far');this.style.color='';}
    });
  });
}

function renderTheaters(){
  theatersGrid.innerHTML='';
  THEATERS.forEach(t=>{
    const el=document.createElement('div');
    el.className='theater-card';
    el.innerHTML=`
      <h4>${escapeHtml(t.name)}</h4>
      <div class="address"><i class="fas fa-map-marker-alt"></i><span>${escapeHtml(t.addr)}, ${escapeHtml(t.city)}</span></div>
      <div class="amenities">${t.tags.map(tag=>`<span>${escapeHtml(tag)}</span>`).join('')}</div>`;
    theatersGrid.appendChild(el);
  });
}

function renderTestimonials(){
  testimonialsList.innerHTML='';
  TESTIMONIALS.forEach(t=>{
    const stars='★'.repeat(t.stars)+'☆'.repeat(5-t.stars);
    const el=document.createElement('div');
    el.className='testimonial-card';
    el.innerHTML=`
      <div class="stars">${stars}</div>
      <blockquote>"${escapeHtml(t.text)}"</blockquote>
      <div class="author">
        <img class="avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
        <div>
          <div class="name">${escapeHtml(t.name)}</div>
          <div class="role">${escapeHtml(t.role)}</div>
        </div>
      </div>`;
    testimonialsList.appendChild(el);
  });
}

/* ===================== ACTIONS ===================== */
function bookTicket(btn){
  ticketCount++;
  updateTicketCount();
  const orig=btn.innerHTML;
  btn.innerHTML='<i class="fas fa-check"></i> Booked!';
  btn.style.background='var(--success)';
  setTimeout(()=>{btn.innerHTML=orig;btn.style.background='';},1600);
  const ticketBtn=document.getElementById('ticketBtn');
  ticketBtn.style.color='var(--accent)';
  setTimeout(()=>ticketBtn.style.color='',400);
}

function filterMovies(query){
  const q=String(query||'').trim().toLowerCase();
  if(!q){renderMovies(MOVIES);return;}
  const filtered=MOVIES.filter(m=>
    m.title.toLowerCase().includes(q)||
    m.genre.toLowerCase().includes(q)||
    m.lang.toLowerCase().includes(q)
  );
  renderMovies(filtered);
}

/* ===================== EVENTS ===================== */
searchBtn.addEventListener('click',()=>filterMovies(searchInput.value));
searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterMovies(e.target.value);});

mobileToggle.addEventListener('click',()=>{
  const isOpen=mobileMenu.style.display==='block';
  mobileMenu.style.display=isOpen?'none':'block';
  mobileToggle.innerHTML=isOpen?'<i class="fas fa-bars"></i>':'<i class="fas fa-times"></i>';
});
mobileMenu.querySelectorAll('a').forEach(link=>{
  link.addEventListener('click',()=>{
    mobileMenu.style.display='none';
    mobileToggle.innerHTML='<i class="fas fa-bars"></i>';
  });
});

document.getElementById('browseMovies').addEventListener('click',()=>{
  document.getElementById('movies').scrollIntoView({behavior:'smooth',block:'start'});
});
document.getElementById('exploreTheaters').addEventListener('click',()=>{
  document.getElementById('theaters').scrollIntoView({behavior:'smooth',block:'start'});
});

document.getElementById('ticketBtn').addEventListener('click',()=>{
  alert(`🎟️ You have ${ticketCount} ticket${ticketCount!==1?'s':''} booked.`);
});

newsletterForm.addEventListener('submit',e=>{
  e.preventDefault();
  const email=newsletterEmail.value.trim();
  if(!email||!email.includes('@')){
    newsletterMsg.textContent='Please enter a valid email address.';
    newsletterMsg.style.color='#ffb3b3';
    return;
  }
  newsletterMsg.textContent='🎉 Thanks for subscribing!';
  newsletterMsg.style.color='#a8e6cf';
  newsletterEmail.value='';
  setTimeout(()=>{newsletterMsg.textContent='';},3500);
});

document.getElementById('year').textContent=new Date().getFullYear();

window.addEventListener('resize',()=>{
  if(window.innerWidth>768){
    mobileMenu.style.display='none';
    mobileToggle.innerHTML='<i class="fas fa-bars"></i>';
  }
});

/* ===================== INIT ===================== */
renderLocations();
renderMovies(MOVIES);
renderTheaters();
renderTestimonials();
updateTicketCount();
console.log('🎬 BookMyShow Telugu demo loaded — '+MOVIES.length+' movies, '+THEATERS.length+' theaters, '+LOCATIONS.length+' cities.');
</script>
</body>
</html>
