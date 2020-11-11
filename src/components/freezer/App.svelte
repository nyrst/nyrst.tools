<script>
	export let app;

	const copy = name => () => navigator.clipboard.writeText(`brrr i ${name}`).then(() => {}, (err) => {});
</script>

<style>
	h3 {
		display: inline;
	}

	summary {
		cursor: pointer;
	}
</style>

<details>
	<summary><h3>{app.name}</h3></summary>

	<ul>
		<li>Latest version: {app.latest_version}</li>
		<li>Available for: {app.archs}</li>
		<li>Install: <code>brrr i {app.name}</code> <button on:click={copy(app.name)}>📋</button></li>
	</ul>
</details>