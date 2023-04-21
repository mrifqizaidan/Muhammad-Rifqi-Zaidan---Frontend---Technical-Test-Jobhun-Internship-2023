<template>
  <div id="app">
    <nav>
      <div class="navbar-header">
        <h2 style="color: black">Jobhun</h2>
      </div>
      <router-link to="/">Daftar Film</router-link> |
      <router-link to="/about">Tentang Kami</router-link>
    </nav>
    <router-view />
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem;
  background-color: rgb(0, 255, 170);
  color: #fff;
}
nav ul {
  display: flex;
  list-style: none;
}
nav ul li {
  margin-right: 1rem;
}
nav ul li:last-child {
  margin-right: 0;
}
nav ul li a {
  color: rgb(252, 251, 251);
  text-decoration: none;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #eb0808;
}

nav img {
  height: 50px;
  width: 100px;
  margin-right: 1rem;
}

</style>
