<template>
    <div class="my-align">
        <h2>Historia wyników</h2>
        <table class="table">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Ruch użytkownika</th>
                <th scope="col">Ruch komputera</th>
                <th scope="col">Kto wygrał?</th>
                <th scope="col">Data rozgrywki</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="game in games" v-bind:key="game.id">
                <th scope="row">{{ game.id }}</th>
                <td>{{ game.choice_user }}</td>
                <td>{{ game.choice_computer }}</td>
                <td>{{ game.who_won }}</td>
                <td>{{ game.created_at }}</td>
                </tr>
            </tbody>
        </table>
    </div>
</template>

<script>

import axios from "axios";

    export default{
        data() {
            return {
                games: []
            }
        },
        created(){
             this.fetchGames();
        },
        methods: {
            fetchGames(){
                axios.get('http://127.0.0.1:8000/games')
                .then(res => this.games = res.data);
            }
        }
    }
</script>

<style lang="scss">

    $topDownMargin: 50px;
    $rightLeftMargin: 0px;

.my-align{
    margin: $topDownMargin $rightLeftMargin;
    h2 {
        text-align: center;
    }
}


</style>