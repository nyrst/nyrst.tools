<script>
	import '../app.css';
	import Nav from '../lib/Nav.svelte';
</script>

<Nav />

<main>
	<slot />
</main>

<style>
	main {
		position: relative;
		max-width: 56em;
		background-color: var(--back);
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	}
</style>
