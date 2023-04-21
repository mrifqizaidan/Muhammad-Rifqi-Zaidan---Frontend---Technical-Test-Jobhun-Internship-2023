<template>
  <div>
    <h1>Daftar Film</h1>
    <ul class="film-list">
      <li v-for="show in shows" :key="show.show.id">
        <div class="film-image">
          <img :src="show.show.image.medium" :alt="show.show.name" />
        </div>
        <h2>{{ show.show.name }}</h2>
      </li>
    </ul>
    <footer>
      <img :src="require('@/assets/jobhun.jpg')" alt="Jobhun Logo" />
      <p>Jobhun - PT Jobhun Membangun Indonesia</p>
      <p>Website : https://jobhun.id </p>
      <p>Phone: +6281252982369 / +628113235533 | Email: info@jobhun.id</p>
      <p>
        Jl. Dharmawangsa No. 33B, Airlangga, Gubeng, Surabaya, Jawa Timur,
        Indonesia 60286
      </p>
      <p>&copy; {{ new Date().getFullYear() }} Jobhun. All rights reserved.</p>
    </footer>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      shows: [],
    };
  },
  mounted() {
    axios
      .get("http://api.tvmaze.com/search/shows?q=girls")
      .then((response) => {
        this.shows = response.data;
      })
      .catch((error) => {
        console.log(error);
      });
  },
};
</script>

<style>


.film-list {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  margin: 0;
  padding: 0;
}
.film-list li {
  flex-basis: calc(50% - 1rem);
  margin-right: 1rem;
  margin-bottom: 1rem;
  padding: 1rem;
  background-color: rgb(0, 238, 178);
  border-radius: 0.5rem;
  box-shadow: 0 2px 2px rgba(0,0,0,0.1);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
}
.film-list li:last-child {
  margin-right: 0;
}
.film-image {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 200px;
}
.film-image img {
  max-height: 100%;
  max-width: 100%;
}
.film-list li h2 {
  margin-top: 1rem;
  margin-bottom: 0;
  font-size: 1.2rem;
}

body {
  background-image: url("../assets/office.jpg");
  background-size: cover;
  background-position: center center;
  background-attachment: fixed;
}
h1,h2,p , h3 {
  font-family: "Times New Roman", Times, serif;
  color : white;
}
</style>
