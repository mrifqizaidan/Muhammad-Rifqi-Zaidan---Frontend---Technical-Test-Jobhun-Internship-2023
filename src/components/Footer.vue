<template>
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
</template>

<script>
export default {
  name: "FooterSection",
};
</script>

<style>
  /* styling for the footer goes here */
</style>
