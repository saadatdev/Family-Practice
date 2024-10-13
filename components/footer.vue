<template>
    <footer class="border-t border-gray-300 text-gray-600 py-12">
        <div class="container mx-auto px-4">
            <!-- Footer Grid -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                <!-- Section 1: Links -->
                <div>
                    <h3 class="text-gray-800 text-xl font-bold mb-4">Quick Links</h3>
                    <ul>
                        <li class="mb-2">
                            <a href="#" class="hover:text-white transition">Home</a>
                        </li>
                        <li class="mb-2">
                            <a href="#" class="hover:text-white transition">About Us</a>
                        </li>
                        <li class="mb-2">
                            <a href="#" class="hover:text-white transition">Services</a>
                        </li>
                        <li class="mb-2">
                            <a href="#" class="hover:text-white transition">Contact</a>
                        </li>
                        <li class="mb-2">
                            <a href="#" class="hover:text-white transition">Privacy Policy</a>
                        </li>
                    </ul>
                </div>

                <!-- Section 2: Contact Info -->
                <div>
                    <h3 class="text-gray-800 text-xl font-bold mb-4">Contact Us</h3>
                    <ul>
                        <li class="mb-2">
                            <i class="fas fa-map-marker-alt mr-2"></i>1234 Health St, Suite 100
                        </li>
                        <li class="mb-2">
                            <i class="fas fa-phone mr-2"></i>(123) 456-7890
                        </li>
                        <li class="mb-2">
                            <i class="fas fa-envelope mr-2"></i>info@clinic.com
                        </li>
                    </ul>
                </div>

                <!-- Section 3: Contact Form -->
                <div>
                    <h3 class="text-gray-800 text-xl font-bold mb-4">Get in Touch</h3>
                    <form @submit.prevent="submitForm">
                        <div class="mb-4">
                            <input v-model="form.name" type="text"
                                class="w-full bg-gray-200 text-gray-400 p-3 rounded focus:outline-none focus:ring-2 focus:ring-green-500"
                                placeholder="Your Name" required />
                        </div>
                        <div class="mb-4">
                            <input v-model="form.email" type="email"
                                class="w-full bg-gray-200 text-gray-400 p-3 rounded focus:outline-none focus:ring-2 focus:ring-green-500"
                                placeholder="Your Email" required />
                        </div>
                        <div class="mb-4">
                            <textarea v-model="form.message"
                                class="w-full bg-gray-200 text-gray-400 p-3 rounded focus:outline-none focus:ring-2 focus:ring-green-500"
                                rows="4" placeholder="Your Message" required></textarea>
                        </div>
                        <button type="submit"
                            class="bg-custom-teal text-white py-3 px-6 rounded hover:bg-green-600 transition">
                            Send Message
                        </button>
                    </form>
                </div>
            </div>

            <!-- Footer Bottom: Copyright -->
            <div class="border-t border-gray-700 mt-8 pt-4 text-center text-sm">
                <p>© 2024 Clinic. All Rights Reserved.</p>
            </div>
        </div>
    </footer>
</template>

<script setup>
import { ref } from 'vue';

const form = ref({
    name: '',
    email: '',
    message: '',
});

const submitForm = () => {
    // Logic for handling form submission (e.g., send to server)
    console.log('Form Submitted:', form.value);
};
</script>

<style scoped></style>