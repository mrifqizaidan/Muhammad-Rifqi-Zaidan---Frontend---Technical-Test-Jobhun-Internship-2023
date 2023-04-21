<template>
  <div class="about">
    <div class="content">
      <h1>Tentang Kami</h1>
      <div class="image-container">
        <img alt="Jobhun logo" src="../assets/jobhun.jpg" />
        <p class="jobhun-text">
          Jobhun adalah platform yang menyediakan expert terbaik untuk berbagai
          macam proyek pengembangan karier
        </p>
      </div>
    </div>
    <Footer />
  </div>
</template>
<script>
import Footer from '@/components/Footer.vue'

export default {
  name: "AboutView",
  components: {
    Footer
  },
};
</script>
<style>
.about {
  position: relative;
  min-height: 100vh;
}

.content {
  padding-bottom: 600px; 
}

.image-container {
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.image-container img {
  display: block;
  margin: 0 auto;
}

.jobhun-text {
  font-family: "Times New Roman", Times, serif;
  font-size: 1.5em;
  margin-top: 1em;
}

.footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
}
</style>