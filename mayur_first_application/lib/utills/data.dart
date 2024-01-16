import 'package:flutter/material.dart';

// List<String> categorieslist = [
//   "https://freesvg.org/img/metalmarious_Laptop.png",
//   "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
//   "https://freesvg.org/img/headphone.png",
//   "https://freesvg.org/img/monitor-fondo.pie.png",
//   "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
// ];

// List<Map<String, dynamic>> product = [
//   {
//     "brand": "Dell",
//     "model": "XPS 13",
//     "processor": "Intel Core i7",
//     "ram": "16GB",
//     "storage": "512GB SSD",
//     "image":
//         "https://images-cdn.ubuy.co.in/6571c143cf2cd011232abbb6-dell-xps-13-plus-9320-13-4-touchscreen.jpg",
//     "graphics": "Intel Iris Xe",
//     "price": 1399.99
//   },
//   {
//     "brand": "HP",
//     "model": "Spectre x360",
//     "processor": "Intel Core i5",
//     "ram": "8GB",
//     "image":
//         "https://img-cdn.tnwcdn.com/image?fit=1280%2C720&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2021%2F08%2FHP-Spectre-x360-14-1-of-7.jpg&signature=b273734ba382a58d403431a960fd1708",
//     "storage": "256GB SSD",
//     "graphics": "Intel UHD Graphics",
//     "price": 1099.99
//   },
//   {
//     "id": 1,
//     "brand": "Samsung",
//     "model": "Galaxy S21",
//     "storage": "128GB",
//     "image":
//         "https://images.moneycontrol.com/static-mcnews/2021/02/Samsung-Galaxy-S21-Ultra-2.png?impolicy=website&width=1600&height=900",
//     "color": "Phantom Gray",
//     "price": 899.99
//   },
//   {
//     "id": 2,
//     "brand": "Apple",
//     "model": "iPhone 13",
//     "storage": "256GB",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61iTWldZ9qL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Midnight Green",
//     "price": 1099.99
//   },
//   {
//     "id": 3,
//     "brand": "Google",
//     "model": "Pixel 6",
//     "storage": "128GB",
//     "image":
//         "https://s3b.cashify.in/gpro/uploads/2021/05/20050119/google-pixel-6-extra-1-300x300.png",
//     "color": "Sorta Seafoam",
//     "price": 799.99
//   },
//   {
//     "id": 4,
//     "brand": "OnePlus",
//     "model": "9 Pro",
//     "storage": "256GB",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/614cCf6bzyL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Morning Mist",
//     "price": 899.00
//   },
//   {
//     "id": 5,
//     "brand": "Xiaomi",
//     "model": "Mi 11",
//     "storage": "128GB",
//     "image":
//         "https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1666344667.93946102.png",
//     "color": "Horizon Blue",
//     "price": 749.99
//   },
//   {
//     "id": 1,
//     "brand": "Sony",
//     "model": "WH-1000XM4",
//     "type": "Over-ear",
//     "wireless": true,
//     "image":
//         "https://www.sony.co.in/image/5d02da5df552836db894cead8a68f5f3?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF",
//     "color": "Black",
//     "price": 349.99
//   },
//   {
//     "id": 2,
//     "brand": "Bose",
//     "model": "QuietComfort 35 II",
//     "type": "Over-ear",
//     "wireless": true,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/611CN975jSL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Silver",
//     "price": 299.95
//   },
//   {
//     "id": 3,
//     "brand": "Sennheiser",
//     "model": "HD 660 S",
//     "type": "Over-ear",
//     "wireless": false,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71kC1BXo9PL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Matte Black",
//     "price": 499.95
//   },
//   {
//     "id": 4,
//     "brand": "Apple",
//     "model": "AirPods Pro",
//     "type": "In-ear",
//     "wireless": true,
//     "image":
//         "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MME73?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1632861342000",
//     "color": "White",
//     "price": 249.00
//   },
//   {
//     "id": 5,
//     "brand": "JBL",
//     "model": "Live 650 BTNC",
//     "type": "Over-ear",
//     "wireless": true,
//     "image":
//         "https://rukminim2.flixcart.com/image/850/1000/jzhb24w0pkrrdj/headphone-refurbished/y/h/f/b-live-650bt-voice-enabled-jbl-original-imafgygtdv7bmsxx.jpeg?q=90",
//     "color": "Blue",
//     "price": 199.95
//   },
//   {
//     "id": 6,
//     "brand": "Beyerdynamic",
//     "model": "DT 990 Pro",
//     "type": "Over-ear",
//     "wireless": false,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71k0eQamF7L._AC_UF1000,1000_QL80_.jpg",
//     "color": "Black",
//     "price": 159.00
//   },
//   {
//     "id": 7,
//     "brand": "Skullcandy",
//     "model": "Crusher Wireless",
//     "type": "Over-ear",
//     "wireless": true,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71m+bWJya8L.jpg",
//     "color": "Gray/Tan",
//     "price": 149.99
//   },
//   {
//     "id": 8,
//     "brand": "AKG",
//     "model": "K240 Studio",
//     "type": "Over-ear",
//     "wireless": false,
//     "image":
//         "https://rajmusical.com/ekart/images/8565AKG-K240-MKII-Professional-Studio-Headphone_1.jpg",
//     "color": "Black",
//     "price": 69.00
//   },
//   {
//     "id": 9,
//     "brand": "Anker",
//     "model": "Soundcore Liberty Air 2",
//     "type": "In-ear",
//     "wireless": true,
//     "image":
//         "https://rukminim2.flixcart.com/image/850/1000/kkh6zrk0/headphone/y/v/o/liberty-air-2-pro-soundcore-original-imafzta7b8bhgnz5.jpeg?q=90",
//     "color": "White",
//     "price": 79.99
//   },
//   {
//     "id": 10,
//     "brand": "Audio-Technica",
//     "model": "ATH-M50x",
//     "type": "Over-ear",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/810Zg-DIgbL.jpg",
//     "wireless": false,
//     "color": "Black",
//     "price": 149.00
//   },
//   {
//     "id": 6,
//     "brand": "Huawei",
//     "model": "P40 Pro",
//     "storage": "256GB",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/610uWzNVzRL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Silver Frost",
//     "price": 899.00
//   },
//   {
//     "id": 1,
//     "brand": "Sony",
//     "model": "WH-1000XM4",
//     "type": "Over-ear",
//     "wireless": true,
//     "image":
//         "https://www.sony.co.in/image/5d02da5df552836db894cead8a68f5f3?fmt=pjpeg&wid=330&bgcolor=FFFFFF&bgc=FFFFFF",
//     "color": "Black",
//     "price": 349.99
//   },
//   {
//     "id": 2,
//     "brand": "Bose",
//     "model": "QuietComfort 35 II",
//     "type": "Over-ear",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51NUWunffmL._AC_UF1000,1000_QL80_.jpg",
//     "wireless": true,
//     "color": "Silver",
//     "price": 299.95
//   },
//   {
//     "id": 3,
//     "brand": "Sennheiser",
//     "model": "HD 660 S",
//     "type": "Over-ear",
//     "wireless": false,
//     "image":
//         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa5C5HkHzndrQIRxK9PM2oB1-H9CeWfgRyIQ&usqp=CAU",
//     "color": "Matte Black",
//     "price": 499.95
//   },
//   {
//     "id": 1,
//     "brand": "Apple",
//     "model": "Watch Series 7",
//     "price": 399.99,
//     "color": "Silver",
//     "image":
//         "https://rukminim2.flixcart.com/image/850/1000/ku8pbbk0/smartwatch/w/3/e/ios-mkl33hn-a-apple-yes-original-imag7erwrmg9mpzz.jpeg?q=90",
//     "features": ["Fitness Tracking", "ECG", "Always-On Retina display"]
//   },
//   {
//     "id": 2,
//     "brand": "Samsung",
//     "model": "Galaxy Watch 4",
//     "price": 349.99,
//     "color": "Black",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61Nhi7ovjkL._AC_UF1000,1000_QL80_.jpg",
//     "features": ["Health Monitoring", "Google Wear OS", "AMOLED display"]
//   },
//   {
//     "id": 3,
//     "brand": "Fitbit",
//     "model": "Sense",
//     "price": 299.95,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51MUa0WUSKL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Carbon/Graphite",
//     "features": ["Stress Management", "EDA Scan app", "Built-in GPS"]
//   },
//   {
//     "id": 4,
//     "brand": "Garmin",
//     "model": "Venu 2",
//     "image": "https://www.garmin.co.in/m/in/g/products/venu-2-black-cf-lg.jpg",
//     "price": 399.99,
//     "color": "Light Sand/Rose Gold",
//     "features": ["Health Snapshot", "Mindful Breathing", "AMOLED display"]
//   },
//   {
//     "id": 5,
//     "brand": "Huawei",
//     "model": "Watch GT 3",
//     "price": 279.99,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61QzCsPkFOL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Moon Phase Silver",
//     "features": ["SPO2 Monitoring", "100+ Workout Modes", "HarmonyOS"]
//   },
//   {
//     "id": 6,
//     "brand": "Fossil",
//     "model": "Gen 6",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51t+tt7vMYL._AC_UF1000,1000_QL80_.jpg",
//     "price": 299.99,
//     "color": "Smoke Stainless Steel",
//     "features": ["Customizable Buttons", "Heart Rate Tracking", "Google Pay"]
//   },
//   {
//     "id": 7,
//     "brand": "Xiaomi",
//     "model": "Mi Watch Revolve",
//     "price": 149.99,
//     "image":
//         "https://i.gadgets360cdn.com/products/large/mi-watch-revolve-active-db-917x800-1624343594.jpg",
//     "color": "Midnight Black",
//     "features": ["AMOLED display", "Sleep Tracking", "14-Day Battery Life"]
//   },
//   {
//     "id": 8,
//     "brand": "Sony",
//     "model": "SmartWatch 4",
//     "price": 279.99,
//     "image":
//         "https://static.toiimg.com/thumb/resizemode-4,msid-57776216,imgsize-500,width-800/57776216.jpg",
//     "color": "Steel Black",
//     "features": ["Voice Commands", "Water-resistant", "NFC"]
//   },
//   {
//     "id": 9,
//     "brand": "Amazfit",
//     "model": "GTR 3",
//     "price": 199.99,
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61LeyQw4qbL._AC_UF1000,1000_QL80_.jpg",
//     "color": "Obsidian Black",
//     "features": ["SpO2 Measurement", "5 ATM Water Resistance", "Zepp OS"]
//   },
//   {
//     "id": 10,
//     "brand": "OnePlus",
//     "model": "Watch",
//     "price": 159.99,
//     "image":
//         "https://rukminim2.flixcart.com/image/850/1000/kmkxbww0/smartwatch/t/j/y/w301gb-android-ios-oneplus-original-imagfgmhm32m4xsg.jpeg?q=90",
//     "color": "Moonlight Silver",
//     "features": ["Warp Charge", "Health Tracking", "AMOLED display"]
//   },
//   {
//     "id": 7,
//     "brand": "Sony",
//     "model": "Xperia 5 III",
//     "storage": "128GB",
//     "image":
//         "https://api.ovantica.com/prisma/ovanticainventory/images/sony-xperia-5-iii-black-1.jpg",
//     "color": "Black",
//     "price": 999.99
//   },
//   {
//     "id": 8,
//     "brand": "LG",
//     "model": "Velvet",
//     "storage": "128GB",
//     "image":
//         "https://upload.wikimedia.org/wikipedia/commons/d/d4/LG_Velvet_Aurora_Green_version.jpg",
//     "color": "Aurora Green",
//     "price": 699.00
//   },
//   {
//     "id": 9,
//     "brand": "Motorola",
//     "model": "Edge+",
//     "storage": "256GB",
//     "image":
//         "https://ss7.vzw.com/is/image/VerizonWireless/motorola-edge-plus-5g-uw-cosmos-256gb-motxt22014m/?wid=465&hei=465&fmt=webp",
//     "color": "Solar Black",
//     "price": 799.99
//   },
//   {
//     "brand": "Lenovo",
//     "model": "ThinkPad X1 Carbon",
//     "processor": "Intel Core i7",
//     "ram": "16GB",
//     "image": "https://www.bdstall.com/asset/product-image/giant_158462.jpg",
//     "storage": "1TB SSD",
//     "graphics": "Intel UHD Graphics",
//     "price": 1699.99
//   },
//   {
//     "brand": "Apple",
//     "model": "MacBook Air",
//     "processor": "Apple M1",
//     "ram": "8GB",
//     "iamge":
//         "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-air-midnight-select-20220606?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653084303665",
//     "storage": "256GB SSD",
//     "graphics": "Apple M1 GPU",
//     "price": 1199.99
//   },
//   {
//     "brand": "Asus",
//     "model": "ZenBook 14",
//     "processor": "AMD Ryzen 7",
//     "ram": "16GB",
//     "storage": "512GB SSD",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/71jVnEQUFXL.jpg",
//     "graphics": "NVIDIA GeForce MX450",
//     "price": 1299.99
//   },
//   {
//     "brand": "Acer",
//     "model": "Predator Helios 300",
//     "processor": "Intel Core i7",
//     "ram": "32GB",
//     "image":
//         "https://rukminim1.flixcart.com/image/850/1000/jmwch3k0/computer/z/f/b/acer-na-gaming-laptop-original-imaf9ph3zd7b4b2s.jpeg?q=90",
//     "storage": "1TB SSD",
//     "graphics": "NVIDIA GeForce RTX 3060",
//     "price": 1799.99
//   },
//   {
//     "brand": "Razer",
//     "model": "Blade 15",
//     "processor": "Intel Core i7",
//     "ram": "16GB",
//     "storage": "1TB SSD",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61WdX6qqDqL.jpg",
//     "graphics": "NVIDIA GeForce RTX 3070",
//     "price": 2199.99
//   },
//   {
//     "brand": "Samsung",
//     "model": "Galaxy Book Pro",
//     "processor": "Intel Core i7",
//     "ram": "16GB",
//     "image":
//         "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81Ykmdd2v-L.jpg",
//     "storage": "512GB SSD",
//     "graphics": "Intel Iris Xe",
//     "price": 1499.99
//   },
// ];

