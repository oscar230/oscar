<svelte:head>
	<title>About E012</title>
	<meta name="description" content="About E012" />
</svelte:head>

<script>
    import Typewriter, { cascade } from 'svelte-typewriter'
</script>

<div>
    <h1>Contact</h1>
    <ul>
        <li>Instagram: <a href="https://www.instagram.com/oscar_erik_andersson/" target="_blank" rel="noopener noreferrer"></a></li>
        <li>Chat: <a href="https://matrix.to/#/@oscarandersson:matrix.org" target="_blank" rel="noopener noreferrer">@oscarandersson:matrix.org</a></li>
        <li>Email: <a href="mailto:webmasterwonky@duck.com" target="_blank" rel="noopener noreferrer">webmasterwonky@duck.com</a></li>
    </ul>
    <br />
    <p>AGE Public key:
        <Typewriter keepCursorOnFinish={true} mode={"scramble"} scrambleDuration={500}>
            <code>age1k5hg5g43x3pvxy3qylarkq90xxmulnugynm5w5vy0s47hhkdgg5qdwx9k8</code>
        </Typewriter>
    </p>
</div>