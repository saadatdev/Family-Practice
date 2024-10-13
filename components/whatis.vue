<template>
    <section class="semaglutide-section py-12" id="semaglutidesection">
        <h3 class="section-title text-4xl font-bold mb-8 animate__animated animate__fadeInUp text-center">What Is
            Semaglutide</h3>
        <div class="container mx-auto flex flex-wrap items-center justify-between gap-8">
            <!-- Image Column -->
            <div class="image-column w-full lg:w-1/2">
                <img loading="lazy" decoding="async"
                    src="https://integritymedicalweightloss.com/wp-content/uploads/2024/06/semaglutide.jpg"
                    alt="Semaglutide"
                    class="semaglutide-image w-full h-auto rounded-lg shadow-lg animate__animated animate__fadeInLeft" />
            </div>
            <!-- Text Column -->
            <div class="text-column w-full lg:w-1/2 animate__animated animate__fadeInRight">
                <h3 class="text-3xl font-semibold text-gray-900 dark:text-white mb-4">SEMAGLUTIDE</h3>
                <p class="text-gray-700 dark:text-gray-300 mb-4">
                    Semaglutide is a synthetic Glucagon-like peptide-1 (GLP-1). GLP-1 is a hormone that boosts insulin
                    production and regulates blood sugar. It slows stomach movement, aids digestion, and influences
                    appetite regulation through brain receptors. The results in a
                    <strong><a style="color: blue;" href="https://www.nejm.org/doi/full/10.1056/NEJMoa2032183">1,961
                            adult persons study</a></strong> are impressive.
                </p>
                <p class="text-gray-700 dark:text-gray-300 mb-4">
                    In this medical study, participants achieved impressive weight loss. On average, they lost 15% of
                    their total body weight, with over a third losing 20% or more.
                </p>
                <p class="text-gray-700 dark:text-gray-300">
                    In summary, Semaglutide increases insulin production and decreases movement through the stomach to
                    allow you to become full faster and stay full longer. Semaglutide also stimulates the brain to
                    decrease appetite.
                </p>
            </div>
        </div>
    </section>
</template>

<script setup>
import { onMounted } from 'vue';
import { gsap } from 'gsap';

onMounted(() => {
    gsap.from('#semaglutidesection .image-column', { opacity: 0, x: -100, duration: 1 });
    gsap.from('#semaglutidesection .text-column', { opacity: 0, x: 100, duration: 1 });
});
</script>

<style scoped>
/* Custom styles for the section */
.semaglutide-section {
    background-color: #f8f9fa;
    /* Light background for contrast */
}

.section-title {
    color: #1f2937;
    /* Dark text */
}

/* Resize image */
.semaglutide-image {
    max-width: 100%;
    /* Ensure image is responsive */
    height: auto;
    /* Maintain aspect ratio */
    width: 80%;
    /* Set maximum width to 80% of its container */
    border-radius: 8px;
    /* Rounded corners for image */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    /* Subtle shadow for depth */
}

/* Ensure proper spacing */
.text-column {
    max-width: 500px;
    /* Set a max width for the text container */
}
</style>