List<Map<String, dynamic>> product = [
  {
    "category": "laptop",
    "category_image" : "https://freesvg.org/img/metalmarious_Laptop.png",
    "qty": 7,
    "brand": "Dell",
    "name": "XPS 13",
    "processor": "Intel Core i7",
    "ram": "16GB",
    "storage": "512GB SSD",
    "price": 1299.99,
    "image":
        "https://media.karousell.com/media/photos/products/2022/8/24/dell_xps_13_9370_i78550u_4k_uh_1661321195_8acc7083_progressive.jpg",
    "description":
        "The Dell XPS 13 is a powerful and sleek ultrabook with a stunning InfinityEdge display."
  },
  {
    "category": "laptop",
    "category_image" : "https://freesvg.org/img/metalmarious_Laptop.png",
    "qty": 7,
    "brand": "HP",
    "name": "Spectre x360",
    "processor": "Intel Core i5",
    "ram": "8GB",
    "storage": "256GB SSD",
    "price": 1499.95,
    "image": "https://mrlaptop.pk/wp-content/uploads/2020/06/15-eb0043dx.jpg",
    "description":
        "The HP Spectre x360 is a versatile 2-in-1 laptop with a stylish design and long battery life."
  },
  {
    "category": "laptop",
    "category_image" : "https://freesvg.org/img/metalmarious_Laptop.png",
    "qty": 7,
    "brand": "Lenovo",
    "name": "ThinkPad X1 Carbon",
    "processor": "Intel Core i7",
    "ram": "16GB",
    "storage": "1TB SSD",
    "price": 1699.00,
    "image":
        "https://5.imimg.com/data5/SELLER/Default/2022/12/GG/KD/OJ/157628571/lenovo-thinkpad-x1-carbon-gen-10-500x500.jpg",
    "description":
        "The Lenovo ThinkPad X1 Carbon is a business-oriented laptop known for its durability and excellent keyboard."
  },
  {
    "category": "laptop",
    "category_image" : "https://freesvg.org/img/metalmarious_Laptop.png",
    "qty": 7,
    "brand": "Asus",
    "name": "ROG Zephyrus G14",
    "processor": "AMD Ryzen 9",
    "ram": "32GB",
    "storage": "1TB NVMe SSD",
    "price": 999.00,
    "image":
        "https://adminapi.applegadgetsbd.com/storage/media/large/GA402RK-9537.jpg",
    "description":
        "The Asus ROG Zephyrus G14 is a gaming laptop with a powerful AMD Ryzen processor and a compact design."
  },
  {
    "category": "laptop",
    "category_image" : "https://freesvg.org/img/metalmarious_Laptop.png",
    "qty": 7,
    "brand": "Apple",
    "name": "MacBook Air",
    "processor": "Apple M1",
    "ram": "8GB",
    "storage": "256GB SSD",
    "price": 1999.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51hJIsWMagL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "The MacBook Air with Apple M1 chip delivers impressive performance and a sleek, lightweight design."
  },
  {
    "category": "watch",
    "category_image" :"https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
    "qty": 7,
    "name": "Classic Chronograph",
    "price": 199.99,
    "image":
        "https://cdn1.ethoswatches.com/media/catalog/product/cache/5b6ffe97254a86fab5749cb594365e70/f/r/frederique-constant-classics-fc-292mnb5b3b.jpg",
    "description":
        "Elegant stainless steel chronograph watch with leather strap."
  },
  {
    "category": "watch",
    "category_image" :"https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
    "qty": 7,
    "name": "Sporty Digital",
    "price": 79.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/617TaP0eJfL._AC_UY1000_.jpg",
    "description":
        "Water-resistant digital watch with multiple sport modes and fitness tracking."
  },
  {
    "category": "watch",
    "category_image" :"https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
    "qty": 7,
    "name": "Luxury Gold Edition",
    "price": 499.99,
    "image":
        "https://cdn.salla.sa/jqba/A7oVlrDxUOmE3fAe6n15vFfOjuPPs8UeNlcfln2G.jpg",
    "description":
        "Exquisite gold-plated watch with intricate detailing and automatic movement."
  },
  {
    "category": "watch",
    "category_image" :"https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
    "qty": 7,
    "name": "Casual Everyday",
    "price": 49.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/612DaAfd7fL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "Simple and versatile everyday watch with a comfortable nylon strap."
  },
  {
    "category": "watch",
    "category_image" :"https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
    "qty": 7,
    "name": "Smart Fitness Tracker",
    "price": 129.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61EclBYcocL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "Smartwatch with fitness tracking, heart rate monitoring, and notification alerts."
  },
  {
    "category": "phone",
    "category_image" :"https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
    "qty": 7,
    "name": "iPhone 13",
    "price": 999.99,
    "image":
        "https://www.apple.com/newsroom/images/product/iphone/geo/Apple_iphone13_hero_geo_09142021_inline.jpg.large.jpg",
    "description":
        "The latest iPhone with a stunning Super Retina XDR display and advanced A15 Bionic chip."
  },
  {
    "category": "phone",
    "category_image" :"https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
    "qty": 7,
    "name": "Samsung Galaxy S21",
    "price": 799.99,
    "image":
        "https://phonestoretn.tn/32-large_default/samsung-galaxy-s21-ultra.jpg",
    "description":
        "Powerful Android flagship featuring a vibrant AMOLED display and versatile camera system."
  },
  {
    "category": "phone",
    "category_image" :"https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
    "qty": 7,
    "name": "Google Pixel 6",
    "price": 699.99,
    "image":
        "https://images.hindustantimes.com/tech/htmobile4/P35867/heroimage/143605-v3-google-pixel-6-mobile-phone-large-1.jpg",
    "description":
        "A top-notch camera phone with advanced AI capabilities and a sleek design."
  },
  {
    "category": "phone",
    "category_image" :"https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
    "qty": 7,
    "name": "OnePlus 9",
    "price": 899.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/614cCf6bzyL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "Flagship killer with a smooth 120Hz display, powerful Snapdragon processor, and Hasselblad-tuned cameras."
  },
  {
    "category": "phone",
    "category_image" :"https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
    "qty": 7,
    "name": "Xiaomi Mi 11",
    "price": 749.99,
    "image":
        "https://i01.appmifile.com/webfile/globalimg/products/m/mi-11/overview31-img02.jpg",
    "description":
        "High-performance smartphone with a Snapdragon 888 chip, impressive display, and versatile camera setup."
  },
  {
    "category": "headphone",
    "category_image" :"https://freesvg.org/img/headphone.png",
    "qty": 7,
    "name": "Sony WH-1000XM4",
    "price": 349.99,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61xHHgU0bYL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "Industry-leading noise cancellation and exceptional sound quality."
  },
  {
    "category": "headphone",
    "category_image" :"https://freesvg.org/img/headphone.png",
    "qty": 7,
    "name": "Bose QuietComfort 35 II",
    "price": 299.95,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+jNVOUsJL._AC_UF1000,1000_QL80_.jpg",
    "description":
        "Renowned for comfort, with powerful noise cancellation technology."
  },
  {
    "category": "headphone",
    "category_image" :"https://freesvg.org/img/headphone.png",
    "qty": 7,
    "name": "Apple AirPods Pro",
    "price": 249.00,
    "image":
        "https://images.macrumors.com/article-new/2020/05/airpods-max-in-black.jpg",
    "description":
        "Wireless earbuds with active noise cancellation and a customizable fit."
  },
  {
    "category": "headphone",
    "category_image" :"https://freesvg.org/img/headphone.png",
    "qty": 7,
    "name": "Sennheiser HD 660 S",
    "price": 499.95,
    "image": "https://soundnews.net/uploads/HD-660S-1-of-1-5.jpg",
    "description":
        "High-quality open-back headphones for audiophiles and studio use."
  },
  {
    "category": "headphone",
    "category_image" :"https://freesvg.org/img/headphone.png",
    "qty": 7,
    "name": "JBL Tune 510BT",
    "price": 99.95,
    "image":
        "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61kFL7ywsZS._AC_UF1000,1000_QL80_.jpghttps://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61kFL7ywsZS._AC_UF1000,1000_QL80_.jpg",
    "description":
        "True wireless in-ear headphones with a compact design and strong bass."
  },
  {
    "category": "monitor",
    "category_image" : "https://freesvg.org/img/monitor-fondo.pie.png",
    "brand": "REDMI",
    "qty": 7,
    "name": "REDMI MONITOR",
    "price": 199.99,
    "image":
        "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/RD_teaser.png",
    "description": "Full HD 24-inch display with ultra-slim design."
  },
  {
    "category": "monitor",
    "category_image" : "https://freesvg.org/img/monitor-fondo.pie.png",
    "brand": "DELL",
    "qty": 7,
    "name": "DELL MONITOR",
    "price": 299.99,
    "image": "https://compstore.az/data/big/dell_24_inch_gaming_monitor.jpg",
    "description":
        "4K UHD 27-inch monitor with HDR support for stunning visuals."
  },
  {
    "category": "monitor",
    "category_image" : "https://freesvg.org/img/monitor-fondo.pie.png",
    "brand": "LG",
    "qty": 7,
    "name": "LG MONITOR",
    "price": 149.99,
    "image":
        "https://lcdn.altex.ro/resize/media/catalog/product/M/O/2bd48d28d1c32adea0e55139a4e6434a/MON24MP60GB_1.jpg",
    "description": "Curved 21.5-inch monitor for immersive viewing experience."
  },
  {
    "category": "monitor",
    "category_image" : "https://freesvg.org/img/monitor-fondo.pie.png",
    "brand": "HP",
    "qty": 7,
    "name": "HP MONITOR",
    "price": 399.99,
    "image":
        "https://www.hp.com/ca-en/shop/Html/Merch/Images/c08381246_1750x1285.jpg",
    "description":
        "Ultra-wide 34-inch QHD display for multitasking professionals."
  },
  {
    "category": "monitor",
    "category_image" : "https://freesvg.org/img/monitor-fondo.pie.png",
    "brand": "XIAOMI",
    "qty": 7,
    "name": "XIAOMI MONITOR",
    "price": 259.99,
    "image":
        "https://i02.appmifile.com/365_operator_sg/30/06/2023/8479a7c066d9b0f3729f83c52063de42.jpg",
    "description":
        "Gaming monitor with 144Hz refresh rate and adaptive sync technology."
  }
];



List AllCategory = product.map((e) => e['category']).toList();

List Category = AllCategory.toSet().toList();