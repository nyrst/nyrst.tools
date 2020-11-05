<script>
	export let app;
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
		<li><a href="{app.brrr}">Definition file</a></li>
	</ul>
</details>