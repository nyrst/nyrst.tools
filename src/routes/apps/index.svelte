<script context="module">
	export async function preload() {
		const resApps = await this.fetch("/freezer/apps.json");
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
</script>

<svelte:head>
	<title>freezer - nyrst.tools</title>
</svelte:head>

<style>
</style>

<h1>Available apps in the freezer repository</h1>

{#each apps as app}
	<App {app} />
{/each}
