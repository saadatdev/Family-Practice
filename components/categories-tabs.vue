<template>
    <div class="mb-6">
        <div class="">
            <div class="flex items-center justify-between max-w-6xl">
                <div role="tablist" class="tabs flex-grow overflow-x-auto scrollbar-hide whitespace-nowrap">
                    <button 
                        v-for="category in serviceCategories" 
                        role="tab"
                        class="tab text-gray-600 text-sm md:text-base font-medium px-4 py-2 mr-2  relative group"
                        :class="{
                            'text-green-800': selectedServiceCategory == category,
                        }"
                        v-on:click="setActive(category)"
                    >
                        <span class="relative">
                            {{ category }}
                            <!-- Underline that matches text width -->
                            <span 
                                v-if="selectedServiceCategory == category"
                                class="absolute left-0 -bottom-0 w-full h-0.5 bg-green-800"
                            ></span>
                        </span>
                    </button>
                </div>
                
                <div class="flex items-center ml-10 space-x-2 justify-between">
                    <button @click="$emit('scrollLeft')" class="text-icon hover:text-green-800 transition-colors duration-300">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M11 15l-3-3m0 0l3-3m-3 3h8M3 12a9 9 0 1118 0 9 9 0 01-18 0z" />
                        </svg>
                    </button>
                    <button @click="$emit('scrollRight')" class="text-icon hover:text-green-800 transition-colors duration-300">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M13 9l3 3m0 0l-3 3m3-3H8m13 0a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>


<script setup lang="ts">
import { ServicesCategory, useAvailableServiceCategories, useServiceCategory } from '~/composables/useState';

const selectedServiceCategory = useServiceCategory();
const serviceCategories = Object.values(useAvailableServiceCategories().value)

function setActive(category: ServicesCategory) {
    selectedServiceCategory.value = category;
}

defineEmits(['scrollLeft', 'scrollRight']);
</script>

<style scoped>
.scrollbar-hide::-webkit-scrollbar {
    display: none;
}
.scrollbar-hide {
    -ms-overflow-style: none;
    scrollbar-width: none;
}

</style>