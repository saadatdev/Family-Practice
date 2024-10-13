<template>
    <div class="inline-block px-3 py-1 bg-yellow-200 text-yellow-800 rounded-full text-sm font-bold mr-2">
        <span>{{ label }}</span>
        <span v-if="status" class="bg-yellow-300 rounded-full px-2 py-0.5 text-xs font-medium">{{ status }}</span>
    </div>
</template>

<script setup>
defineProps({
    label: {
        type: String,
        required: true
    },
    status: {
        type: String,
        default: null
    }
});
</script>

<style scoped>
/* Custom tag styling */
</style>