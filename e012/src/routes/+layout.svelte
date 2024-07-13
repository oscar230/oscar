<script>
	import Header from './Header.svelte';
	import '../app.css';
	import '../fonts.css';
    import { onMount } from 'svelte';

    onMount(() => {
        const elements = document.querySelectorAll('p, h1, h2, h3, h4, h5, h6');
        elements.forEach(el => {
            if (Math.random() < 0.25) { // 25% chance
                const randomClass = `rotate-${Math.ceil(Math.random() * 4)}`;
                el.classList.add(randomClass);
            }
        });
    });
</script>

<div class="app">
	<Header />

	<main>
		<slot />
	</main>
</div>

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		max-width: 64rem;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>