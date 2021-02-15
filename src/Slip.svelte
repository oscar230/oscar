<script>
    export let htmlContent;
</script>

<style>
    .content {
        display: block;
        position: absolute;
        top: 4vh;
        left: 46vw;
        width: 45vw;
        height: 70vh;
        font-size: 2.3vw;
        color: #ffc048;
        text-shadow: 1px 1px #ffa801, 2px 2px #ffa801;
        opacity: 80%;
    }
</style>

<div>
    <span class="content">{ @html htmlContent }</span>
</div>