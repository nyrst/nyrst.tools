<script context="module">
	export async function preload() {
		const resApps = await this.fetch("https://raw.githubusercontent.com/nyrst/freezer/main/data/apps.json");
		const data = await resApps.json();

		const apps = data.sort((a, b) => {
			const nameA = a.name.toUpperCase();
			const nameB = b.name.toUpperCase();
			if (nameA < nameB) {
				return -1;
			}

			if (nameA > nameB) {
				return 1;
			}

			return 0;
		});

		return { apps };
	}
</script>

<script>
	import App from '../../components/freezer/App.svelte';

	export let apps;

	let filteredApps = apps;
	let archKey = "all"

	const filter = arch => () => {
		if (arch) {
			archKey = arch;
			filteredApps = apps.filter(a => a.archs.includes(arch))
		} else {
			archKey = "all";
			filteredApps = apps;
		}
	}
</script>

<svelte:head>
	<title>freezer - nyrst.tools</title>
</svelte:head>

<style>
	nav	{
		margin-bottom: 1rem;
		display: flex;
	}

	nav button {
		display: inline-flex;
		flex-direction: column;
		margin: 0;
		padding: .5rem 1rem;
		border-radius: 0;
		border: 1px solid var(--color-second);
		background: var(--color-second);
		font-weight: 300;
	}

	nav button::after {
		content: attr(title);
		height: 0;
		visibility: hidden;
		overflow: hidden;
		font-weight: bold;
		user-select: none;
		pointer-events: none;
	}
	
	nav button:first-child {
		border-top-left-radius: .5rem;
		border-bottom-left-radius: .5rem;
	}
	
	nav button:last-child {
		border-top-right-radius: .5rem;
		border-bottom-right-radius: .5rem;
	}

	nav button.enabled,
	nav button:active,
	nav button:focus,
	nav button:hover {
		color: #fff;
		background: var(--color-main);
		border: 1px solid var(--color-main);
		font-weight: bold;
	}
</style>

<h1>Available apps in the freezer repository</h1>

<nav>
	<button class:enabled={archKey === "all"} on:click={filter()} title="All">All</button>
	<button class:enabled={archKey === "linux"} on:click={filter("linux")} title="Linux">Linux</button>
	<button class:enabled={archKey === "macos"} on:click={filter("macos")} title="MacOS">MacOS</button>
	<button class:enabled={archKey === "macosarm"} on:click={filter("macosarm")} title="MacOS ARM">MacOS ARM</button>
</nav>

{#each filteredApps as app}
	<App {app} />
{/each}

<p>Learn mode about <a href="https://brrr.nyrst.tools/contributing/package-definition.html">package definitions</a>.</p>