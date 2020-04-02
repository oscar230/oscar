"use strict";
exports.__esModule = true;
var vue_1 = require("vue");
// Datastructures
var Page = /** @class */ (function () {
    function Page(hero, cape) {
        this.hero = hero;
        this.cape = cape;
    }
    return Page;
}());
var Hero = /** @class */ (function () {
    function Hero(title, subtitles) {
        this.title = title;
        this.subtitles = subtitles;
    }
    return Hero;
}());
var Cape = /** @class */ (function () {
    function Cape(cards) {
        this.cards = cards;
    }
    return Cape;
}());
var Subtitles = /** @class */ (function () {
    function Subtitles(subtitles) {
        this.subtitles = subtitles;
    }
    return Subtitles;
}());
var Subtitle = /** @class */ (function () {
    function Subtitle(text, click, url) {
        this.text = text;
        this.click = click;
        this.url = url;
    }
    return Subtitle;
}());
var Cards = /** @class */ (function () {
    function Cards(cards) {
        this.cards = cards;
    }
    return Cards;
}());
var Card = /** @class */ (function () {
    function Card(image, subtitles) {
        this.image = image;
        this.subtitles = subtitles;
    }
    return Card;
}());
// Define components
vue_1["default"].component('comp-page', {
    props: {
        hero: Hero,
        cape: Cape
    },
    template: '<comp-hero hero=hero /><comp-cape cape=cape />'
});
vue_1["default"].component('comp-hero', {
    props: {
        title: String,
        subtitles: Subtitles
    },
    template: '<div class=".hero"><h1>{{ title }}</h1><comp-subtitle subtitles=subtitles /><comp-cape/><svg class="arrow" viewBox="0 0 24 24"><path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z"/><path d="M0 0h24v24H0V0z" fill="none"/></svg></div>'
});
vue_1["default"].component('comp-subtitle', {
    props: {
        subtitle: String,
        click: Function
    },
    template: '<div class="cape"><ul><li class="card" v-for="card in cards"><card-item card=card /></li></ul></div>'
});
vue_1["default"].component('comp-cape', {
    props: {
        cards: Cards
    },
    template: '<ul><li class="card" v-for="card in cards"><p>{{subtitle.p}}</p></li></ul>'
});
vue_1["default"].component('comp-card-item', {
    props: {
        image: String,
        subtitles: Subtitles
    },
    template: '<div class="card-item"><img src="{{ image }}"/></div>'
});
// Navigation
function navigate(app) {
    console.log("Navigate to: " + app);
    // Disable all
    app_home.$data.seen = false;
    app_contact.$data.seen = false;
    app_key.$data.seen = false;
    app_it.$data.seen = false;
    app_dj.$data.seen = false;
    // Enable one
    app.seen = true;
}
function ShowHome() {
    navigate(app_home);
}
function ShowContact() {
    navigate(app_contact);
}
function ShowKey() { navigate(app_key); }
function ShowIt() { navigate(app_it); }
function ShowDj() { navigate(app_dj); }
function redirect(url) { window.location.href = url; }
// DEFINE HOME VIEW
var page_home_cape_card_hithub = new Card("github.com", new Subtitles([
    new Subtitle("Computer Engineering Student", null, null)
]));
var page_home_cape = new Cape([
    page_home_cape_card_hithub
]);
var page_home_hero_subtitles = new Subtitles([
    new Subtitle("Computer Engineering Student", ShowIt, null),
    new Subtitle(".NET Developer", ShowIt, null),
    new Subtitle("Internet freedom and privacy advocate", null, null),
    new Subtitle("DJ", ShowDj, null)
]);
var page_home_hero = new Hero("Oscar Andersson", page_home_hero_subtitles);
var page_home = new Page(page_home_hero, page_home_cape);
// Initiate views
var app_home = new vue_1["default"]({
    el: '#app_home',
    data: {
        seen: true,
        page: page_home
    }
});
var app_contact = new vue_1["default"]({
    el: '#app_contact',
    data: {
        seen: true,
        page: page_home
    }
});
var app_key = new vue_1["default"]({
    el: '#app_key',
    data: {
        seen: true,
        page: page_home
    }
});
var app_dj = new vue_1["default"]({
    el: '#app_dj',
    data: {
        seen: true,
        page: page_home
    }
});
var app_it = new vue_1["default"]({
    el: '#app_it',
    data: {
        seen: true,
        page: page_home
    }
});
ShowHome();
