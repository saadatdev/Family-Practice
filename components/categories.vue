<template>
    <div class=" min-h-screen">
      <div class="container mx-auto px-4 py-12">
        <h1 class="text-3xl font-bold text-gray-800 mb-8 items-center text-center">Our Services</h1>
        <ServiceSelectionTabs @scrollLeft="scrollLeft" @scrollRight="scrollRight" />
        <ServiceCarousel ref="carouselRef" />
      </div>
    </div>
  </template>

<script setup lang="ts">
import ServiceSelectionTabs from './categories-tabs.vue';
import ServiceCarousel from './categories-carousel.vue';
import { ref } from 'vue';

const carouselRef = ref(null);

const scrollLeft = () => {
    if (carouselRef.value) {
        carouselRef.value.scrollLeft();
    }
};

const scrollRight = () => {
    if (carouselRef.value) {
        carouselRef.value.scrollRight();
    }
};
</script>