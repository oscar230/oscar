<svelte:head>
	<title>E012</title>
	<meta name="description" content="E012 website" />
</svelte:head>

<script>
    import Typewriter, { cascade } from 'svelte-typewriter'
</script>

<section>
	<h1>E012</h1>
	<Typewriter keepCursorOnFinish={true} interval={90} mode={"loopOnce"} wordInterval={1000}>
		<p>DJ and technology enthusiast.</p>
		<p>Techno DJ and computer geek.</p>
		<p>Recreational techno DJ with a passion for computers.</p>
		<p>Recreational techno DJ and self proclaimed computer genius.</p>
	</Typewriter>
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 0.6;
	}

	h1 {
		font-size: 10vw;
		margin-bottom: 0.5rem;
	}
</style>
