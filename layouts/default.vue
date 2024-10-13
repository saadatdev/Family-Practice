<template>
  <div>
    <!-- Header Section -->
    <header class="bg-white border-b border-gray-200 w-full z-50 fixed top-0 left-0">
      <div class="flex flex-row items-center border-b-2 px-10 gap-8" x-data="">
        <div class="border-b-2 border-green-900 py-3 flex">
          <a href="https://demo-smoky-nine.vercel.app" target="_self" role="button" tabindex="1+">
            <p class="text-xs font-medium text-gray-600 ">Family Practice</p>
          </a>
        </div>
        <a href="https://integritymedicalweightloss.com" role="button" target="_blank" rel="noopener noreferrer"
          tabindex="1+">
          <p class="font-semibold text-xs text-gray-600">Weight Loss</p>
        </a>
      </div>

      <!-- Top Nav: Logo, Contact, and Links -->
      <div id="mainheader" class="w-full mx-auto flex justify-between items-center py-3 px-9 bg-custom-teal">
        <!-- Left: Logo and Phone -->
        <div class="flex items-center space-x-4">
          <!-- Logo -->
          <div class="w-40 h-16 relative overflow-visible">
            <img src="../logo.png" alt="Integrity Family Practice" class="absolute top-1/2 left-0 transform -translate-y-1/2 h-24 w-auto object-contain" />
          </div>
          
          <!-- Phone Number -->
          <div class="text-white text-sm flex items-center">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
              class="w-5 h-5 mr-1">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M3 5h6M3 10h3m-3 5h18M21 7V5a2 2 0 00-2-2h-4.586a1 1 0 01-.707-.293l-1.414-1.414A1 1 0 0012 1H6a1 1 0 00-1 1v3H3a2 2 0 00-2 2v12a2 2 0 002 2h18a2 2 0 002-2v-7a2 2 0 00-2-2h-6v-2h6z" />
            </svg>
            <span>888-536-2267</span>
          </div>
        </div>

        <!-- Right: Navigation Links -->
        <nav class="hidden md:flex items-center space-x-8 text-gray-700 text-sm">
          <!-- Health Services Dropdown -->
          <div class="relative group z-50"> <!-- Added z-50 to dropdown -->
            <a href="#" class="hover:text-white flex items-center">
              Health services
              <!-- Dropdown Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 ml-1 text-icon group-hover:text-green-600"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd" />
              </svg>
            </a>
            <!-- Dropdown for Health services -->
            <div class="absolute hidden group-hover:block bg-gray-600 shadow-lg border mt-2 w-48 z-50">
              <!-- Added z-50 to dropdown menu -->
              <ul class="py-2">
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Erectile Dysfunction</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Anxiety</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Depression</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Birth Control</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Hair Loss</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Insomnia</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Acne</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Cold Sore</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Asthma</a></li>
              </ul>
            </div>
          </div>

          <a href="#" class="hover:text-green-600">Meet your medical team</a>
          <a href="#" class="hover:text-green-600">Healthaid blog</a>

          <!-- About Us Dropdown -->
          <div class="relative group z-50"> <!-- Added z-50 to dropdown -->
            <a href="#" class="hover:text-green-600 flex items-center">
              About us
              <!-- Dropdown Icon -->
              <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4 ml-1 text-icon group-hover:text-green-600"
                viewBox="0 0 20 20" fill="currentColor">
                <path fill-rule="evenodd"
                  d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
                  clip-rule="evenodd" />
              </svg>
            </a>
            <!-- Dropdown for About us -->
            <div class="absolute hidden group-hover:block bg-gray-600 shadow-lg border mt-2 w-48 z-50">
              <!-- Added z-50 to dropdown menu -->
              <ul class="py-2">
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Company</a></li>
                <li><a href="#" class="block px-4 py-2 hover:bg-gray-100">Careers</a></li>
              </ul>
            </div>
          </div>

          <a href="#" class="hover:text-green-600">FAQs</a>
          <button
            class="btn btn-outline px-8 border-green-600 text-white rounded-full hover:bg-sec-button hover:text-white transition">Sign
            In</button>
        </nav>

        <!-- Mobile Menu Button -->
        <button class="block md:hidden btn btn-square btn-ghost">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
            class="inline-block h-6 w-6 stroke-gray-700">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
          </svg>
        </button>
      </div>

      <!-- Banner CTA -->
      <div
        class="w-full bg-gradient-to-r from-teal-600 to-green-600 flex justify-center items-center text-white py-3 relative z-40"
        :class="{ 'hidden': !ctaVisible }">
        <!-- Added z-40 to Banner CTA to make sure dropdown is above -->
        <div class="text-sm">Now available: A faster way to treat ED. Stendra® works in as little as 15 minutes.</div>
        <a href="#"
          class="ml-4 bg-white text-green-600 px-4 py-2 rounded-full text-sm font-semibold hover:bg-gray-100">Get
          started!</a>
        <button @click="hideCta" class="absolute right-4 text-white text-lg">
          &times;
        </button>
      </div>
    </header>

    <!-- Main content slot -->
    <main class="pt-32">
      <slot />
    </main>
  </div>
</template>

<script setup lang="ts">
var ctaVisible = ref(true)


function hideCta() {
  ctaVisible.value = false
}
</script>

<style scoped>
/* Custom styling for the header and dropdowns */
header nav a {
  font-weight: 500;
  color:white
}

nav a:hover {
  color: goldenrod
  /* Green hover color */
}
#mainheader {

}

</style>
