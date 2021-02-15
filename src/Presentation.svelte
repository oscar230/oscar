<script>
    export let imgSrc;
    export let imgAlt;
    export let title;
</script>

<style>
    div {
        margin: auto;
		width: 50%;
    }
    h1 {
        position: relative;
        top: -5em;
        left: -5em;
        font-size: larger;
    }
    img {
        width: 100%;
        height: auto;
    }
</style>

<div>
    <img src="{ imgSrc }" alt="{ imgAlt }">
    <h1>{ title }</h1>
</div>