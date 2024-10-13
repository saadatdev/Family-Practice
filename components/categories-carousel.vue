<template>
    <div class="relative flex justify-center items-center w-full" v-if="getSelectedServices().length > 0">
        <!-- Left Button -->
        <button @click="scrollLeft" class="absolute left-0 transform translate-x-1/2 btn p-2 rounded-full z-10">
            &#10094;
        </button>

        <!-- Carousel -->
        <div class="flex self-start justify-center w-full">
            <div ref="carousel"
                class="flex rounded-box bg-gray-200 w-11/12 sm:w-5/6 md:w-3/4 space-x-4 p-2 overflow-x-scroll whitespace-nowrap scroll-smooth">
                <!-- Dynamically adjust width based on the number of services -->
                <div v-for="service in getSelectedServices()" :key="service.image" :class="{
                    'w-full': true,  // Always full width on mobile
                    'md:w-1/2 lg:w-1/4': true  // Adjust size only on medium and larger screens
                }" class="flex-none relative transition-all duration-300 ease-in-out">
                    <img class="rounded-box w-full h-auto object-cover" :src="service.image" />
                    <div class="absolute top-3 left-3 flex space-x-4">
                        <div v-if="service.new" class="bg-yellow-200 bg-opacity-80 px-2 rounded-full">
                            <span class="text-xs text-gray-800">New</span><br />
                        </div>
                        <div class="bg-white bg-opacity-80 px-2 rounded-full">
                            <span class="text-xs text-gray-800">{{ service.category }}</span><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Right Scroll -->
        <button @click="scrollRight" class="absolute right-0 transform -translate-x-1/2 btn p-2 rounded-full z-10">
            &#10095;
        </button>
    </div>
</template>

<script setup lang="ts">
import { ServicesCategory, useServiceCategory } from '~/composables/useState';

interface Service {
    image: string;
    category: string;
    new: boolean;
}

/* Attributes */
const carousel = ref<HTMLElement | null>(null);
const selectedServiceCategory = useServiceCategory();


const services: Array<Service> = [
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/glp-1s.jpg",
        category: ServicesCategory.weightLoss,
        new: true,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/erectile-dysfunction.jpg",
        category: ServicesCategory.mensHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/depression.jpg",
        category: ServicesCategory.mentalHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/anxiety.jpg",
        category: ServicesCategory.mentalHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/birth-control.jpg",
        category: ServicesCategory.womensHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/hair-loss.jpg",
        category: ServicesCategory.mensHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/uti.jpg",
        category: ServicesCategory.womensHealth,
        new: false,
    },
    {
        image: "https://assets.lemonaidhealth.com/web/brochure/images/homepage-rebrand/tiles-lg/genital-herpes.jpg",
        category: ServicesCategory.generalHealth,
        new: false,
    }
]




/* Helper Functions */
function getSelectedServices(): Array<Service> {
    if (selectedServiceCategory.value == ServicesCategory.all) return services;

    return services.filter(v => v.category == selectedServiceCategory.value);
}


const scrollLeft = () => {
    if (carousel.value) {
        carousel.value.scrollBy({
            left: -carousel.value.clientWidth * 0.5, // Scroll left by the width of the container
            behavior: 'smooth'
        });
    }
};

const scrollRight = () => {
    if (carousel.value) {
        carousel.value.scrollBy({
            left: carousel.value.clientWidth * 0.5, // Scroll right by the width of the container
            behavior: 'smooth'
        });
    }
};
</script>

<style scoped>
/* Additional Styles for Consistency */
.carousel-item {
    height: 300px;
    /* Set a consistent height */
}

.carousel-img {
    object-fit: cover;
    /* Ensures images fill the space without distortion */
}

.carousel-buttons {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
}
</style>