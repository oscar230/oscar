<script>
    export let imgSrc;
    export let imgAlt;
    export let title;
    export let link;
</script>

<style>

    div {
        margin: auto;
        width: 60vw;
        position: relative;
        top: 10vh;
    }

    @keyframes anim-letter-spacing {
        0%   {letter-spacing: 0.8em;}
        100% {letter-spacing: 0.7em;}
    }

    .title a {
        display: block;
        position: relative;
        top: 48vh;
        left: -8vw;
        font-size: 7vw;
        text-align: center;
        color: #ffc048;
        text-decoration: none;
        text-shadow: 1px 1px #ffa801, 2px 2px #ffa801;
        opacity: 80%;
        letter-spacing: 0.7em;
        animation-name: anim-letter-spacing;
        animation-duration: 3s;
        animation-timing-function: ease-out;
    }

    @keyframes anim-hero-position {
        0%   {object-position: 50% 25%;}
        100% {object-position: 50% 50%;}
    }

    .img-hero, .img-cape {
        position: absolute;
        display: block;
        width: 100%;
        height: 70vh;
        object-fit: cover;
        object-position: 50% 50%;
        animation-name: anim-hero-position;
        animation-duration: 10s;
    }
    
    .img-cape {
        opacity: 60%;
        filter: url("#turbulence");
    }
</style>

<div>
    <img class="img-hero" src="{ imgSrc }" alt="{ imgAlt }">
    <img class="img-cape" src="{ imgSrc }" alt="" role="presentation">
    <h1 class="title"><a href="{ link }">{ title }</a></h1>

    <!--Turbulence effect-->
    <svg>
        <filter id="turbulence" x="0" y="0" width="100%" height="100%">
            <feTurbulence 
                id="sea-filter" 
                numOctaves="5" 
                seed="16" 
                baseFrequency="0.02 0.05">
            </feTurbulence>
            <feDisplacementMap 
                scale="10" 
                in="SourceGraphic">
            </feDisplacementMap>
            <animate 
                xlink:href="#sea-filter" 
                attributeName="baseFrequency" 
                dur="120s" 
                keyTimes="0;0.5;1" 
                values="0.02 0.06;0.04 0.08;0.02 0.06" 
                repeatCount="indefinite"/>
        </filter>
    </svg>
    <animate xlink:href="#sea-filter" attributeName="baseFrequency" dur="60s" keyTimes="0;0.5;1" values="0.02 0.06;0.04 0.08;0.02 0.06" repeatCount="indefinite"/>
</div>