<style>
	h1 {
		text-align: center;
		margin: 0 auto;
		font-size: 2.8em;
		font-weight: 700;
		color: var(--color-main);
		text-shadow: 5px 5px var(--color-second);
	}

	a.nyrst-link {
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

<p><code>brrr</code> is now deprecated and you are invited to use <a href="https://asdf-vm.com/">asdf-vm</a> instead. Read the <a href="https://ehret.me/en/brrr-the-end.html">announcement</a>. All files and binaries remain available.</p>

<a class="nyrst-link" href="https://brrr.nyrst.tools">
	<span class="name">🔧 brrr</span>
	<span class="description">Yet another package manager</span>
</a>
<a class="nyrst-link" href="/freezer">
	<span class="name">❄️ freezer</span>
	<span class="description">Package definitions for brrr</span>
</a>

<p>Some packages are not in the official <a href="https://github.com/asdf-vm/asdf-plugins">asdf plugins list</a> are available in the Nyrst organization:</p>

<a class="nyrst-link" href="https://github.com/nyrst?q=asdf-&type=&language=&sort=">
	<span class="name">🔧 asdf plugins</span>
	<span class="description">Various plugins for the asdf package manager</span>
</a>

<figure>
	<picture>
		<source type='image/avif' srcset='nyrst.avif'>
		<img alt='Miss Forest / 森の子 (Nara Yoshitomo)' src='nyrst.png'>
	</picture>
	<figcaption>Miss Forest / 森の子 (Nara Yoshitomo)</figcaption>
</figure>