<style>
	h1 {
		text-align: center;
		margin: 0 auto;
		font-size: 2.8em;
		font-weight: 700;
		color: var(--color-main);
		text-shadow: 5px 5px var(--color-second);
	}

	a {
		display: block;
		margin: 1rem 0;
		padding: 1rem;
		border: 2px solid var(--color-main);
		background: #fff;
		text-decoration: none;
		transition: box-shadow .5s;
	}

	a:focus,
	a:hover {
		box-shadow: 1px 1px 0 0 var(--color-main);
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
		margin: 0 auto;
		margin: 0 0 1em 0;
	}

	img {
		width: 100%;
		max-width: 200px;
		margin: 0 0 1em 0;
	}

	@media (min-width: 480px) {
		h1 {
			font-size: 4em;
		}
	}
</style>

<svelte:head>
	<title>nyrst.tools</title>
</svelte:head>

<h1>nyrst.tools</h1>

<a href="/brrr">
	<span class="name">🔧 brrr</span>
	<span class="description">Yet another package manager</span>
</a>
<a href="/freezer">
	<span class="name">❄️ freezer</span>
	<span class="description">Package definitions for brrr</span>
</a>

<figure>
	<picture>
		<source type='image/avif' srcset='nyrst.avif'>
		<img alt='Miss Forest / 森の子 (Nara Yoshitomo)' src='nyrst.png'>
	</picture>
	<figcaption>Miss Forest / 森の子 (Nara Yoshitomo)</figcaption>
</figure>
