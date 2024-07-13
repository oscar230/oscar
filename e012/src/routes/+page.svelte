<script>
	import Counter from './Counter.svelte';
</script>

<svelte:head>
	<title>E012</title>
	<meta name="description" content="E012 website" />
</svelte:head>

<section>
	<h1>E012</h1>
	<Counter />
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
		width: 100%;
	}
</style>
