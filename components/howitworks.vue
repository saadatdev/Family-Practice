<template>
    <section class="bg-white py-56">
        <div class="container mx-auto px-4 flex flex-col lg:flex-row items-center space-y-8 lg:space-y-0 lg:space-x-8">

            <!-- Image Section -->
            <div class="flex-1 max-w-sm md:max-w-md lg:max-w-xl">
                <img src="https://assets.lemonaidhealth.com/web/brochure/images/glp1/2_homepage_family_original.jpg"
                    alt="How it Works Image" class="rounded-lg shadow-md w-full md:w-3/4 object-cover">
            </div>

            <!-- Content Section -->
            <div class="flex-1">
                <h2 class="text-3xl text-center lg:text-start font-semibold mb-4 text-gray-900">How It Works</h2>
                <p class="text-gray-600 text-center lg:text-start mb-6">We’ve made it easy to get the care you need in
                    just a few
                    steps. Whether
                    you're looking for a consultation or prescription medications, here’s how you can get started:</p>

                <ul class="space-y-6">
                    <li class="flex items-start space-x-4">
                        <span class="text-green-600 font-bold text-xl">1.</span>
                        <div>
                            <h3 class="font-semibold text-gray-900">Sign Up & Share Your Symptoms</h3>
                            <p class="text-gray-600">Create an account and tell us about your medical concerns. Whether
                                it's a new symptom or something you need to follow up on, we're here to listen and help.
                            </p>
                        </div>
                    </li>
                    <li class="flex items-start space-x-4">
                        <span class="text-green-600 font-bold text-xl">2.</span>
                        <div>
                            <h3 class="font-semibold text-gray-900">Connect with a Provider</h3>
                            <p class="text-gray-600">Our licensed healthcare professionals will connect with you through
                                a secure video call or chat to discuss your symptoms and answer any questions you may
                                have.</p>
                        </div>
                    </li>
                    <li class="flex items-start space-x-4">
                        <span class="text-green-600 font-bold text-xl">3.</span>
                        <div>
                            <h3 class="font-semibold text-gray-900">Receive Personalized Treatment</h3>
                            <p class="text-gray-600">Based on your consultation, our healthcare provider will create a
                                personalized treatment plan for you, which may include prescriptions, recommendations,
                                or follow-up care.</p>
                        </div>
                    </li>
                    <li class="flex items-start space-x-4">
                        <span class="text-green-600 font-bold text-xl">4.</span>
                        <div>
                            <h3 class="font-semibold text-gray-900">Get Your Medications Delivered</h3>
                            <p class="text-gray-600">Prescriptions are sent to your preferred pharmacy or delivered
                                directly to your door for convenience and privacy. Fast, discreet, and reliable service.
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </section>
</template>

<script setup lang="ts">
</script>

<style scoped>
/* Custom styling for responsiveness */
@media (min-width: 768px) {
    section div img {
        height: 100%;
        object-fit: cover;
    }
}

ul li {
    line-height: 1.6;
}

ul li h3 {
    font-size: 1.125rem;
}

ul li p {
    font-size: 0.975rem;
}
</style>