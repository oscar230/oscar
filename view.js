// Datastructures
var page = /** @class */ (function () {
    function page(hero, cape) {
        this.hero = hero;
        this.cape = cape;
    }
    Object.defineProperty(page.prototype, "print", {
        get: function () {
            return '<comp-hero hero=hero /><comp-cape cape=cape />';
        },
        enumerable: true,
        configurable: true
    });
    return page;
}());
var hero = /** @class */ (function () {
    function hero(title, subtitles) {
        this.title = title;
        this.subtitles = subtitles;
    }
    return hero;
}());
var cape = /** @class */ (function () {
    function cape(cards) {
        this.cards = cards;
    }
    return cape;
}());
var subtititle = /** @class */ (function () {
    function subtititle(text, click) {
        this.text = text;
        this.click = click;
    }
    return subtititle;
}());
var card = /** @class */ (function () {
    function card(subtitles, imgsrc) {
        this.imgsrc = imgsrc;
        this.subtitles = subtitles;
    }
    return card;
}());
