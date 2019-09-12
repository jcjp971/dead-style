puts " Création des Users"
jerome = User.new(name: "Jerome COURIOL", address: "1, rue de la loge, lyon", seller: false, email: "info@jcjp.fr", password: "000000")
jerome.remote_avatar_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566500533/deadstyle/Profile_ylehhu.jpg"
jerome.save!

kevin = User.new(name: "Kevin CHAVANNE", address: "26, rue de capucins, lyon", seller: false, email: "kevin@lwl.fr", password: "000000")
kevin.remote_avatar_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566498290/deadstyle/kevin_dybhjt.png"
kevin.save!

joseph = User.new(name: "JOSEPH BLANCHARD", address: "26, rue de capucins, lyon", seller: false, email: "joseph@lwl.fr", password: "000000")
joseph.remote_avatar_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566498289/deadstyle/joseph_kozbrz.jpg"
joseph.save!

clement = User.new(name: "Clement MALFROY", address: "26, rue de capucins, lyon", seller: false, email: "clement@lwl.fr", password: "000000")
clement.remote_avatar_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566498288/deadstyle/clement_a32rto.jpg"
clement.save!
puts " Création des Products"
para = Product.new(
name: "Parachute endommagé, servi une fois,  jamais ouvert !",
  description: "Après votre dernier vol en avion, une fois arrivé(e) à 4500 mètres d'altitude, il vous suffit de vous lancer ... et attendre. Pensez a votre testament (mon iban est le suivant : 20190707LEWAGONCESTCOOL ;-)",
  category: "slow",
  price: 400,
  rating: 3,
  active: true,
  address: "1 Rue de la Loge, Lyon 5e Arrondissement, Auvergne-Rhône-Alpes, France")
para.owner = jerome
para.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501508/deadstyle/parachute_blqgdd.jpg"
para.save!

dyna = Product.new(
  name: "Fumeur, une cigarette des plus efficace",
  description: "Le pricine est très simple, comme d'hab : un briquet et quelques secondes suffisent pour atteindre son but",
  category: "fast",
  price: 79,
  rating: 4,
  active: true,
  address: "17, Rue jacques Tati, paris, France")
dyna.owner = joseph
dyna.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501505/deadstyle/dynamite_emdodu.jpg"
dyna.save!

ste = Product.new(
  name: "Maillot de Saint-Etienne",
  description: "Je vous invite à vous balader place Bellecour afin de connaitre une fin de plus douloureuse ... surement a coup de jet de pierres ou de trottinettes :-)",
  category: "hard",
  price: 70,
  rating: 2,
  active: true,
  address: "14 Rue Paul et Pierre Guichard, 42000 Saint-Étienne")
ste.owner = kevin
ste.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501510/deadstyle/ste_ikzv0i.jpg"
ste.save!

poison = Product.new(
  name: "Intense et savoureux poison (saveur coco)",
  description: "Garanti sans douleur. Un point de sucre de canne accompagne ce nectar des dieux. Et puis doucement :-)",
  category: "smooth",
  price: 30,
  rating: 4,
  active: true,
  address: "Esplanade de Pontac, 134 Quai de Bacalan, 33300 Bordeaux")
poison.owner = jerome
poison.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501511/deadstyle/poison_fmw3mu.jpg"
poison.save!

loup = Product.new(
  name: "Radical et avec bavures",
  description: "Se depose sur la tete et tout s'arrête",
  category: "hard",
  price: 239,
  rating: 4,
  active: true,
  address: "Place Saint-Sernin, 31000 Toulouse")
loup.owner = kevin
loup.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501505/deadstyle/loup_od1vxg.jpg"
loup.save!

bague = Product.new(
  name: "l'anneau de la terre du milieu",
  description: "Cette mort est à petit feu, mais vraient petit feu. Après l'anneau pour les controler tous, ce bijou incrusté de diamants est prévu pour vous controler. Bonne chance...Bon courage...Bonne mort quoi !",
  category: "slow",
  price: 8500,
  rating: 1,
  active: true,
  address: "Place Saint-Sernin, 31000 Toulouse")
bague.owner = jerome
bague.remote_photo_url = "https://res.cloudinary.com/jcjp971/image/upload/v1566501504/deadstyle/alliance_mgx3bg.jpg"
bague.save!

puts " Création des Sales"
vente1 = Sale.new
vente1.product = bague
vente1.user = kevin
vente1.date = Date.today
vente1.paid = true
vente1.save!

vente2 = Sale.new
vente2.product = dyna
vente2.user = clement
vente2.date = Date.today
vente2.paid = true
vente2.save!

vente3 = Sale.new
vente3.product = para
vente3.user = clement
vente3.date = Date.today
vente3.paid = true
vente3.save!

vente4 = Sale.new
vente4.product = loup
vente4.user = jerome
vente4.date = Date.today
vente4.paid = true
vente4.save!

puts "tout est ok !"
