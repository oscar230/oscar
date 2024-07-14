<svelte:head>
	<title>About E012</title>
	<meta name="description" content="About E012" />
</svelte:head>

<script>
	import kopimi from '$lib/images/kopimi.png';
</script>

<div class="text-column">
	<h1>About</h1>
	<p>test</p>
	<p>E012.se, no rights reserved! <img src="{kopimi}" alt="The logotype of Kopimi" class="kopimi"></p>
	<h2>Used licenses</h2>
    <p>E012 uses the following fonts under respective licenses:</p>
    <ul>
        <li>
            <p><strong>Elegant Typewriter</strong> Regular, Bold, Light<br>free for non-commercial use only by Lukas Krakora 2014.<br>Paypal donation <a href="mailto:krraaa@yahoo.com">krraaa@yahoo.com</a>.</p>
        </li>
        <li>
            <p><strong>Another Typewriter</strong><br>Freeware by Johan Holmdahl 1999.</p>
        </li>
        <li>
			<p><strong>JMH Typewriter</strong> Regular, Black, Bold, Thin<br>Free for personal use only by jorge Morón.<br>Contact <a href="mailto:joorgemoron@gmail.com">joorgemoron@gmail.com</a>.</p>
        </li>
        <li>
			<p>
            <strong>Volta</strong> Bold V2, Medium Italic V2, Medium V2, Regular<br>Credited to <a href="http://www.onlinewebfonts.com" target="_blank">Web Fonts</a>.</p>
        </li>
    </ul>
</div>

<style>
	.kopimi {
		display: inline;
		width: auto;
		height: 1em;
		position: relative;
		top: 0.1em;
	}
</style>