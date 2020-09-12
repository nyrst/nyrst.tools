<script context="module">
	import { Remarkable } from 'remarkable';

	export async function preload() {
		const md = new Remarkable();
 
		const resHelp = await this.fetch("https://nyrst.github.io/brrr/README.md");
		const helpText = await resHelp.text();
		const help = md.render(helpText);

		return { help };
	}
</script>

<script>
	export let help;
</script>

<svelte:head>
	<title>brrr - nyrst.tools</title>
</svelte:head>

{@html help}