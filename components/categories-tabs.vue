<template>
    <div role="tablist"
        class="tabs self-center bg-custom-teal  tabs-boxed flex w-5/6 overflow-x-scroll md:w-fit justify-center p-4 rounded-box">
        <button v-for="category in serviceCategories" role="tab"
            class="tab text-white self-center flex h-fit text-sm md:text-md py-2"
            :class="{ 'active': selectedServiceCategory == category }" v-on:click="setActive(category)">
            {{ category }}
        </button>
    </div>
</template>

<script setup lang="ts">
import { ServicesCategory, useAvailableServiceCategories, useServiceCategory } from '~/composables/useState';

const selectedServiceCategory = useServiceCategory();
const serviceCategories = Object.values(useAvailableServiceCategories().value)
console.log(serviceCategories)

function setActive(category: ServicesCategory) {
    selectedServiceCategory.value = category;
}
</script>

<style scoped>
.active {
    background-color: rgb(0, 175, 0);
    font-weight: bold;
    transition: all ease-in-out;
}
</style>