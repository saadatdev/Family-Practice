export enum ServicesCategory {
    all = "Popular",
    mentalHealth = "Mental Health",
    mensHealth = "Men's Health",
    womensHealth = "Women's Health",
    skin = "Skin",
    generalHealth = "General Health",
    testing = "Testing",
    weightLoss = "Weight Loss",
}

export const useServiceCategory = () => useState('service-category', () => ServicesCategory.all);
export const useAvailableServiceCategories = () => useState('available-service-categories', () => ServicesCategory);