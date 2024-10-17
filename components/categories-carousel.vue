<template>
    <div class="relative w-full px-4 " v-if="getSelectedServices().length > 0">
        <div class="max-w-7xl mx-auto">
            <div ref="carousel"
                class="flex space-x-6 overflow-x-auto scrollbar-hide scroll-smooth pb-4">
                <div v-for="service in getSelectedServices()" :key="service.image"
                    class="flex-none w-full sm:w-1/2 md:w-1/3 lg:w-1/4 transition-all duration-300 ease-in-out">
                    <div class="relative">
                        <img class="w-full h-48 object-cover rounded-lg" :src="service.image" :alt="service.category" />
                        <div class="absolute top-2 left-2 flex space-x-2">
                            <div v-if="service.new" class="bg-yellow-400 px-2 py-1 rounded-full text-xs font-semibold text-yellow-900">
                                New
                            </div>
                            <div class="bg-white bg-opacity-75 px-2 py-1 rounded-full">
                                <span class="text-xs font-medium text-gray-800">{{ service.category }}</span>
                            </div>
                        </div>
                    </div>
                    <h3 class="mt-2 text-lg font-semibold text-gray-800">{{ service.category }}</h3>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { ServicesCategory, useServiceCategory } from '~/composables/useState';

interface Service {
    image: string;
    category: string;
    new: boolean;
}

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


function getSelectedServices(): Array<Service> {
    if (selectedServiceCategory.value == ServicesCategory.all) return services;
    return services.filter(v => v.category == selectedServiceCategory.value);
}

const scrollLeft = () => {
    if (carousel.value) {
        carousel.value.scrollBy({
            left: -carousel.value.clientWidth * 0.5,
            behavior: 'smooth'
        });
    }
};

const scrollRight = () => {
    if (carousel.value) {
        carousel.value.scrollBy({
            left: carousel.value.clientWidth * 0.5,
            behavior: 'smooth'
        });
    }
};

defineExpose({ scrollLeft, scrollRight });
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