import Vue from 'vue';

// Datastructures
class Page {
    public hero: Hero;
    public cape: Cape;
    public constructor(hero: Hero, cape: Cape){
        this.hero = hero;
        this.cape = cape;
    }
}
class Hero {
    public title: String;
    public subtitles: Subtitles;
    public constructor(title: String, subtitles: Subtitles){
        this.title = title;
        this.subtitles = subtitles;
    }
}
class Cape {
    public cards: Array<Card>;
    public constructor(cards){
        this.cards = cards;
    }
}
class Subtitles{
    public subtitles: Array<Subtitle>;
    public constructor(subtitles: Array<Subtitle>){
        this.subtitles = subtitles;
    }
}
class Subtitle {
    public text: String;
    public click: Function;
    public constructor(text, click){
        this.text = text;
        this.click = click
    }
}
class Cards {
    public cards: Array<Card>;
    public constructor(cards){
        this.cards = cards;
    }
}
class Card {
    public image: String;
    public subtitles: Array<Subtitle>;
    constructor(subtitles, image){
        this.image = image;
        this.subtitles = subtitles;
    }
}

// Define components
Vue.component('comp-page', {
    props: {
        hero: Hero,
        cape: Cape
    },
    template: '<comp-hero hero=hero /><comp-cape cape=cape />'
})
Vue.component('comp-hero', {
    props: {
        title: String,
        subtitles: Subtitles
    },
    template: '<div class=".hero"><h1>{{ title }}</h1><comp-subtitle subtitles=subtitles /><comp-cape/><svg class="arrow" viewBox="0 0 24 24"><path d="M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z"/><path d="M0 0h24v24H0V0z" fill="none"/></svg></div>'
})
Vue.component('comp-subtitle', {
    props: {
        subtitle: String,
        click: Function
    },
    template: '<div class="cape"><ul><li class="card" v-for="card in cards"><card-item card=card /></li></ul></div>'
})
Vue.component('comp-cape', {
    props: {
        cards: Cards
    },
    template: '<ul><li class="card" v-for="card in cards"><p>{{subtitle.p}}</p></li></ul>'
})
Vue.component('comp-card-item', {
    props: {
        image: String,
        subtitles: Subtitles
    },
    template: '<div class="card-item"><img src="{{ image }}"/></div>'
})

// Initiate views
let app_home = new Vue({
    el: '#app_home',
    data: page_home
})
let app_contact = new Vue({
    el: '#app_contact',
    data: null
})
let app_key = new Vue({
    el: '#app_key',
    data: null
})
let app_dj = new Vue({
    el: '#app_dj',
    data: null
})
let app_it = new Vue({
    el: '#app_it',
    data: null
})

// Navigation
function navigate(app): void {
    console.log("Navigate to: " + app);
    app_home.seen = false;
    app_contact.seen = false;
    app_key.seen = false;
    app_it.seen = false;
    app_dj.seen = false;
    app.seen = true;
}
function ShowHome(): void {
    navigate(app_home);
}
function ShowContact(): void {
    navigate(app_contact);
}
function ShowKey(): void { navigate(app_key) }
function ShowIt(): void { navigate(app_it) }
function ShowDj(): void { navigate(app_dj) }
function redirect(url): void { window.location.href = url }

// DEFINE HOME VIEW
let page_home_hero_subtitles: Subtitles = new Subtitles([
    new Subtitle("Computer Engineering Student", ShowIt()),
    new Subtitle(".NET Developer", ShowIt()),
    new Subtitle("Internet freedom and privacy advocate", null),
    new Subtitle("DJ", ShowDj())
]);
let page_home_hero: Hero = new Hero("Oscar Andersson", page_home_hero_subtitles)
let page_home: Page = new Page();




{
    page: {
        cape: {
            cards: [
                {
                    imgsrc: "github.png",
                    subtitles: [
                        {
                            text: "See my GitHub activity",
                            click: redirect("https://github.com/oscar230/")
                        },{
                            text: "aaaaa"
                        }
                    ]
                }
            ]
        }
    }
}