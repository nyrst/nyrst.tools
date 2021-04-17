<script>
	import Alert from '../lib/Alert.svelte';
</script>

<svelte:head>
	<title>nyrst.tools</title>
</svelte:head>

<h1>nyrst.tools</h1>

<Alert />

<p>
	Some packages are not in the official <a href="https://github.com/asdf-vm/asdf-plugins"
		>asdf plugins list</a
	> are available in the Nyrst organization:
</p>

<a class="nyrst-link" href="https://github.com/nyrst?q=asdf-&type=&language=&sort=">
	<span class="name">🔧 asdf plugins</span>
	<span class="description">Nyrst plugins for the asdf package manager</span>
</a>

<h2>Archeology</h2>

<a class="nyrst-link" href="https://github.com/nyrst/brrr">
	<span class="name">🔧 brrr</span>
	<span class="description">Yet another package manager</span>
</a>
<a class="nyrst-link" href="https://github.com/nyrst/freezer/">
	<span class="name">❄️ freezer</span>
	<span class="description">Package definitions for brrr</span>
</a>

<figure>
	<picture>
		<source type="image/avif" srcset="nyrst.avif" />
		<img alt="Miss Forest / 森の子 (Nara Yoshitomo)" src="nyrst.png" />
	</picture>
	<figcaption>Miss Forest / 森の子 (Nara Yoshitomo)</figcaption>
</figure>

<style>
	h1 {
		text-align: center;
		margin: 0 auto;
		font-size: 2.8em;
		font-weight: 700;
		color: var(--prime);
		text-shadow: 5px 5px var(--second);
	}

	a.nyrst-link {
		display: block;
		margin: 1rem 0;
		padding: 1rem;
		border: 0.3rem solid var(--prime);
		background: var(--back);
		text-decoration: none;
		transition: box-shadow 0.5s;
	}

	a:active,
	a:focus,
	a:hover {
		box-shadow: 0.5rem 0.5rem 0 0 var(--second);
	}

	a .name,
	a .description {
		padding: 1rem;
	}

	a .name {
		font-weight: bold;
	}

	figure {
		text-align: center;
		margin: 5rem 0;
	}

	img {
		width: 100%;
		max-width: 200px;
		margin: 0 0 1rem 0;
	}

	@media (min-width: 480px) {
		h1 {
			font-size: 4rem;
		}
	}
</style>
