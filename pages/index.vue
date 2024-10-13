<template>
  <Hero />
  <Categories />
  <!-- <Whatis /> -->
  <Services />
  <Howitworks />
  <Testimonials />
  <Footer />
</template>

<script setup lang="ts">
import Howitworks from '~/components/howitworks.vue';
import Services from '~/components/services.vue';

</script>

<style>
/* Hide scrollbar for Chrome, Safari and Opera */
*::-webkit-scrollbar {
  display: none;
}

/* Hide scrollbar for IE, Edge and Firefox */
* {
  -ms-overflow-style: none;
  /* IE and Edge */
  scrollbar-width: none;
  /* Firefox */
}
</style>