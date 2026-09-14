<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
input,select{font-family:inherit}
.container{width:100%;max-width:var(--container);margin:0 auto;padding:0 24px}

.btn{display:inline-flex;align-items:center;justify-content:center;gap:8px;padding:12px 28px;border-radius:var(--radius);font-weight:600;font-size:15px;transition:var(--transition);border:2px solid transparent}
.btn-primary{background:var(--accent);color:#fff;border-color:var(--accent)}
.btn-primary:hover{background:var(--accent-dark);border-color:var(--accent-dark);transform:translateY(-2px);box-shadow:0 8px 24px rgba(248,68,100,.35)}
.btn-primary:disabled{opacity:.5;cursor:not-allowed;transform:none;box-shadow:none}
.btn-secondary{background:var(--primary);color:#fff;border-color:var(--primary)}
.btn-secondary:hover{background:var(--primary-light);transform:translateY(-2px)}
.btn-ghost{background:rgba(255,255,255,.15);color:#fff;border-color:rgba(255,255,255,.25)}
.btn-ghost:hover{background:rgba(255,255,255,.25);border-color:rgba(255,255,255,.4);transform:translateY(-2px)}
.btn-outline{background:transparent;color:var(--primary);border-color:rgba(51,53,69,.15)}
.btn-outline:hover{background:var(--primary);color:#fff;border-color:var(--primary)}
.btn-sm{padding:8px 16px;font-size:13px}

header{position:sticky;top:0;z-index:100;background:#fff;border-bottom:1px solid rgba(0,0,0,.06)}
.header-inner{display:flex;align-items:center;justify-content:space-between;gap:16px;padding:10px 0;min-height:64px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:22px;letter-spacing:-.5px;color:var(--primary);flex-shrink:0;cursor:pointer}
.brand .accent{color:var(--accent)}
.brand i{font-size:24px;color:var(--accent)}
nav.main-nav ul{display:flex;gap:4px;list-style:none;align-items:center}
nav.main-nav li a{display:flex;align-items:center;gap:6px;padding:8px 14px;border-radius:var(--radius-sm);font-weight:500;font-size:14px;color:var(--muted);transition:var(--transition);cursor:pointer}
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
.search-wrap button{padding:8px 0 8px 10px;color:var(--muted);font-size:15px}
.mobile-toggle{display:none;width:40px;height:40px;border-radius:50%;font-size:20px;background:var(--surface);color:var(--primary)}
#mobileMenu{display:none;background:#fff;border-top:1px solid rgba(0,0,0,.06);padding:12px 0 20px}
#mobileMenu ul{list-style:none;display:flex;flex-direction:column;gap:4px}
#mobileMenu ul li a{display:flex;align-items:center;gap:12px;padding:12px 16px;border-radius:var(--radius-sm);font-weight:500;color:var(--primary);cursor:pointer}
#mobileMenu ul li a:hover{background:var(--surface)}
#mobileMenu ul li a i{width:22px;color:var(--muted)}

.breadcrumb{display:flex;align-items:center;gap:8px;padding:14px 0;font-size:13px;color:var(--muted);flex-wrap:wrap}
.breadcrumb a{color:var(--accent);cursor:pointer;font-weight:600}
.breadcrumb a:hover{text-decoration:underline}
.breadcrumb i{font-size:10px;color:var(--muted-light)}
.breadcrumb .current{color:var(--primary);font-weight:600}

.hero{position:relative;display:flex;align-items:center;min-height:400px;padding:60px 0;border-radius:var(--radius);overflow:hidden;margin:20px 24px 0;background:linear-gradient(135deg,#1a1a2e 0%,#16213e 100%)}
.hero::before{content:'';position:absolute;inset:0;background:url('https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;opacity:.3;z-index:0}
.hero::after{content:'';position:absolute;inset:0;background:linear-gradient(135deg,rgba(26,26,46,.6) 0%,rgba(248,68,100,.25) 100%);z-index:0}
.hero .container{position:relative;z-index:1}
.hero .badge{display:inline-block;background:rgba(248,68,100,.2);color:#ffb3c1;padding:4px 16px;border-radius:999px;font-weight:600;font-size:13px;letter-spacing:.3px;margin-bottom:16px}
.hero h1{font-family:'Playfair Display',serif;font-size:46px;font-weight:700;color:#fff;line-height:1.15;max-width:640px;margin-bottom:16px}
.hero h1 .highlight{color:#ffb3c1}
.hero p{color:rgba(255,255,255,.85);font-size:17px;max-width:520px;margin-bottom:28px;line-height:1.6}
.hero .actions{display:flex;gap:12px;flex-wrap:wrap}

.section{padding:48px 0}
.section-header{display:flex;align-items:flex-end;justify-content:space-between;gap:16px;margin-bottom:28px;flex-wrap:wrap}
.section-header .title-group h2{font-size:26px;font-weight:700;letter-spacing:-.3px}
.section-header .title-group p{color:var(--muted);margin-top:4px;font-size:15px}
.section-header .view-all{font-weight:600;color:var(--accent);display:flex;align-items:center;gap:6px;font-size:14px;cursor:pointer}
.section-header .view-all:hover{gap:12px;color:var(--accent-dark)}
.clear-filter{display:inline-flex;align-items:center;gap:6px;background:var(--accent-light);color:var(--accent);padding:6px 14px;border-radius:999px;font-size:12px;font-weight:600;cursor:pointer;transition:var(--transition);margin-left:12px}
.clear-filter:hover{background:var(--accent);color:#fff}

.locations-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(200px,1fr));gap:12px}
.loc-card{background:var(--bg-card);border-radius:var(--radius);padding:18px 16px;box-shadow:var(--shadow);transition:var(--transition);cursor:pointer;border:2px solid transparent;display:flex;align-items:center;gap:12px;position:relative}
.loc-card:hover{transform:translateY(-4px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.loc-card.active{border-color:var(--accent);background:var(--accent-light)}
.loc-card .loc-icon{width:44px;height:44px;border-radius:50%;background:var(--accent-light);display:grid;place-items:center;font-size:18px;color:var(--accent);transition:var(--transition);flex-shrink:0}
.loc-card:hover .loc-icon,.loc-card.active .loc-icon{background:var(--accent);color:#fff}
.loc-card .loc-info h4{font-size:14px;font-weight:600;line-height:1.2}
.loc-card .loc-info .count{font-size:12px;color:var(--muted);margin-top:2px}
.loc-card .loc-info .playing{font-size:11px;color:var(--accent);font-weight:600;margin-top:2px}

.movies-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
.movie-card{background:var(--bg-card);border-radius:var(--radius);overflow:hidden;box-shadow:var(--shadow);transition:var(--transition);display:flex;flex-direction:column;border:2px solid transparent;cursor:pointer}
.movie-card:hover{transform:translateY(-6px);box-shadow:var(--shadow-hover);border-color:var(--accent-light)}
.movie-card .img-wrap{position:relative;overflow:hidden;background:#1a1a2e;aspect-ratio:2/3}
.movie-card .img-wrap img{width:100%;height:100%;object-fit:cover;transition:var(--transition)}
.movie-card:hover .img-wrap img{transform:scale(1.04)}
.movie-card .badge{position:absolute;top:10px;left:10px;background:var(--accent);color:#fff;padding:4px 10px;border-radius:999px;font-size:11px;font-weight:700}
.movie-card .badge.rating{background:var(--warning);color:var(--primary);left:auto;right:10px}
.movie-card .wish-btn{position:absolute;top:10px;right:10px;width:34px;height:34px;border-radius:50%;background:rgba(255,255,255,.9);display:grid;place-items:center;font-size:15px;color:var(--muted);transition:var(--transition)}
.movie-card .badge.rating ~ .wish-btn{top:48px}
.movie-card .wish-btn:hover{background:#fff;color:var(--accent);transform:scale(1.1)}
.movie-card .body{padding:14px 16px 12px;flex:1;display:flex;flex-direction:column;gap:4px}
.movie-card .body .genre-tag{font-size:11px;color:var(--muted-light);text-transform:uppercase;letter-spacing:.5px;font-weight:600}
.movie-card .body h5{font-size:16px;font-weight:600;line-height:1.3;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical;overflow:hidden}
.movie-card .body .meta{display:flex;align-items:center;gap:8px;font-size:13px;color:var(--muted);margin-top:2px}
.movie-card .body .rating{display:flex;align-items:center;gap:4px;font-size:13px;color:var(--warning);font-weight:600}
.movie-card .body .cities-line{font-size:12px;color:var(--accent);font-weight:600;margin-top:4px;display:flex;align-items:center;gap:4px}
.movie-card .footer{padding:0 16px 16px;display:flex;gap:8px}
.movie-card .footer .book-btn{flex:1;padding:10px;border-radius:var(--radius-sm);background:var(--accent);color:#fff;font-weight:600;font-size:14px;transition:var(--transition);display:flex;align-items:center;justify-content:center;gap:8px}
.movie-card .footer .book-btn:hover{background:var(--accent-dark);transform:scale(1.02)}

.theaters-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(340px,1fr));gap:16px}
.theater-card{background:var(--bg-card);border-radius:var(--radius);padding:18px 20px;box-shadow:var(--shadow);transition:var(--transition);border-left:4px solid var(--accent);cursor:pointer}
.theater-card:hover{box-shadow:var(--shadow-hover);transform:translateX(4px)}
.theater-card h4{font-size:16px;font-weight:600;margin-bottom:4px}
.theater-card .address{font-size:13px;color:var(--muted);line-height:1.4;display:flex;align-items:flex-start;gap:6px}
.theater-card .address i{color:var(--accent);margin-top:3px;font-size:12px}
.theater-card .amenities{display:flex;gap:8px;margin-top:10px;flex-wrap:wrap}
.theater-card .amenities span{font-size:11px;background:var(--surface);padding:3px 10px;border-radius:999px;color:var(--muted);font-weight:500}
.theater-card .now-playing{margin-top:12px;padding-top:12px;border-top:1px dashed rgba(0,0,0,.08)}
.theater-card .now-playing .label{font-size:11px;color:var(--muted);text-transform:uppercase;letter-spacing:.5px;font-weight:600;margin-bottom:6px}
.theater-card .now-playing .chips{display:flex;flex-wrap:wrap;gap:6px}
.theater-card .now-playing .chip{font-size:11px;background:var(--accent-light);color:var(--accent);padding:3px 10px;border-radius:999px;font-weight:600}
.theater-card .select-hint{margin-top:12px;font-size:13px;color:var(--accent);font-weight:600;display:flex;align-items:center;gap:6px}

.showtimes-wrap{display:flex;flex-wrap:wrap;gap:10px;margin-top:14px;padding-top:14px;border-top:1px dashed rgba(0,0,0,.1)}
.showtime-btn{padding:8px 16px;border-radius:var(--radius-sm);border:2px solid var(--accent);background:#fff;color:var(--accent);font-weight:600;font-size:13px;transition:var(--transition)}
.showtime-btn:hover{background:var(--accent);color:#fff}
.showtime-btn.selected{background:var(--accent);color:#fff}
.showtime-label{font-size:12px;color:var(--muted);text-transform:uppercase;letter-spacing:.5px;font-weight:600;width:100%;margin-bottom:4px}

.movie-pick-list{display:grid;grid-template-columns:1fr;gap:10px}
.movie-pick{display:flex;gap:14px;padding:12px;border-radius:var(--radius);border:2px solid var(--surface);cursor:pointer;transition:var(--transition);align-items:center}
.movie-pick:hover{border-color:var(--accent);background:var(--accent-light)}
.movie-pick img{width:60px;height:80px;object-fit:cover;border-radius:var(--radius-sm);flex-shrink:0}
.movie-pick .info{flex:1}
.movie-pick .info h5{font-size:15px;font-weight:600;margin-bottom:4px}
.movie-pick .info .meta{font-size:12px;color:var(--muted);margin-bottom:4px}
.movie-pick .info .rating{font-size:12px;color:var(--warning);font-weight:600}
.movie-pick .arrow{color:var(--accent);font-size:18px}

.city-pick-list{display:grid;grid-template-columns:repeat(auto-fill,minmax(160px,1fr));gap:10px}
.city-pick{padding:14px 16px;border-radius:var(--radius);border:2px solid var(--surface);cursor:pointer;transition:var(--transition);text-align:center}
.city-pick:hover{border-color:var(--accent);background:var(--accent-light)}
.city-pick h5{font-size:14px;font-weight:600;margin-bottom:2px}
.city-pick .count{font-size:12px;color:var(--muted)}

.modal-overlay{position:fixed;inset:0;background:rgba(0,0,0,.65);z-index:1000;display:none;align-items:center;justify-content:center;padding:20px;overflow-y:auto}
.modal-overlay.active{display:flex}
.modal{background:#fff;border-radius:var(--radius);max-width:900px;width:100%;max-height:92vh;overflow-y:auto;position:relative;box-shadow:0 20px 60px rgba(0,0,0,.4)}
.modal-header{position:sticky;top:0;background:#fff;padding:20px 24px;border-bottom:1px solid rgba(0,0,0,.08);display:flex;align-items:center;justify-content:space-between;z-index:10}
.modal-header h3{font-size:20px;font-weight:700}
.modal-header .subtitle{font-size:13px;color:var(--muted);margin-top:2px}
.modal-close{width:36px;height:36px;border-radius:50%;background:var(--surface);display:grid;place-items:center;font-size:16px;color:var(--muted);transition:var(--transition)}
.modal-close:hover{background:var(--accent-light);color:var(--accent)}
.modal-body{padding:24px}
.modal-footer{padding:16px 24px;border-top:1px solid rgba(0,0,0,.08);display:flex;align-items:center;justify-content:space-between;gap:16px;flex-wrap:wrap;position:sticky;bottom:0;background:#fff}

.screen-curve{width:80%;max-width:600px;height:8px;background:linear-gradient(to bottom,#c8ccd4,#e8ebf0);margin:0 auto 8px;border-radius:50% 50% 0 0/100% 100% 0 0;box-shadow:0 4px 12px rgba(0,0,0,.15)}
.screen-label{text-align:center;font-size:12px;color:var(--muted);letter-spacing:3px;font-weight:600;margin-bottom:32px}
.seat-map{display:flex;flex-direction:column;gap:8px;align-items:center;padding:20px 0}
.seat-row{display:flex;gap:6px;align-items:center}
.seat-row-label{width:24px;font-size:11px;color:var(--muted-light);font-weight:600;text-align:center;flex-shrink:0}
.seat{width:28px;height:28px;border-radius:5px;background:#e8ebf0;border:1px solid #d1d6de;font-size:10px;color:transparent;transition:var(--transition);cursor:pointer;flex-shrink:0}
.seat:hover:not(.booked):not(.selected){background:var(--accent-light);border-color:var(--accent)}
.seat.selected{background:var(--success);border-color:var(--success);color:#fff}
.seat.booked{background:#c8ccd4;cursor:not-allowed;border-color:#c8ccd4}
.seat.premium{background:#fff3e0;border-color:#ffcc80}
.seat.premium:hover:not(.booked):not(.selected){background:#ffe0b2;border-color:#ffb74d}
.seat.premium.selected{background:var(--success);border-color:var(--success)}
.seat-legend{display:flex;gap:20px;justify-content:center;flex-wrap:wrap;margin-top:24px;padding:16px;background:var(--surface);border-radius:var(--radius)}
.legend-item{display:flex;align-items:center;gap:8px;font-size:12px;color:var(--muted)}
.legend-box{width:20px;height:20px;border-radius:4px;border:1px solid #d1d6de}
.legend-box.available{background:#e8ebf0}
.legend-box.selected{background:var(--success);border-color:var(--success)}
.legend-box.booked{background:#c8ccd4;border-color:#c8ccd4}
.legend-box.premium{background:#fff3e0;border-color:#ffcc80}

.order-summary{display:flex;align-items:center;gap:24px;flex-wrap:wrap;flex:1}
.order-summary .item{display:flex;flex-direction:column;gap:2px}
.order-summary .item .label{font-size:11px;color:var(--muted);text-transform:uppercase;letter-spacing:.5px;font-weight:600}
.order-summary .item .value{font-size:15px;font-weight:700;color:var(--primary)}
.order-summary .item .value.accent{color:var(--accent)}

.form-group{margin-bottom:18px}
.form-group label{display:block;font-size:13px;font-weight:600;color:var(--primary);margin-bottom:6px}
.form-group input,.form-group select{width:100%;padding:12px 14px;border-radius:var(--radius-sm);border:2px solid var(--surface);background:#fff;font-size:14px;color:var(--primary);outline:none;transition:var(--transition)}
.form-group input:focus,.form-group select:focus{border-color:var(--accent);box-shadow:0 0 0 4px rgba(248,68,100,.1)}
.form-row{display:grid;grid-template-columns:1fr 1fr;gap:14px}
.payment-methods{display:grid;grid-template-columns:repeat(3,1fr);gap:10px;margin-bottom:20px}
.payment-method{padding:14px;border:2px solid var(--surface);border-radius:var(--radius-sm);text-align:center;cursor:pointer;transition:var(--transition);font-size:13px;font-weight:600;color:var(--muted)}
.payment-method:hover{border-color:var(--accent-light)}
.payment-method.active{border-color:var(--accent);background:var(--accent-light);color:var(--accent)}
.payment-method i{display:block;font-size:22px;margin-bottom:6px}

.confirmation{text-align:center;padding:40px 24px}
.confirmation .check-circle{width:80px;height:80px;border-radius:50%;background:var(--success);color:#fff;display:grid;place-items:center;font-size:38px;margin:0 auto 20px;animation:pop .4s ease}
@keyframes pop{0%{transform:scale(0)}50%{transform:scale(1.15)}100%{transform:scale(1)}}
.confirmation h2{font-size:26px;font-weight:700;margin-bottom:6px}
.confirmation .msg{color:var(--muted);margin-bottom:24px}
.ticket-stub{background:linear-gradient(135deg,#1a1a2e 0%,#16213e 100%);color:#fff;border-radius:var(--radius);padding:24px;max-width:520px;margin:0 auto;text-align:left;position:relative;overflow:hidden}
.ticket-stub::before,.ticket-stub::after{content:'';position:absolute;width:20px;height:20px;background:#fff;border-radius:50%;top:50%;transform:translateY(-50%)}
.ticket-stub::before{left:-10px}
.ticket-stub::after{right:-10px}
.ticket-stub .ticket-title{font-size:18px;font-weight:700;margin-bottom:4px}
.ticket-stub .ticket-meta{font-size:13px;opacity:.7;margin-bottom:16px}
.ticket-stub .ticket-row{display:flex;justify-content:space-between;padding:8px 0;border-bottom:1px dashed rgba(255,255,255,.15);font-size:13px}
.ticket-stub .ticket-row:last-child{border-bottom:none}
.ticket-stub .ticket-row .t-label{opacity:.7}
.ticket-stub .ticket-row .t-value{font-weight:600}
.confirmation .actions{margin-top:24px;display:flex;gap:12px;justify-content:center;flex-wrap:wrap}

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

.newsletter-wrap{background:linear-gradient(135deg,#1a1a2e 0%,#16213e 100%);border-radius:var(--radius);padding:48px 56px;color:#fff;display:flex;align-items:center;justify-content:space-between;gap:32px;flex-wrap:wrap;position:relative;overflow:hidden}
.newsletter-wrap::before{content:'';position:absolute;top:-50%;right:-10%;width:320px;height:320px;border-radius:50%;background:radial-gradient(circle,rgba(248,68,100,.35) 0%,transparent 70%);pointer-events:none}
.newsletter-wrap .text{position:relative;z-index:1}
.newsletter-wrap .text h3{font-size:26px;font-weight:700;margin-bottom:4px}
.newsletter-wrap .text p{opacity:.75;font-size:15px}
.newsletter-wrap form{display:flex;gap:10px;flex-wrap:wrap;flex:1;max-width:480px;position:relative;z-index:1}
.newsletter-wrap form input{flex:1;min-width:200px;padding:14px 20px;border-radius:var(--radius);border:0;font-size:15px;background:rgba(255,255,255,.12);color:#fff;outline:2px solid transparent}
.newsletter-wrap form input::placeholder{color:rgba(255,255,255,.5)}
.newsletter-wrap form input:focus{outline-color:var(--accent);background:rgba(255,255,255,.18)}
.newsletter-wrap form .btn{background:var(--accent);color:#fff;border-color:var(--accent);padding:14px 32px}
#newsletterMsg{margin-top:12px;font-size:14px;opacity:.9;width:100%}

footer{margin-top:16px;padding:44px 0 28px;border-top:1px solid rgba(0,0,0,.06);background:#fff}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;margin-bottom:32px}
.footer-grid .brand-col .brand{font-size:20px;margin-bottom:8px}
.footer-grid .brand-col p{color:var(--muted);font-size:14px;max-width:300px;line-height:1.6}
.footer-grid .brand-col .socials{display:flex;gap:10px;margin-top:14px}
.footer-grid .brand-col .socials a{width:40px;height:40px;border-radius:50%;background:var(--surface);display:grid;place-items:center;color:var(--muted);transition:var(--transition);font-size:16px}
.footer-grid .brand-col .socials a:hover{background:var(--accent);color:#fff}
.footer-grid .col h5{font-weight:700;font-size:14px;margin-bottom:12px;color:var(--primary)}
.footer-grid .col ul{list-style:none;display:flex;flex-direction:column;gap:6px}
.footer-grid .col ul li a{color:var(--muted);font-size:14px;cursor:pointer}
.footer-grid .col ul li a:hover{color:var(--accent)}
.footer-bottom{text-align:center;padding-top:20px;border-top:1px solid rgba(0,0,0,.06);color:var(--muted-light);font-size:13px}

.toast{position:fixed;bottom:30px;left:50%;transform:translateX(-50%) translateY(100px);background:var(--primary);color:#fff;padding:14px 24px;border-radius:var(--radius);font-size:14px;font-weight:500;box-shadow:0 8px 30px rgba(0,0,0,.3);opacity:0;transition:all .3s ease;z-index:2000;pointer-events:none}
.toast.show{transform:translateX(-50%) translateY(0);opacity:1}

@media(max-width:1200px){.movies-grid{grid-template-columns:repeat(3,1fr)}.footer-grid{grid-template-columns:1fr 1fr;gap:28px}}
@media(max-width:992px){.hero h1{font-size:36px}.hero{min-height:340px;margin:16px 16px 0;padding:40px 0}.newsletter-wrap{padding:32px 28px;flex-direction:column;text-align:center}.newsletter-wrap form{max-width:100%}.search-wrap{min-width:150px}.payment-methods{grid-template-columns:1fr 1fr}}
@media(max-width:768px){nav.main-nav{display:none}.mobile-toggle{display:grid;place-items:center}.movies-grid{grid-template-columns:repeat(2,1fr);gap:14px}.locations-grid{grid-template-columns:repeat(2,1fr);gap:10px}.hero h1{font-size:28px}.hero p{font-size:15px}.section-header h2{font-size:22px}.footer-grid{grid-template-columns:1fr;gap:20px}.brand{font-size:18px}.brand i{font-size:20px}.search-wrap{min-width:120px;padding:0 10px 0 14px}.search-wrap input{font-size:13px;padding:8px 0}.header-actions .icon-btn{width:36px;height:36px;font-size:15px}.testimonial-card{flex:0 0 280px}.section{padding:32px 0}.seat{width:22px;height:22px}.modal-body{padding:16px}.form-row{grid-template-columns:1fr}.payment-methods{grid-template-columns:1fr}.screen-curve{width:90%}}
@media(max-width:480px){.movies-grid{grid-template-columns:1fr 1fr;gap:10px}.locations-grid{grid-template-columns:1fr 1fr;gap:8px}.hero{margin:10px 10px 0;min-height:280px;padding:28px 0}.hero h1{font-size:24px}.container{padding:0 14px}.newsletter-wrap{padding:24px 18px}.movie-card .body{padding:10px 10px 8px}.movie-card .body h5{font-size:13px}.movie-card .footer{padding:0 10px 10px}.movie-card .footer .book-btn{font-size:12px;padding:8px}.loc-card{padding:12px 10px;gap:8px}.loc-card .loc-icon{width:36px;height:36px;font-size:14px}.loc-card .loc-info h4{font-size:12px}.seat{width:18px;height:18px;font-size:8px}.modal-footer{flex-direction:column;align-items:stretch}.order-summary{justify-content:space-between}}
</style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:12px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Toggle menu"><i class="fas fa-bars"></i></button>
      <div class="brand" onclick="goHome()"><i class="fas fa-ticket-alt"></i><span>Book<span class="accent">MyShow</span></span></div>
    </div>
    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a data-nav="movies" class="active"><i class="fas fa-film"></i> Movies</a></li>
        <li><a data-nav="locations"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
        <li><a data-nav="theaters"><i class="fas fa-building"></i> Theaters</a></li>
        <li><a data-nav="reviews"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap" role="search">
        <input type="search" id="searchInput" placeholder="Search movies..." aria-label="Search">
        <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <div class="ticket-wrap">
          <button class="icon-btn" id="ticketBtn" title="My Tickets"><i class="fas fa-ticket-alt"></i></button>
          <span class="ticket-count" id="ticketCount">0</span>
        </div>
      </div>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a data-nav="movies"><i class="fas fa-film"></i> Movies</a></li>
        <li><a data-nav="locations"><i class="fas fa-map-marker-alt"></i> Locations</a></li>
        <li><a data-nav="theaters"><i class="fas fa-building"></i> Theaters</a></li>
        <li><a data-nav="reviews"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <section class="hero" id="heroSection" aria-label="Hero banner">
    <div class="container">
      <div class="badge"><i class="fas fa-star"></i> Latest Telugu Releases 2026</div>
      <h1>Book Tickets for <br><span class="highlight">Telugu Blockbusters</span></h1>
      <p>Pick a movie or a city to begin. We'll guide you through theaters, showtimes, seats and payment.</p>
      <div class="actions">
        <button class="btn btn-primary" onclick="scrollToSection('movies')"><i class="fas fa-film"></i> Browse Movies</button>
        <button class="btn btn-ghost" onclick="scrollToSection('locations')"><i class="fas fa-map-marker-alt"></i> Pick a City</button>
      </div>
    </div>
  </section>

  <div class="container">
    <div class="breadcrumb" id="breadcrumb">
      <a onclick="goHome()"><i class="fas fa-home"></i> Home</a>
    </div>
  </div>

  <section class="section" id="locations" aria-labelledby="loc-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="loc-title">Select Your City</h2>
          <p id="loc-subtitle">Andhra Pradesh &amp; Telangana locations</p>
        </div>
      </div>
      <div class="locations-grid" id="locationsGrid"></div>
    </div>
  </section>

  <section class="section" id="movies" aria-labelledby="movie-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="movie-title">Now Showing - Telugu</h2>
          <p id="movie-subtitle">Latest Tollywood releases in theaters</p>
        </div>
      </div>
      <div class="movies-grid" id="moviesGrid"></div>
    </div>
  </section>

  <section class="section" id="theaters" aria-labelledby="th-title">
    <div class="container">
      <div class="section-header">
        <div class="title-group">
          <h2 id="th-title">Theaters</h2>
          <p id="theater-subtitle">Pick a city or a movie to see available theaters</p>
        </div>
      </div>
      <div class="theaters-grid" id="theatersGrid"></div>
    </div>
  </section>

  <section class="section" id="reviews" aria-labelledby="test-title">
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

  <section class="section" aria-labelledby="news-title">
    <div class="container">
      <div class="newsletter-wrap">
        <div class="text">
          <h3 id="news-title">Never Miss a Release</h3>
          <p>Get alerts for new Telugu movies &amp; exclusive offers</p>
        </div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Enter your email" aria-label="Email" required>
          <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-ticket-alt"></i><span>Book<span class="accent">MyShow</span></span></div>
        <p>India's largest movie ticketing platform. Book tickets for Telugu, Hindi, Tamil, English movies across AP &amp; Telangana.</p>
        <div class="socials">
          <a aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a>About Us</a></li><li><a>Careers</a></li><li><a>Press</a></li><li><a>Blog</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a>Help Center</a></li><li><a>Cancellation</a></li><li><a>Refunds</a></li><li><a>Contact</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a>Privacy Policy</a></li><li><a>Terms</a></li><li><a>Cookies</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> BookMyShow Clone - Telugu Cinema Demo. All rights reserved.</div>
  </div>
</footer>

<div class="modal-overlay" id="modalOverlay"><div class="modal" id="modalContent"></div></div>
<div class="toast" id="toast"></div>

<script>
/* ===================== DATA ===================== */
var LOCATIONS = [
  { id:'hyd', name:'Hyderabad', count:5 },
  { id:'vzg', name:'Visakhapatnam', count:4 },
  { id:'vjw', name:'Vijayawada', count:3 },
  { id:'gnt', name:'Guntur', count:2 },
  { id:'nlr', name:'Nellore', count:1 },
  { id:'vzm', name:'Vizianagaram', count:1 },
  { id:'skm', name:'Srikakulam', count:1 },
  { id:'pvp', name:'Parvathipuram', count:1 },
  { id:'bbl', name:'Bobbili', count:1 },
  { id:'rjp', name:'Rajahmundry', count:1 },
  { id:'kkd', name:'Kakinada', count:1 },
  { id:'tpt', name:'Tirupati', count:1 },
  { id:'wgl', name:'Warangal', count:1 },
  { id:'nzb', name:'Nizamabad', count:1 },
  { id:'kmm', name:'Khammam', count:0 },
  { id:'krm', name:'Karimnagar', count:0 }
];

var MOVIES = [
  { id:1, title:'Pushpa 3: The Rampage', genre:'Action / Drama', lang:'Telugu', rating:9.2, votes:'128K',
    cert:'UA', duration:'2h 45m', img:'https://images.unsplash.com/photo-1594909122845-11baa439b7bf?auto=format&fit=crop&w=500&q=80', badge:'Blockbuster',
    cities:['hyd','vzg','vjw','gnt','nlr','vzm','skm','pvp','bbl','rjp','kkd','tpt','wgl','nzb'] },
  { id:2, title:'RRR: Rise of Revolution', genre:'Action / Epic', lang:'Telugu', rating:9.0, votes:'210K',
    cert:'UA', duration:'3h 00m', img:'https://images.unsplash.com/photo-1440404653325-ab127d49abc1?auto=format&fit=crop&w=500&q=80', badge:'Re-Release',
    cities:['hyd','vzg','vjw','gnt','tpt','wgl'] },
  { id:3, title:'Kalki 2898 AD - Part 2', genre:'Sci-Fi / Mythological', lang:'Telugu', rating:9.5, votes:'340K',
    cert:'UA', duration:'2h 55m', img:'https://images.unsplash.com/photo-1478720568477-152d9b164e26?auto=format&fit=crop&w=500&q=80', badge:'Trending',
    cities:['hyd','vzg','vjw','gnt','nlr','tpt','wgl','rjp','kkd'] },
  { id:4, title:'Baahubali: The Beginning', genre:'Fantasy / Action', lang:'Telugu', rating:9.1, votes:'180K',
    cert:'U', duration:'2h 40m', img:'https://images.unsplash.com/photo-1518676590629-3dcbd9c5a5c9?auto=format&fit=crop&w=500&q=80', badge:'Classic',
    cities:['hyd','vzg','vjw','gnt','nlr','vzm','skm','pvp','bbl'] },
  { id:5, title:'Salaar: Part 2', genre:'Action / Crime', lang:'Telugu', rating:8.8, votes:'156K',
    cert:'A', duration:'2h 50m', img:'https://images.unsplash.com/photo-1536440136628-849c177e76a1?auto=format&fit=crop&w=500&q=80', badge:'New',
    cities:['hyd','vzg','vjw','gnt','tpt','wgl','nzb'] },
  { id:6, title:'Devara: Part 2', genre:'Action / Drama', lang:'Telugu', rating:8.9, votes:'142K',
    cert:'UA', duration:'2h 48m', img:'https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&w=500&q=80', badge:'New',
    cities:['hyd','vzg','vjw','gnt','nlr','rjp','kkd','tpt'] },
  { id:7, title:'Game Changer', genre:'Political / Thriller', lang:'Telugu', rating:8.7, votes:'98K',
    cert:'UA', duration:'2h 38m', img:'https://images.unsplash.com/photo-1574267432553-4b4628081c31?auto=format&fit=crop&w=500&q=80', badge:'Now Showing',
    cities:['hyd','vzg','vjw','gnt','wgl','nzb'] },
  { id:8, title:'Hanuman: Jai Sri Ram', genre:'Devotional / Fantasy', lang:'Telugu', rating:9.3, votes:'220K',
    cert:'U', duration:'2h 30m', img:'https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?auto=format&fit=crop&w=500&q=80', badge:'Family',
    cities:['hyd','vzg','vjw','gnt','nlr','vzm','skm','pvp','bbl','rjp','kkd','tpt'] }
];

var THEATERS = [
  { id:'t1', name:'Prasads Multiplex', city:'Hyderabad', cityId:'hyd', addr:'NTR Marg, Khairatabad, Hyderabad', tags:['IMAX','Dolby Atmos','Recliner'], price:250 },
  { id:'t2', name:'AMB Cinemas', city:'Hyderabad', cityId:'hyd', addr:'Gachibowli, Financial District, Hyderabad', tags:['4K Laser','Dolby 7.1'], price:300 },
  { id:'t3', name:'PVR Forum Mall', city:'Hyderabad', cityId:'hyd', addr:'Kukatpally, Hyderabad', tags:['Dolby Atmos','Recliner'], price:220 },
  { id:'t4', name:'INOX GVK One', city:'Hyderabad', cityId:'hyd', addr:'Banjara Hills, Hyderabad', tags:['4DX','Dolby'], price:280 },
  { id:'t5', name:'Cinepolis Nexus Mall', city:'Hyderabad', cityId:'hyd', addr:'Kukatpally, Hyderabad', tags:['Dolby Atmos'], price:200 },
  { id:'t6', name:'Asian Cinemas - Mukta A2', city:'Visakhapatnam', cityId:'vzg', addr:'Dwaraka Nagar, Visakhapatnam', tags:['Dolby Atmos','2K'], price:180 },
  { id:'t7', name:'INOX CMR Central', city:'Visakhapatnam', cityId:'vzg', addr:'Maddilapalem, Visakhapatnam', tags:['Dolby 7.1'], price:200 },
  { id:'t8', name:'Jagadamba Theatre', city:'Visakhapatnam', cityId:'vzg', addr:'Jagadamba Centre, Visakhapatnam', tags:['Single Screen','AC'], price:120 },
  { id:'t9', name:'Sri Kanya Theatre', city:'Visakhapatnam', cityId:'vzg', addr:'Gajuwaka, Visakhapatnam', tags:['Single Screen'], price:100 },
  { id:'t10', name:'PVR Icon - Vijayawada', city:'Vijayawada', cityId:'vjw', addr:'Benz Circle, Vijayawada', tags:['Dolby Atmos','Recliner'], price:220 },
  { id:'t11', name:'INOX - Trendset Mall', city:'Vijayawada', cityId:'vjw', addr:'MG Road, Vijayawada', tags:['4K','Dolby'], price:200 },
  { id:'t12', name:'SVC - Vijayawada', city:'Vijayawada', cityId:'vjw', addr:'Labbipet, Vijayawada', tags:['Dolby Atmos'], price:180 },
  { id:'t13', name:'Sri Venkateswara Theatre', city:'Guntur', cityId:'gnt', addr:'Lakshmipuram, Guntur', tags:['Single Screen','AC'], price:110 },
  { id:'t14', name:'PVR - Guntur', city:'Guntur', cityId:'gnt', addr:'Guntur City Centre, Guntur', tags:['Dolby'], price:180 },
  { id:'t15', name:'SVC - Nellore', city:'Nellore', cityId:'nlr', addr:'Trunk Road, Nellore', tags:['Dolby Atmos'], price:160 },
  { id:'t16', name:'Sri Ranga Theatre', city:'Vizianagaram', cityId:'vzm', addr:'Main Road, Vizianagaram', tags:['Single Screen'], price:90 },
  { id:'t17', name:'Sai Krishna Theatre', city:'Srikakulam', cityId:'skm', addr:'GT Road, Srikakulam', tags:['Single Screen','AC'], price:100 },
  { id:'t18', name:'Sri Rama Theatre', city:'Parvathipuram', cityId:'pvp', addr:'Main Bazaar, Parvathipuram', tags:['Single Screen'], price:80 },
  { id:'t19', name:'Sri Venkateswara Talkies', city:'Bobbili', cityId:'bbl', addr:'Bobbili Town, Vizianagaram Dist.', tags:['Single Screen'], price:80 },
  { id:'t20', name:'INOX - Rajahmundry', city:'Rajahmundry', cityId:'rjp', addr:'Danavaipeta, Rajahmundry', tags:['Dolby'], price:150 },
  { id:'t21', name:'SVC - Kakinada', city:'Kakinada', cityId:'kkd', addr:'Main Road, Kakinada', tags:['Dolby Atmos'], price:160 },
  { id:'t22', name:'PVR - Tirupati', city:'Tirupati', cityId:'tpt', addr:'Renigunta Road, Tirupati', tags:['Dolby','Recliner'], price:200 },
  { id:'t23', name:'AMB - Warangal', city:'Warangal', cityId:'wgl', addr:'Hanamkonda, Warangal', tags:['Dolby Atmos'], price:170 },
  { id:'t24', name:'INOX - Nizamabad', city:'Nizamabad', cityId:'nzb', addr:'Khaleelwadi, Nizamabad', tags:['Dolby'], price:150 }
];

var SHOWTIMES = ['10:30 AM','1:15 PM','4:00 PM','6:45 PM','9:30 PM'];

var TESTIMONIALS = [
  { name:'Ravi Teja', role:'Movie Buff, Hyderabad', stars:5, text:'Booked Pushpa 3 tickets at Prasads in seconds. The seat selection is smooth and the confirmation was instant!', avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80' },
  { name:'Sneha Reddy', role:'Regular Viewer, Vizag', stars:5, text:'Love that I can find all Vizag theaters in one place. Asian Cinemas and INOX both listed with real showtimes.', avatar:'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=80' },
  { name:'Kiran Kumar', role:'Film Critic, Vijayawada', stars:4, text:'Great coverage of AP cities - even small towns like Bobbili and Parvathipuram are included. Very useful.', avatar:'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=80&q=80' },
  { name:'Priya Sharma', role:'Student, Guntur', stars:5, text:'The Telugu movie collection is up to date with the latest releases. Booking for my family was super easy.', avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80' }
];

/* ===================== STATE ===================== */
var state = {
  selectedCity: null,
  selectedMovie: null,
  selectedTheater: null,
  selectedShowtime: null,
  selectedSeats: [],
  bookedSeats: {},
  ticketCount: 0,
  myTickets: []
};

/* ===================== DOM ===================== */
var locationsGrid = document.getElementById('locationsGrid');
var moviesGrid = document.getElementById('moviesGrid');
var theatersGrid = document.getElementById('theatersGrid');
var testimonialsList = document.getElementById('testimonialsList');
var ticketCountEl = document.getElementById('ticketCount');
var searchInput = document.getElementById('searchInput');
var searchBtn = document.getElementById('searchBtn');
var mobileToggle = document.getElementById('mobileToggle');
var mobileMenu = document.getElementById('mobileMenu');
var newsletterForm = document.getElementById('newsletterForm');
var newsletterEmail = document.getElementById('newsletterEmail');
var newsletterMsg = document.getElementById('newsletterMsg');
var breadcrumb = document.getElementById('breadcrumb');
var modalOverlay = document.getElementById('modalOverlay');
var modalContent = document.getElementById('modalContent');
var toastEl = document.getElementById('toast');

/* ===================== UTILS ===================== */
function escapeHtml(t){
  return String(t).replace(/[&<>"']/g, function(s){
    return {'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s];
  });
}
function scrollToSection(id){
  var el = document.getElementById(id);
  if(el) el.scrollIntoView({behavior:'smooth', block:'start'});
}
function goHome(){
  state.selectedCity = null;
  state.selectedMovie = null;
  state.selectedTheater = null;
  state.selectedShowtime = null;
  state.selectedSeats = [];
  renderLocations();
  renderMovies(MOVIES);
  renderTheaters(THEATERS);
  updateBreadcrumb();
  document.getElementById('loc-subtitle').textContent = 'Andhra Pradesh & Telangana locations';
  document.getElementById('movie-subtitle').textContent = 'Latest Tollywood releases in theaters';
  document.getElementById('theater-subtitle').textContent = 'Pick a city or a movie to see available theaters';
  document.getElementById('heroSection').style.display = '';
  scrollToSection('movies');
}
function showToast(msg){
  toastEl.textContent = msg;
  toastEl.classList.add('show');
  clearTimeout(toastEl._t);
  toastEl._t = setTimeout(function(){ toastEl.classList.remove('show'); }, 2400);
}
function updateTicketCount(){
  ticketCountEl.textContent = state.ticketCount;
  ticketCountEl.style.transform = 'scale(1.3)';
  setTimeout(function(){ ticketCountEl.style.transform = 'scale(1)'; }, 200);
}
function updateBreadcrumb(){
  var html = '<a onclick="goHome()"><i class="fas fa-home"></i> Home</a>';
  if(state.selectedCity){
    html += '<i class="fas fa-chevron-right"></i>';
    if(state.selectedMovie || state.selectedTheater){
      html += '<a onclick="jumpToCity()">' + escapeHtml(state.selectedCity.name) + '</a>';
    } else {
      html += '<span class="current">' + escapeHtml(state.selectedCity.name) + '</span>';
    }
  }
  if(state.selectedMovie){
    html += '<i class="fas fa-chevron-right"></i>';
    if(state.selectedTheater){
      html += '<a onclick="jumpToMovie()">' + escapeHtml(state.selectedMovie.title) + '</a>';
    } else {
      html += '<span class="current">' + escapeHtml(state.selectedMovie.title) + '</span>';
    }
  }
  if(state.selectedTheater){
    html += '<i class="fas fa-chevron-right"></i><span class="current">' + escapeHtml(state.selectedTheater.name) + '</span>';
  }
  breadcrumb.innerHTML = html;
}

/* ===================== HELPERS: movies playing at theater / cities for movie ===================== */
function moviesAtTheater(theater){
  // A movie is playing at a theater if the theater's city is in the movie's cities list
  return MOVIES.filter(function(m){ return m.cities.indexOf(theater.cityId) !== -1; });
}
function citiesForMovie(movie){
  return LOCATIONS.filter(function(loc){ return movie.cities.indexOf(loc.id) !== -1; });
}
function theatersForMovieInCity(movie, cityId){
  return THEATERS.filter(function(t){
    return t.cityId === cityId && movie.cities.indexOf(cityId) !== -1;
  });
}

/* ===================== RENDER: LOCATIONS ===================== */
function renderLocations(){
  locationsGrid.innerHTML = '';
  LOCATIONS.forEach(function(loc){
    // Count how many movies are playing in this city
    var playingHere = MOVIES.filter(function(m){ return m.cities.indexOf(loc.id) !== -1; }).length;
    var el = document.createElement('div');
    el.className = 'loc-card' + (state.selectedCity && state.selectedCity.id === loc.id ? ' active' : '');
    el.innerHTML =
      '<div class="loc-icon"><i class="fas fa-map-marker-alt"></i></div>' +
      '<div class="loc-info">' +
        '<h4>' + escapeHtml(loc.name) + '</h4>' +
        '<div class="count">' + loc.count + ' theaters</div>' +
        (playingHere ? '<div class="playing">' + playingHere + ' movies playing</div>' : '') +
      '</div>';
    el.addEventListener('click', function(){ selectCity(loc); });
    locationsGrid.appendChild(el);
  });
}
function selectCity(loc){
  state.selectedCity = loc;
  state.selectedTheater = null;
  state.selectedShowtime = null;
  state.selectedSeats = [];
  // If a movie is already selected, filter theaters to that movie in this city
  // Otherwise show all theaters in the city
  var cityTheaters = THEATERS.filter(function(t){ return t.cityId === loc.id; });
  if(state.selectedMovie){
    cityTheaters = cityTheaters.filter(function(t){
      return state.selectedMovie.cities.indexOf(loc.id) !== -1;
    });
    document.getElementById('theater-subtitle').textContent =
      'Theaters showing ' + state.selectedMovie.title + ' in ' + loc.name;
  } else {
    document.getElementById('theater-subtitle').textContent = cityTheaters.length + ' theaters in ' + loc.name;
  }
  renderLocations();
  renderTheaters(cityTheaters);
  updateBreadcrumb();
  showToast('Showing theaters in ' + loc.name);
  scrollToSection('theaters');
}
function jumpToCity(){
  // Navigate back to just the city view
  if(state.selectedCity){
    state.selectedMovie = null;
    state.selectedTheater = null;
    state.selectedShowtime = null;
    state.selectedSeats = [];
    var cityTheaters = THEATERS.filter(function(t){ return t.cityId === state.selectedCity.id; });
    renderMovies(MOVIES);
    renderTheaters(cityTheaters);
    document.getElementById('movie-subtitle').textContent = 'Latest Tollywood releases in theaters';
    document.getElementById('theater-subtitle').textContent = cityTheaters.length + ' theaters in ' + state.selectedCity.name;
    updateBreadcrumb();
    scrollToSection('theaters');
  }
}
function jumpToMovie(){
  // Navigate back to the movie view (cities playing this movie)
  if(state.selectedMovie){
    state.selectedTheater = null;
    state.selectedShowtime = null;
    state.selectedSeats = [];
    openCitiesForMovieModal(state.selectedMovie);
    updateBreadcrumb();
  }
}

/* ===================== RENDER: MOVIES ===================== */
function renderMovies(list){
  moviesGrid.innerHTML = '';
  if(!list.length){
    moviesGrid.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No movies found.</p>';
    return;
  }
  list.forEach(function(m){
    var el = document.createElement('article');
    el.className = 'movie-card';
    var fullStars = Math.round(m.rating / 2);
    var stars = '';
    for(var i=0;i<fullStars;i++) stars += '&#9733;';
    for(var j=fullStars;j<5;j++) stars += '&#9734;';
    var badgeHtml = m.badge ? '<span class="badge">' + escapeHtml(m.badge) + '</span>' : '';
    var cityCount = m.cities.length;
    el.innerHTML =
      '<div class="img-wrap">' +
        '<img src="' + m.img + '" alt="' + escapeHtml(m.title) + '" loading="lazy">' +
        badgeHtml +
        '<span class="badge rating"><i class="fas fa-star"></i> ' + m.rating + '</span>' +
        '<button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>' +
      '</div>' +
      '<div class="body">' +
        '<div class="genre-tag">' + escapeHtml(m.genre) + ' / ' + escapeHtml(m.lang) + '</div>' +
        '<h5>' + escapeHtml(m.title) + '</h5>' +
        '<div class="meta"><i class="fas fa-clock"></i> ' + m.duration + ' / ' + m.cert + '</div>' +
        '<div class="rating">' + stars + ' <span style="color:var(--muted);font-weight:400;">(' + m.votes + ' votes)</span></div>' +
        '<div class="cities-line"><i class="fas fa-map-marker-alt"></i> Playing in ' + cityCount + ' cities</div>' +
      '</div>' +
      '<div class="footer">' +
        '<button class="book-btn" data-id="' + m.id + '"><i class="fas fa-ticket-alt"></i> Book Tickets</button>' +
      '</div>';
    moviesGrid.appendChild(el);
  });
  moviesGrid.querySelectorAll('.book-btn').forEach(function(btn){
    btn.addEventListener('click', function(e){
      e.stopPropagation();
      var movieId = parseInt(this.dataset.id, 10);
      var movie = MOVIES.filter(function(m){ return m.id === movieId; })[0];
      if(movie) selectMovie(movie);
    });
  });
  moviesGrid.querySelectorAll('.wish-btn').forEach(function(btn){
    btn.addEventListener('click', function(e){
      e.stopPropagation();
      var icon = this.querySelector('i');
      if(icon.classList.contains('far')){
        icon.classList.replace('far','fas');
        this.style.color = 'var(--accent)';
        showToast('Added to wishlist');
      } else {
        icon.classList.replace('fas','far');
        this.style.color = '';
        showToast('Removed from wishlist');
      }
    });
  });
}
function selectMovie(movie){
  state.selectedMovie = movie;
  state.selectedTheater = null;
  state.selectedShowtime = null;
  state.selectedSeats = [];
  updateBreadcrumb();
  // Show modal with all cities playing this movie
  openCitiesForMovieModal(movie);
}

/* ===================== MODAL: CITIES PLAYING A MOVIE ===================== */
function openCitiesForMovieModal(movie){
  var cities = citiesForMovie(movie);
  var html =
    '<div class="modal-header">' +
      '<div>' +
        '<h3>Where is "' + escapeHtml(movie.title) + '" playing?</h3>' +
        '<div class="subtitle">Pick a city to see theaters and showtimes</div>' +
      '</div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      '<div class="movie-pick" style="cursor:default;border-color:var(--accent-light);background:var(--accent-light);">' +
        '<img src="' + movie.img + '" alt="' + escapeHtml(movie.title) + '">' +
        '<div class="info">' +
          '<h5>' + escapeHtml(movie.title) + '</h5>' +
          '<div class="meta">' + escapeHtml(movie.genre) + ' / ' + movie.duration + ' / ' + movie.cert + '</div>' +
          '<div class="rating"><i class="fas fa-star"></i> ' + movie.rating + ' (' + movie.votes + ')</div>' +
        '</div>' +
      '</div>' +
      '<h4 style="margin:20px 0 12px;font-size:15px;">Available in ' + cities.length + ' cities</h4>' +
      '<div class="city-pick-list">' +
        cities.map(function(c){
          var theaterCount = theatersForMovieInCity(movie, c.id).length;
          return '<div class="city-pick" onclick="pickCityForMovie(\'' + c.id + '\')">' +
            '<h5>' + escapeHtml(c.name) + '</h5>' +
            '<div class="count">' + theaterCount + ' theaters</div>' +
          '</div>';
        }).join('') +
      '</div>' +
    '</div>';
  modalContent.innerHTML = html;
  modalOverlay.classList.add('active');
}
function pickCityForMovie(cityId){
  var city = LOCATIONS.filter(function(l){ return l.id === cityId; })[0];
  if(!city) return;
  state.selectedCity = city;
  var theaters = theatersForMovieInCity(state.selectedMovie, cityId);
  closeModal();
  renderLocations();
  renderTheaters(theaters);
  document.getElementById('theater-subtitle').textContent =
    'Theaters showing ' + state.selectedMovie.title + ' in ' + city.name;
  updateBreadcrumb();
  showToast('Found ' + theaters.length + ' theaters in ' + city.name);
  scrollToSection('theaters');
}

/* ===================== RENDER: THEATERS ===================== */
function renderTheaters(list){
  theatersGrid.innerHTML = '';
  if(!list.length){
    theatersGrid.innerHTML = '<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--muted);">No theaters found. Try a different city or movie.</p>';
    return;
  }
  list.forEach(function(t){
    var el = document.createElement('div');
    el.className = 'theater-card';
    var tagHtml = t.tags.map(function(tag){
      return '<span>' + escapeHtml(tag) + '</span>';
    }).join('');
    // Movies playing at this theater (from theater's city)
    var playingHere = moviesAtTheater(t);
    // If a movie is selected, highlight it
    var chipsHtml = playingHere.slice(0, 4).map(function(m){
      var isSelected = state.selectedMovie && state.selectedMovie.id === m.id;
      return '<span class="chip" style="' + (isSelected ? 'background:var(--accent);color:#fff;' : '') + '">' + escapeHtml(m.title) + '</span>';
    }).join('');
    if(playingHere.length > 4) chipsHtml += '<span class="chip">+' + (playingHere.length - 4) + ' more</span>';
    el.innerHTML =
      '<h4>' + escapeHtml(t.name) + '</h4>' +
      '<div class="address"><i class="fas fa-map-marker-alt"></i><span>' + escapeHtml(t.addr) + '</span></div>' +
      '<div class="amenities">' + tagHtml + '</div>' +
      '<div class="now-playing">' +
        '<div class="label"><i class="fas fa-film"></i> Now Playing (' + playingHere.length + ')</div>' +
        '<div class="chips">' + chipsHtml + '</div>' +
      '</div>' +
      '<div class="select-hint"><i class="fas fa-arrow-right"></i> Tap to view showtimes</div>';
    el.addEventListener('click', function(){ selectTheater(t); });
    theatersGrid.appendChild(el);
  });
}
function selectTheater(theater){
  state.selectedTheater = theater;
  state.selectedShowtime = null;
  state.selectedSeats = [];
  updateBreadcrumb();
  // If a movie is already selected, go straight to showtimes.
  // Otherwise, show the movie picker for this theater.
  if(state.selectedMovie){
    openShowtimeModal(theater, state.selectedMovie);
  } else {
    openMoviePickerModal(theater);
  }
}

/* ===================== MODAL: PICK MOVIE AT THEATER ===================== */
function openMoviePickerModal(theater){
  var playingHere = moviesAtTheater(theater);
  var html =
    '<div class="modal-header">' +
      '<div>' +
        '<h3>' + escapeHtml(theater.name) + '</h3>' +
        '<div class="subtitle">' + escapeHtml(theater.addr) + '</div>' +
      '</div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      '<h4 style="margin-bottom:12px;font-size:15px;">Now playing here - pick a movie</h4>' +
      '<div class="movie-pick-list">' +
        playingHere.map(function(m){
          return '<div class="movie-pick" onclick="pickMovieAtTheater(' + m.id + ')">' +
            '<img src="' + m.img + '" alt="' + escapeHtml(m.title) + '">' +
            '<div class="info">' +
              '<h5>' + escapeHtml(m.title) + '</h5>' +
              '<div class="meta">' + escapeHtml(m.genre) + ' / ' + m.duration + ' / ' + m.cert + '</div>' +
              '<div class="rating"><i class="fas fa-star"></i> ' + m.rating + ' (' + m.votes + ' votes)</div>' +
            '</div>' +
            '<div class="arrow"><i class="fas fa-chevron-right"></i></div>' +
          '</div>';
        }).join('') +
      '</div>' +
    '</div>';
  modalContent.innerHTML = html;
  modalOverlay.classList.add('active');
}
function pickMovieAtTheater(movieId){
  var movie = MOVIES.filter(function(m){ return m.id === movieId; })[0];
  if(!movie) return;
  state.selectedMovie = movie;
  updateBreadcrumb();
  openShowtimeModal(state.selectedTheater, movie);
}

/* ===================== MODAL: SHOWTIMES ===================== */
function openShowtimeModal(theater, movie){
  var html =
    '<div class="modal-header">' +
      '<div>' +
        '<h3>' + escapeHtml(movie.title) + '</h3>' +
        '<div class="subtitle">' + escapeHtml(theater.name) + ' - ' + escapeHtml(theater.city) + '</div>' +
      '</div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      '<div class="movie-pick" style="cursor:default;border-color:var(--accent-light);background:var(--accent-light);margin-bottom:20px;">' +
        '<img src="' + movie.img + '" alt="' + escapeHtml(movie.title) + '">' +
        '<div class="info">' +
          '<h5>' + escapeHtml(movie.title) + '</h5>' +
          '<div class="meta">' + escapeHtml(movie.genre) + ' / ' + movie.duration + ' / ' + movie.cert + '</div>' +
          '<div class="rating"><i class="fas fa-star"></i> ' + movie.rating + ' (' + movie.votes + ')</div>' +
        '</div>' +
      '</div>' +
      '<p style="color:var(--muted);font-size:13px;margin-bottom:12px;">Base price: <strong style="color:var(--accent);">Rs ' + theater.price + '</strong> per seat</p>' +
      '<div class="showtimes-wrap">' +
        '<div class="showtime-label">Today - ' + new Date().toDateString() + '</div>' +
        SHOWTIMES.map(function(st){
          return '<button class="showtime-btn" onclick="selectShowtime(\'' + st.replace(/'/g,"\\'") + '\')">' + st + '</button>';
        }).join('') +
      '</div>' +
    '</div>';
  modalContent.innerHTML = html;
  modalOverlay.classList.add('active');
}
function selectShowtime(showtime){
  state.selectedShowtime = showtime;
  state.selectedSeats = [];
  updateBreadcrumb();
  openSeatModal();
}

/* ===================== SEAT SELECTION ===================== */
function generateBookedSeats(theaterId, showtime){
  var key = theaterId + '|' + showtime;
  if(state.bookedSeats[key]) return state.bookedSeats[key];
  var seats = [];
  var hash = 0;
  for(var i=0; i<key.length; i++) hash = ((hash<<5) - hash + key.charCodeAt(i)) | 0;
  var totalRows = 8, cols = 14;
  for(var r=0; r<totalRows; r++){
    for(var c=0; c<cols; c++){
      var seed = Math.abs(hash + r*31 + c*17);
      if(seed % 5 === 0) seats.push(String.fromCharCode(65+r) + (c+1));
    }
  }
  state.bookedSeats[key] = seats;
  return seats;
}
function openSeatModal(){
  var theater = state.selectedTheater;
  var movie = state.selectedMovie || { title:'Now Showing', img:'' };
  var showtime = state.selectedShowtime;
  var booked = generateBookedSeats(theater.id, showtime);
  var rows = ['A','B','C','D','E','F','G','H'];
  var cols = 14;

  var seatMapHtml = '';
  rows.forEach(function(rowLetter, rowIdx){
    var isPremium = rowIdx >= 6;
    var rowHtml = '<div class="seat-row">' +
      '<div class="seat-row-label">' + rowLetter + '</div>';
    for(var c=1; c<=cols; c++){
      var seatId = rowLetter + c;
      var isBooked = booked.indexOf(seatId) !== -1;
      var cls = 'seat';
      if(isPremium) cls += ' premium';
      if(isBooked) cls += ' booked';
      var title = seatId + (isBooked ? ' (Booked)' : isPremium ? ' (Premium)' : '');
      rowHtml += '<button class="' + cls + '" data-seat="' + seatId + '" data-premium="' + (isPremium?'1':'0') + '" title="' + title + '"' + (isBooked?' disabled':'') + '>' + c + '</button>';
    }
    rowHtml += '</div>';
    seatMapHtml += rowHtml;
  });

  var html =
    '<div class="modal-header">' +
      '<div>' +
        '<h3>' + escapeHtml(movie.title) + '</h3>' +
        '<div class="subtitle">' + escapeHtml(theater.name) + ' - ' + escapeHtml(showtime) + '</div>' +
      '</div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      '<div class="screen-curve"></div>' +
      '<div class="screen-label">SCREEN THIS WAY</div>' +
      '<div class="seat-map" id="seatMap">' + seatMapHtml + '</div>' +
      '<div class="seat-legend">' +
        '<div class="legend-item"><div class="legend-box available"></div> Available</div>' +
        '<div class="legend-item"><div class="legend-box selected"></div> Selected</div>' +
        '<div class="legend-item"><div class="legend-box booked"></div> Booked</div>' +
        '<div class="legend-item"><div class="legend-box premium"></div> Premium (Rs ' + (theater.price + 80) + ')</div>' +
      '</div>' +
    '</div>' +
    '<div class="modal-footer">' +
      '<div class="order-summary">' +
        '<div class="item"><div class="label">Seats</div><div class="value" id="summarySeats">-</div></div>' +
        '<div class="item"><div class="label">Qty</div><div class="value" id="summaryQty">0</div></div>' +
        '<div class="item"><div class="label">Total</div><div class="value accent" id="summaryTotal">Rs 0</div></div>' +
      '</div>' +
      '<button class="btn btn-primary" id="proceedBtn" disabled onclick="proceedToPayment()"><i class="fas fa-arrow-right"></i> Proceed</button>' +
    '</div>';
  modalContent.innerHTML = html;

  modalContent.querySelectorAll('.seat').forEach(function(seatBtn){
    seatBtn.addEventListener('click', function(){
      var seatId = this.dataset.seat;
      var idx = state.selectedSeats.indexOf(seatId);
      if(idx === -1){
        if(state.selectedSeats.length >= 10){
          showToast('You can select up to 10 seats');
          return;
        }
        state.selectedSeats.push(seatId);
        this.classList.add('selected');
      } else {
        state.selectedSeats.splice(idx, 1);
        this.classList.remove('selected');
      }
      updateSeatSummary();
    });
  });
}
function updateSeatSummary(){
  var theater = state.selectedTheater;
  var qty = state.selectedSeats.length;
  var total = 0;
  state.selectedSeats.forEach(function(seatId){
    var rowLetter = seatId.charAt(0);
    var isPremium = ['G','H'].indexOf(rowLetter) !== -1;
    total += theater.price + (isPremium ? 80 : 0);
  });
  var seatsEl = document.getElementById('summarySeats');
  var qtyEl = document.getElementById('summaryQty');
  var totalEl = document.getElementById('summaryTotal');
  var proceedBtn = document.getElementById('proceedBtn');
  if(seatsEl) seatsEl.textContent = qty > 0 ? state.selectedSeats.join(', ') : '-';
  if(qtyEl) qtyEl.textContent = qty;
  if(totalEl) totalEl.textContent = 'Rs ' + total;
  if(proceedBtn) proceedBtn.disabled = qty === 0;
}

/* ===================== PAYMENT ===================== */
function proceedToPayment(){
  var theater = state.selectedTheater;
  var movie = state.selectedMovie || { title:'Now Showing' };
  var showtime = state.selectedShowtime;
  var qty = state.selectedSeats.length;
  var total = 0;
  state.selectedSeats.forEach(function(seatId){
    var isPremium = ['G','H'].indexOf(seatId.charAt(0)) !== -1;
    total += theater.price + (isPremium ? 80 : 0);
  });
  var convenienceFee = Math.round(total * 0.05);
  var grandTotal = total + convenienceFee;

  var html =
    '<div class="modal-header">' +
      '<div>' +
        '<h3>Payment</h3>' +
        '<div class="subtitle">' + escapeHtml(movie.title) + ' - ' + escapeHtml(theater.name) + '</div>' +
      '</div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      '<div style="background:var(--surface);padding:16px;border-radius:var(--radius);margin-bottom:20px;">' +
        '<div style="display:flex;justify-content:space-between;font-size:14px;padding:4px 0;"><span>Seats (' + qty + ')</span><span>' + escapeHtml(state.selectedSeats.join(', ')) + '</span></div>' +
        '<div style="display:flex;justify-content:space-between;font-size:14px;padding:4px 0;"><span>Showtime</span><span>' + escapeHtml(showtime) + '</span></div>' +
        '<div style="display:flex;justify-content:space-between;font-size:14px;padding:4px 0;"><span>Tickets</span><span>Rs ' + total + '</span></div>' +
        '<div style="display:flex;justify-content:space-between;font-size:14px;padding:4px 0;"><span>Convenience fee (5%)</span><span>Rs ' + convenienceFee + '</span></div>' +
        '<div style="display:flex;justify-content:space-between;font-size:16px;font-weight:700;padding:8px 0 0;border-top:1px solid rgba(0,0,0,.1);margin-top:8px;"><span>Total</span><span style="color:var(--accent);">Rs ' + grandTotal + '</span></div>' +
      '</div>' +
      '<h4 style="font-size:15px;margin-bottom:12px;">Select Payment Method</h4>' +
      '<div class="payment-methods" id="paymentMethods">' +
        '<div class="payment-method active" data-method="card"><i class="fas fa-credit-card"></i> Credit / Debit Card</div>' +
        '<div class="payment-method" data-method="upi"><i class="fas fa-mobile-alt"></i> UPI</div>' +
        '<div class="payment-method" data-method="netbanking"><i class="fas fa-university"></i> Net Banking</div>' +
      '</div>' +
      '<div id="paymentForm">' +
        '<div class="form-group"><label>Card Number</label><input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19"></div>' +
        '<div class="form-row">' +
          '<div class="form-group"><label>Expiry</label><input type="text" id="cardExpiry" placeholder="MM/YY" maxlength="5"></div>' +
          '<div class="form-group"><label>CVV</label><input type="password" id="cardCvv" placeholder="***" maxlength="3"></div>' +
        '</div>' +
        '<div class="form-group"><label>Cardholder Name</label><input type="text" id="cardName" placeholder="Name on card"></div>' +
      '</div>' +
    '</div>' +
    '<div class="modal-footer">' +
      '<div class="order-summary">' +
        '<div class="item"><div class="label">Amount Payable</div><div class="value accent" style="font-size:20px;">Rs ' + grandTotal + '</div></div>' +
      '</div>' +
      '<button class="btn btn-primary" id="payBtn" onclick="processPayment(' + grandTotal + ')"><i class="fas fa-lock"></i> Pay Rs ' + grandTotal + '</button>' +
    '</div>';
  modalContent.innerHTML = html;

  modalContent.querySelectorAll('.payment-method').forEach(function(pm){
    pm.addEventListener('click', function(){
      modalContent.querySelectorAll('.payment-method').forEach(function(x){ x.classList.remove('active'); });
      this.classList.add('active');
      var method = this.dataset.method;
      var formEl = document.getElementById('paymentForm');
      if(method === 'card'){
        formEl.innerHTML =
          '<div class="form-group"><label>Card Number</label><input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19"></div>' +
          '<div class="form-row">' +
            '<div class="form-group"><label>Expiry</label><input type="text" id="cardExpiry" placeholder="MM/YY" maxlength="5"></div>' +
            '<div class="form-group"><label>CVV</label><input type="password" id="cardCvv" placeholder="***" maxlength="3"></div>' +
          '</div>' +
          '<div class="form-group"><label>Cardholder Name</label><input type="text" id="cardName" placeholder="Name on card"></div>';
      } else if(method === 'upi'){
        formEl.innerHTML =
          '<div class="form-group"><label>UPI ID</label><input type="text" id="upiId" placeholder="yourname@upi"></div>' +
          '<p style="font-size:12px;color:var(--muted);">A payment request will be sent to your UPI app.</p>';
      } else {
        formEl.innerHTML =
          '<div class="form-group"><label>Select Bank</label>' +
          '<select id="bankSelect">' +
            '<option>State Bank of India</option>' +
            '<option>HDFC Bank</option>' +
            '<option>ICICI Bank</option>' +
            '<option>Axis Bank</option>' +
            '<option>Kotak Mahindra Bank</option>' +
          '</select></div>';
      }
    });
  });
}

function processPayment(amount){
  var activeMethod = modalContent.querySelector('.payment-method.active');
  var method = activeMethod ? activeMethod.dataset.method : 'card';
  if(method === 'card'){
    var num = document.getElementById('cardNumber');
    var name = document.getElementById('cardName');
    if(!num || num.value.replace(/\s/g,'').length < 12){
      showToast('Please enter a valid card number');
      return;
    }
    if(!name || name.value.trim().length < 3){
      showToast('Please enter cardholder name');
      return;
    }
  } else if(method === 'upi'){
    var upi = document.getElementById('upiId');
    if(!upi || upi.value.indexOf('@') === -1){
      showToast('Please enter a valid UPI ID');
      return;
    }
  }

  var payBtn = document.getElementById('payBtn');
  payBtn.disabled = true;
  payBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Processing...';

  setTimeout(function(){
    var key = state.selectedTheater.id + '|' + state.selectedShowtime;
    var bookedList = generateBookedSeats(state.selectedTheater.id, state.selectedShowtime);
    state.selectedSeats.forEach(function(s){ if(bookedList.indexOf(s) === -1) bookedList.push(s); });

    var ticket = {
      id: 'BMS' + Date.now().toString().slice(-8),
      movie: state.selectedMovie ? state.selectedMovie.title : 'Now Showing',
      theater: state.selectedTheater.name,
      city: state.selectedTheater.city,
      showtime: state.selectedShowtime,
      seats: state.selectedSeats.slice(),
      amount: amount,
      method: method,
      date: new Date().toLocaleDateString('en-IN', { day:'numeric', month:'short', year:'numeric' })
    };
    state.myTickets.push(ticket);
    state.ticketCount += state.selectedSeats.length;
    updateTicketCount();
    openConfirmationModal(ticket);
  }, 1600);
}

/* ===================== CONFIRMATION ===================== */
function openConfirmationModal(ticket){
  var html =
    '<div class="modal-body confirmation">' +
      '<div class="check-circle"><i class="fas fa-check"></i></div>' +
      '<h2>Booking Confirmed!</h2>' +
      '<p class="msg">Your tickets have been booked successfully. A confirmation has been sent to your email.</p>' +
      '<div class="ticket-stub">' +
        '<div class="ticket-title">' + escapeHtml(ticket.movie) + '</div>' +
        '<div class="ticket-meta">' + escapeHtml(ticket.theater) + ', ' + escapeHtml(ticket.city) + '</div>' +
        '<div class="ticket-row"><span class="t-label">Booking ID</span><span class="t-value">' + escapeHtml(ticket.id) + '</span></div>' +
        '<div class="ticket-row"><span class="t-label">Date</span><span class="t-value">' + escapeHtml(ticket.date) + '</span></div>' +
        '<div class="ticket-row"><span class="t-label">Showtime</span><span class="t-value">' + escapeHtml(ticket.showtime) + '</span></div>' +
        '<div class="ticket-row"><span class="t-label">Seats</span><span class="t-value">' + escapeHtml(ticket.seats.join(', ')) + '</span></div>' +
        '<div class="ticket-row"><span class="t-label">Amount Paid</span><span class="t-value">Rs ' + ticket.amount + '</span></div>' +
      '</div>' +
      '<div class="actions">' +
        '<button class="btn btn-primary" onclick="downloadTicket(\'' + ticket.id + '\')"><i class="fas fa-download"></i> Download</button>' +
        '<button class="btn btn-outline" onclick="closeModal();goHome();"><i class="fas fa-home"></i> Back to Home</button>' +
      '</div>' +
    '</div>';
  modalContent.innerHTML = html;
}
function downloadTicket(ticketId){
  var ticket = state.myTickets.filter(function(t){ return t.id === ticketId; })[0];
  if(!ticket) return;
  var text = 'BookMyShow Ticket\n' +
    '================\n' +
    'Booking ID: ' + ticket.id + '\n' +
    'Movie: ' + ticket.movie + '\n' +
    'Theater: ' + ticket.theater + ', ' + ticket.city + '\n' +
    'Date: ' + ticket.date + '\n' +
    'Showtime: ' + ticket.showtime + '\n' +
    'Seats: ' + ticket.seats.join(', ') + '\n' +
    'Amount: Rs ' + ticket.amount + '\n';
  var blob = new Blob([text], { type: 'text/plain' });
  var url = URL.createObjectURL(blob);
  var a = document.createElement('a');
  a.href = url;
  a.download = 'ticket-' + ticket.id + '.txt';
  a.click();
  URL.revokeObjectURL(url);
  showToast('Ticket downloaded');
}

/* ===================== MODAL HELPERS ===================== */
function closeModal(){
  modalOverlay.classList.remove('active');
  modalContent.innerHTML = '';
}
modalOverlay.addEventListener('click', function(e){
  if(e.target === modalOverlay) closeModal();
});
document.addEventListener('keydown', function(e){
  if(e.key === 'Escape') closeModal();
});

/* ===================== TESTIMONIALS ===================== */
function renderTestimonials(){
  testimonialsList.innerHTML = '';
  TESTIMONIALS.forEach(function(t){
    var stars = '';
    for(var i=0;i<t.stars;i++) stars += '&#9733;';
    for(var j=t.stars;j<5;j++) stars += '&#9734;';
    var el = document.createElement('div');
    el.className = 'testimonial-card';
    el.innerHTML =
      '<div class="stars">' + stars + '</div>' +
      '<blockquote>"' + escapeHtml(t.text) + '"</blockquote>' +
      '<div class="author">' +
        '<img class="avatar" src="' + t.avatar + '" alt="' + escapeHtml(t.name) + '" loading="lazy">' +
        '<div>' +
          '<div class="name">' + escapeHtml(t.name) + '</div>' +
          '<div class="role">' + escapeHtml(t.role) + '</div>' +
        '</div>' +
      '</div>';
    testimonialsList.appendChild(el);
  });
}

/* ===================== SEARCH ===================== */
function filterMovies(query){
  var q = String(query || '').trim().toLowerCase();
  if(!q){ renderMovies(MOVIES); return; }
  var filtered = MOVIES.filter(function(m){
    return m.title.toLowerCase().indexOf(q) !== -1 ||
           m.genre.toLowerCase().indexOf(q) !== -1 ||
           m.lang.toLowerCase().indexOf(q) !== -1;
  });
  renderMovies(filtered);
}
searchBtn.addEventListener('click', function(){ filterMovies(searchInput.value); });
searchInput.addEventListener('keydown', function(e){
  if(e.key === 'Enter') filterMovies(e.target.value);
});

/* ===================== NAV ===================== */
document.querySelectorAll('[data-nav]').forEach(function(el){
  el.addEventListener('click', function(e){
    e.preventDefault();
    var target = this.dataset.nav;
    var map = { movies:'movies', locations:'locations', theaters:'theaters', reviews:'reviews' };
    scrollToSection(map[target] || 'movies');
    mobileMenu.style.display = 'none';
    mobileToggle.innerHTML = '<i class="fas fa-bars"></i>';
  });
});
mobileToggle.addEventListener('click', function(){
  var isOpen = mobileMenu.style.display === 'block';
  mobileMenu.style.display = isOpen ? 'none' : 'block';
  mobileToggle.innerHTML = isOpen ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
});

/* ===================== MY TICKETS ===================== */
document.getElementById('ticketBtn').addEventListener('click', function(){
  if(state.myTickets.length === 0){
    showToast('No tickets booked yet. Start booking!');
    return;
  }
  var html =
    '<div class="modal-header">' +
      '<div><h3>My Tickets</h3><div class="subtitle">' + state.myTickets.length + ' booking(s)</div></div>' +
      '<button class="modal-close" onclick="closeModal()"><i class="fas fa-times"></i></button>' +
    '</div>' +
    '<div class="modal-body">' +
      state.myTickets.map(function(t){
        return '<div class="ticket-stub" style="margin-bottom:16px;">' +
          '<div class="ticket-title">' + escapeHtml(t.movie) + '</div>' +
          '<div class="ticket-meta">' + escapeHtml(t.theater) + ', ' + escapeHtml(t.city) + '</div>' +
          '<div class="ticket-row"><span class="t-label">Booking ID</span><span class="t-value">' + escapeHtml(t.id) + '</span></div>' +
          '<div class="ticket-row"><span class="t-label">Showtime</span><span class="t-value">' + escapeHtml(t.date) + ' - ' + escapeHtml(t.showtime) + '</span></div>' +
          '<div class="ticket-row"><span class="t-label">Seats</span><span class="t-value">' + escapeHtml(t.seats.join(', ')) + '</span></div>' +
          '<div class="ticket-row"><span class="t-label">Amount</span><span class="t-value">Rs ' + t.amount + '</span></div>' +
        '</div>';
      }).join('') +
    '</div>';
  modalContent.innerHTML = html;
  modalOverlay.classList.add('active');
});

/* ===================== NEWSLETTER ===================== */
newsletterForm.addEventListener('submit', function(e){
  e.preventDefault();
  var email = newsletterEmail.value.trim();
  if(!email || email.indexOf('@') === -1){
    newsletterMsg.textContent = 'Please enter a valid email address.';
    newsletterMsg.style.color = '#ffb3b3';
    return;
  }
  newsletterMsg.textContent = 'Thanks for subscribing!';
  newsletterMsg.style.color = '#a8e6cf';
  newsletterEmail.value = '';
  setTimeout(function(){ newsletterMsg.textContent = ''; }, 3500);
});

/* ===================== INIT ===================== */
document.getElementById('year').textContent = new Date().getFullYear();
renderLocations();
renderMovies(MOVIES);
renderTheaters(THEATERS);
renderTestimonials();
updateTicketCount();
updateBreadcrumb();
</script>
</body>
</html>
