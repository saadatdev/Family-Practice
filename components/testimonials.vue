<template>
    <section class="py-32 text-gray-900 bg-gray-100">
        <div class="container mx-auto px-4">
            <!-- Title -->
            <h1 class="text-4xl font-bold mb-8 text-center">What our patients are saying</h1>
            <p class="text-center mb-12 text-gray-600">
                We love our patients and our patients love us!
            </p>

            <!-- Testimonials Carousel -->
            <div class="relative overflow-hidden">
                <!-- Fade Effect Left -->
                <div class="absolute inset-y-0 left-0 w-1/6 bg-gradient-to-r from-gray-100 to-transparent z-10"></div>
                <!-- Fade Effect Right -->
                <div class="absolute inset-y-0 right-0 w-1/6 bg-gradient-to-l from-gray-100 to-transparent z-10"></div>

                <div ref="carousel" class="flex transition-transform duration-700 ease-in-out"
                    :style="{ transform: `translateX(-${currentIndex * (100 / testimonials.length)}%)` }"
                    @touchstart="startTouch" @touchmove="moveTouch" @touchend="endTouch">
                    <div v-for="(testimonial, index) in testimonials" :key="testimonial.id"
                        class="flex-none w-full sm:w-1/2 lg:w-1/3 p-4">
                        <div class="bg-white rounded-lg shadow-lg p-6 h-full space-y-4">
                            <div class="flex items-center justify-between mb-4">
                                <div class="flex items-center space-x-2 text-gray-500">
                                    <i class="fas fa-calendar-alt"></i>
                                    <span>{{ testimonial.date }}</span>
                                </div>
                                <!-- Star Rating -->
                                <div class="text-yellow-400">
                                    <i class="fas fa-star" v-for="n in 5" :key="n"></i>
                                </div>
                            </div>
                            <h3 class="text-xl font-semibold mb-2">{{ testimonial.title }}</h3>
                            <p class="text-gray-700 mb-4">"{{ testimonial.feedback }}"</p>
                            <div class="flex items-center justify-between text-gray-500">
                                <span class="text-sm">— {{ testimonial.patient }}</span>
                                <a href="#" class="text-green-600 hover:underline">Read more →</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';

const testimonials = [
    { id: 1, title: 'Couldn’t be less worry free…', date: 'Nov 19, 2022', feedback: 'Excellent customer service, quality service, and products. No complaints. The entire experience has been pleasant from order ease and efficient delivery.', patient: 'John Doe' },
    { id: 2, title: 'Excellence!', date: 'Nov 16, 2022', feedback: 'Integrity Family Practice  has always been great. Their services are always hassle-free, and my doctor has been amazing. I have nothing but praise for the Integrity Family Practice  staff.', patient: 'Jane Smith' },
    { id: 3, title: 'Very Happy!', date: 'Nov 10, 2022', feedback: 'The process was simple, the care was excellent, and I had no issues throughout. I’m happy with the treatment I received.', patient: 'Samuel Green' },
    { id: 4, title: 'Highly Recommend!', date: 'Nov 1, 2022', feedback: 'Integrity Family Practice  makes healthcare easy and accessible. I felt supported throughout my treatment.', patient: 'Emily White' },
    { id: 5, title: 'Fantastic Experience!', date: 'Oct 28, 2022', feedback: 'I had a seamless experience with Integrity Family Practice . The team was responsive and professional.', patient: 'Michael Brown' },
    { id: 6, title: 'Great Service!', date: 'Oct 20, 2022', feedback: 'Fast service and friendly staff. Highly recommend to others!', patient: 'Linda Green' }
];

const currentIndex = ref(0);
let startX = 0;

const moveToNextTestimonial = () => {
    currentIndex.value = (currentIndex.value + 1) % testimonials.length;
};

const startTouch = (event: TouchEvent) => {
    startX = event.touches[0].clientX;
};

const moveTouch = (event: TouchEvent) => {
    const touchX = event.touches[0].clientX;
    const deltaX = startX - touchX;

    if (deltaX > 50) { // swipe left
        moveToNextTestimonial();
    } else if (deltaX < -50) { // swipe right
        currentIndex.value = (currentIndex.value - 1 + testimonials.length) % testimonials.length;
    }
};

const endTouch = () => {
    // Reset startX for the next touch event
    startX = 0;
};

onMounted(() => {
    setInterval(moveToNextTestimonial, 2000); // Change testimonial every 4 seconds
});
</script>

<style scoped>
.bg-white {
    height: 100%;
    /* Ensures consistent height for testimonial boxes */
}

.card {
    transition: transform 0.2s ease;
}

.card:hover {
    transform: scale(1.05);
}
</style>
