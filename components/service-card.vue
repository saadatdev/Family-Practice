<template>
    <div class="card-container p-4 w-full sm:w-1/2 lg:w-1/4">
        <div class="card bg-white dark:bg-gray-800 shadow-2xl shadow-green-200 rounded-lg p-6 space-y-4">
            <!-- Tag section -->
            <div class="tags flex items-center space-x-2">
                <span
                    class="tag bg-yellow-200 text-yellow-700 dark:bg-yellow-400 dark:text-yellow-900 rounded-full px-2 py-1 text-xs">
                    {{ category }}
                </span>
                <span v-if="status"
                    class="tag bg-yellow-100 text-yellow-600 dark:bg-yellow-300 dark:text-yellow-800 rounded-full px-2 py-1 text-xs">
                    {{ status }}
                </span>
            </div>
            <!-- Title -->
            <h2 class="text-xl font-bold text-gray-900 dark:text-white">{{ title }}</h2>
            <!-- Description -->
            <p class="text-gray-600 dark:text-gray-300">{{ description }}</p>
            <!-- Arrow link -->
            <div class="text-right">
                <a href="#" class="text-green-600 dark:text-green-400 hover:underline">→</a>
            </div>
        </div>
    </div>
</template>

<script setup>
defineProps({
    title: {
        type: String,
        required: true
    },
    category: {
        type: String,
        required: true
    },
    status: {
        type: String,
        default: null
    },
    description: {
        type: String,
        default: null
    }
});
</script>

<style scoped>
/* Custom card styling */
.card-container {
    max-width: 100%;
}
</style>