<script>
	import { page } from '$app/stores';
</script>

<nav>
	<ul>
		<li><a aria-current={$page.path === `/` ? 'page' : undefined} href="/">nyrst.tools</a></li>
		<li><a aria-current={$page.path === `/brrr` ? 'page' : undefined} href="/brrr">🔧 brrr</a></li>
		<li>
			<a aria-current={$page.path === '/freezer' ? 'page' : undefined} href="/freezer">❄️ freezer</a
			>
		</li>
	</ul>

	<a class="nyrst" href="https://github.com/nyrst/">⌨️</a>
</nav>

<style>
	nav {
		display: flex;
		justify-content: space-between;
		align-items: center;
		font-weight: bold;
		background: var(--back);
		border-bottom: 0.3rem solid var(--second);
	}

	ul {
		display: flex;
		list-style: none;
		margin: 0;
		padding: 0;
	}

	a {
		text-decoration: none;
		border-bottom: none;
		padding: 1rem;
		display: block;
		border-top: 0.3rem solid transparent;
	}

	a:active,
	a:focus,
	a:hover,
	a[aria-current] {
		border-top-color: var(--prime);
	}

	a.nyrst {
		font-size: 3rem;
		padding: 0 1rem;
	}
</style>
