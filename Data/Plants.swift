//
//  Plants.swift
//  HUEY

import SwiftUI

let Plants: [Plant] = [

    /*
     Flowering Plants
     */
    
    //English Daisy
    Plant(name: "English Daisy", description: "A wonderful cool-season perennial, English daisy boasts cheery blooms as long as the weather is mild.", image: "english-daisy", type: "Perennial", propagation: "Seed", light: "Part Sun, Sun", category: "Flowering Plants", scientificName: "Bellis Perennis"),
    
    //Chinese Ground Orchid
    Plant(name: "Chinese Ground Orchid", description: "A deer-resistant, Chinese ground orchid has small pinkish-purple flowers for weeks in summer spring.", image: "chinese-ground-orchid", type: "Bulb, Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Flowering Plants", scientificName: "Bletilla Striata"),
    
    //Miniature Rose
    Plant(name: "Miniature Rose", description: "Miniature roses first came into being in the early 1930s as an accidental result of rose hybridizing.", image: "miniature-rose", type: "Rose", propagation: "Stem Cuttings", light: "Part Sun, Sun", category: "Flowering Plants", scientificName: "Rosa Chinensis Minima"),
    
    //Borage
    Plant(name: "Borage", description: "Sparkling sky-blue blooms dance atop the fuzzy stems and leaves of borage, comes back from a seed.", image: "borage", type: "Herb, Annual", propagation: "Seed", light: "Part Sun, Sun", category: "Flowering Plants", scientificName: "Borago Officinalis"),
    
    //Poppy Flower
    Plant(name: "Poppy Flower", description: "With their glorious crepe-paperlike blooms in a variety of hues, annual poppies add color to the garden.", image: "poppy", type: "Annual", propagation: "Seed", light: "Sun", category: "Flowering Plants", scientificName: "Papaver"),
    
    //Bush Morning Glory
    Plant(name: "Bush Morning Glory", description: "They form small mounds of brightly tricolor blooms for long periods self seed for years of color.", image: "morning-glory", type: "Annual", propagation: "Seed", light: "Sun", category: "Flowering Plants", scientificName: "Ipomoea Carnea"),
    
    //African Iris
    Plant(name: "African Iris", description: "Its sturdy, reed-like foliage is evergreen and a wonderful accent plant in the landscape.", image: "african-iris", type: "Bulb, Perennial", propagation: "Division", light: "Part Sun, Sun", category: "Flowering Plants", scientificName: "Dietes"),
    
    //Verbena
    Plant(name: "Verbena", description: "Verbena is the ideal plant to cascade over retaining walls, containers, baskets, and window boxes.", image: "verbena-plant", type: "Annual", propagation: "Seed, Stem Cuttings", light: "Sun", category: "Flowering Plants", scientificName: "Verbena"),
    
    /*
     Conifers, cycads and allies
     */
    
    //Fir
    Plant(name: "Fir", description: "Fir, a tree that is part of the pine family, brings a pyramidal form, and mountain to residential landscapes.", image: "fir", type: "Tree", propagation: "Seed, Stem Cuttings", light: "Sun", category: "Conifers", scientificName: "Abies"),
    
    //Spruce Tree
    Plant(name: "Spruce Tree", description: "Both graceful and boldly upright, spruce takes on many different shapes in the various/most landscapes.", image: "spruce", type: "Shrub, Tree", propagation: "Grafting, Seed, Stem Cuttings", light: "Sun", category: "Conifers", scientificName: "Picea"),
    
    //Arborvitae
    Plant(name: "Arborvitae", description: "These slow-growing trees create dense evergreen foliage that can make excellent “living walls” at your home.", image: "arborvitae", type: "Shrub, Tree", propagation: "Stem Cuttings", light: "Part Sun, Sun", category: "Conifers", scientificName: "Thuja"),
    
    //Juniper
    Plant(name: "Juniper", description: "Versatile and tough, junipers offer reliable evergreen color and texture to just about any garden.", image: "juniper", type: "Shrub", propagation: "Layering, Seed, Stem Cuttings", light: "Part Sun, Sun", category: "Conifers", scientificName: "Juniperus"),
    
    //Larch Tree
    Plant(name: "Larch Tree", description: "This tree looks like a pine or spruce in spring and summer with its tall form, short green needles, and small cones.", image: "larch", type: "Tree", propagation: "Seed", light: "Part Sun, Sun", category: "Conifers", scientificName: "Larix"),
    
    //Pine Tree
    Plant(name: "Pine Tree", description: "They are a top choice for screening a view or wrapping a patio with lovely green friendly privacy.", image: "pine", type: "Tree", propagation: "Grafting, Seed, Stem Cuttings", light: "Sun", category: "Conifers", scientificName: "Pinus"),
    
    //Cedar Tree
    Plant(name: "Cedar Tree", description: "Beloved for their graceful, sweeping branches and beautifully irregular pyramid shapes.", image: "cedar", type: "Tree", propagation: "Grafting, Seed, Stem Cuttings", light: "Part Sun, Sun", category: "Conifers", scientificName: "Cedrus"),
    
    //False Cypress
    Plant(name: "False Cypress", description: "A moist, slightly acidic soil is ideal for these trees; they do not thrive in hot and dry or windy conditions.", image: "false-cypress", type: "Tree", propagation: "Stem Cuttings", light: "Part Sun, Sun", category: "Conifers", scientificName: "Chamaecyparis"),
    
    /*
     Ferns, fern and allies
     */
    
    //Boston Fern
    Plant(name: "Boston Fern", description: "Give it high humidity and consistent moisture and it will reward you with long arching stems of green foliage.", image: "boston-fern", type: "Houseplant", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Nephrolepis Exaltata"),
    
    //Holly Fern
    Plant(name: "Holly Fern", description: "Holly fern, a woodland native, adds a bold, coarse texture to the landscape with its large fronds.", image: "holly-fern", type: "Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Cyrtomium Falcatum"),
    
    //Maidenhair Fern
    Plant(name: "Maidenhair Fern", description: "With its feathery green foliage, maidenhair fern makes a graceful addition to any shade/shady gardens.", image: "maidenhair-fern", type: "Houseplant", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Adiantum"),
    
    //Sensitive Fern
    Plant(name: "Sensitive Fern", description: "A great colonizer, sensitive fern is deciduous with a wonderful soft texture on its fronds and unique style.", image: "sensitive-fern", type: "Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Onoclea Sensibilis"),
    
    //Asparagus Fern
    Plant(name: "Asparagus Fern", description: "Versatile asparagus fern is an attractive perennial that is easy to grow, though not actually considered a fern.", image: "asparagus-fern", type: "Houseplant, Perennial", propagation: "Division, Seed", light: "Not Applicable", category: "Ferns", scientificName: "Asparagus Setaceus"),
    
    //Cinnamon Fern
    Plant(name: "Cinnamon Fern", description: "Tall, cinnamon fern features large, bright green fronds that spread out to form a vase-shape clump.", image: "cinnamon-fern", type: "Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Osmundastrum Cinnamomeum"),
    
    //Ostrich Fern
    Plant(name: "Ostrich Fern", description: "A staple plant of woodland gardens, the ostrich fern boasts stately, large upright fronds.", image: "ostrich-fern", type: "Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Matteuccia Struthiopteris"),
    
    //Wood Fern
    Plant(name: "Wood Fern", description: "Turn that shady spot into a restful, green landscape by planting wood ferns. Which is perfect for trees in your garden.", image: "wood-fern", type: "Perennial", propagation: "Division", light: "Part Sun, Shade", category: "Ferns", scientificName: "Dryopteris"),
    
    /*
     Mosses and hornworts
     */
    
    //Irish Moss
    Plant(name: "Irish Moss", description: "Traffic-friendly Irish moss is a great little plant for blanketing the ground around flagstones or along the edges.", image: "irish-moss", type: "Perennial", propagation: "Division, Seed", light: "Part Sun, Sun", category: "Moss", scientificName: "Chondrus Crispus"),
    
    //Fairy Moss
    Plant(name: "Fairy Moss", description: "Add a soft, delicate look to your water garden with fairy moss, which is also known as water fern.", image: "fairy-moss", type: "Water Plant", propagation: "Division", light: "Part Sun, Sun", category: "Moss", scientificName: "Azolla"),
    
    //Moss Rose
    Plant(name: "Moss Rose", description: "If you need to cover hot and sunny ground or you’re tired of watering your hanging baskets every day.", image: "moss-rose", type: "Annual", propagation: "Seed, Stem Cuttings", light: "Sun", category: "Moss", scientificName: "Portulaca Grandiflora"),
    
    //American Tree Moss
    Plant(name: "American Tree Moss", description: "It has a densely branched habit, with bushy primary stems being brown, and secondary stems red, but can differ.", image: "american-tree-moss", type: "Perennial", propagation: "Division, Seed", light: "Part Sun, Sun", category: "Moss", scientificName: "Climacium Americanum"),
    
    //Haircap Moss
    Plant(name: "Haircap Moss", description: "This moss is easy to identify with its long shoots of wiry spiked foliages, where the stems are red-brown.", image: "haircap-moss", type: "Perennial", propagation: "Division", light: "Part Sun, Sun", category: "Moss", scientificName: "Polytrichum"),
    
    //Springy Turf Moss
    Plant(name: "Springy Turf Moss", description: "Springy turf moss is also referred to as ‘electrified cat’s tail,’ which is a good way to describe this spiny moss.", image: "springy-turf-moss", type: "Perennial", propagation: "Division, Seed", light: "Sun", category: "Moss", scientificName: "Rhytidiadelphus Squarrosus"),
    
    //Coontail Hornwort
    Plant(name: "Coontail Hornwort", description: "Coontail is a bushy-looking bay grass with whorls of stiff, forked leaves along densely branched stems.", image: "coontail-hornwort", type: "Perennial", propagation: "Seed, Stem Cuttings", light: "Part Sun, Sun", category: "Moss", scientificName: "Ceratophyllum Demersum"),
    //Tomato
    Plant(name: "Tomato", description: "Tomato plants produce delicious and juicy fruits that are used in various culinary dishes.", image: "tomato", type: "Annual", propagation: "Seed, Transplant", light: "Full Sun", category: "vegetable", scientificName: "Solanum lycopersicum"),
    
    //carrot
    Plant(name: "Carrot", description: "Carrots are root vegetables known for their sweet and crunchy orange roots that are rich in vitamins and minerals.", image: "carrot", type: "Biennial", propagation: "Seed", light: "Full Sun, Partial Shade", category: "vegetable", scientificName: "Daucus carota"),
    
    //lettuce
    Plant(name: "Lettuce", description: "Lettuce is a leafy green vegetable commonly used in salads and sandwiches. It comes in various varieties with different leaf textures and flavors.", image: "lettuce", type: "Annual", propagation: "Seed, Transplant", light: "Partial Shade", category: "vegetable", scientificName: "Lactuca sativa"),
    
    //cucumber
    Plant(name: "Cucumber", description: "Cucumbers are refreshing and hydrating vegetables that can be eaten raw or used in salads and pickles.", image: "cucumber", type: "Annual", propagation: "Seed, Transplant", light: "Full Sun", category: "vegetable", scientificName: "Cucumis sativus"),
    
    //bell pepper
    Plant(name: "Bell Pepper", description: "Bell peppers are sweet and crunchy vegetables that come in various colors, such as green, red, yellow, and orange. They are used in salads, stir-fries, and as a stuffing ingredient.", image: "bell-pepper", type: "Annual", propagation: "Seed, Transplant", light: "Full Sun", category: "vegetable", scientificName: "Capsicum annuum"),
    
    //Spinach
    Plant(name: "Spinach", description: "Spinach is a nutrient-rich leafy green vegetable that is commonly used in salads, sautés, and smoothies.", image: "spinach", type: "Annual", propagation: "Seed, Transplant", light: "Partial Shade", category: "vegetable", scientificName: "Spinacia oleracea"),
    
    //zucchini
    Plant(name: "Zucchini", description: "Zucchini is a summer squash that is harvested when it is still young and tender. It is versatile and can be used in various dishes, including stir-fries, pasta, and bread.", image: "zucchini", type: "Annual", propagation: "Seed, Transplant", light: "Full Sun", category: "vegetable", scientificName: "Cucurbita pepo"),
    
    //Green Bean
    Plant(name: "Green Bean", description: "Green beans, also known as string beans or snap beans, are legumes that are eaten in their immature pod form. They can be steamed, sautéed, stir-fried, or used in salads and casseroles.", image: "green-bean", type: "Annual", propagation: "Seed", light: "Full Sun", category: "vegetable", scientificName: "Phaseolus vulgaris"),
    
    //radish
    Plant(name: "Radish", description: "Radishes are crisp and peppery root vegetables that come in a variety of shapes, sizes, and colors. They can be eaten raw, pickled, or used in salads.", image: "radish", type: "Annual", propagation: "Seed", light: "Full Sun, Partial Shade", category: "vegetable", scientificName: "Raphanus sativus"),
    
    //broccoli /veg
    Plant(name: "Broccoli", description: "Broccoli is a nutritious cruciferous vegetable that forms large flower heads. It is commonly steamed, stir-fried, or used in salads.", image: "broccoli", type: "Annual", propagation: "Seed, Transplant", light: "Full Sun, Partial Shade", category: "vegetable", scientificName: "Brassica oleracea"),
    
    // Strawberry /fruit
    Plant(name: "Strawberry", description: "Strawberries are sweet, juicy fruits that are often eaten fresh or used in desserts, jams, and smoothies.", image: "strawberry", type: "Perennial", propagation: "Seed, Transplant, Runner", light: "Full Sun", category: "fruit", scientificName: "Fragaria ananassa"),

    // Apple
    Plant(name: "Apple", description: "Apples are crunchy and sweet fruits that come in a variety of flavors and colors. They are commonly eaten fresh, used in baking, or made into cider.", image: "apple", type: "Perennial", propagation: "Grafting, Cutting", light: "Full Sun", category: "fruit", scientificName: "Malus domestica"),

    // Orange
    Plant(name: "Orange", description: "Oranges are citrus fruits known for their refreshing flavor and high vitamin C content. They can be eaten fresh, juiced, or used in various culinary applications.", image: "orange", type: "Perennial", propagation: "Seed, Grafting", light: "Full Sun", category: "fruit", scientificName: "Citrus sinensis"),

    // Banana
    Plant(name: "Banana", description: "Bananas are tropical fruits with a soft and creamy texture. They are packed with nutrients and are commonly eaten fresh or used in smoothies and desserts.", image: "banana", type: "Perennial", propagation: "Rhizome, Sucker", light: "Full Sun", category: "fruit", scientificName: "Musa sapientum"),

    // Lemon
    Plant(name: "Lemon", description: "Lemons are tangy citrus fruits that are highly acidic. They are used in cooking, baking, and as a flavoring agent in various dishes and beverages.", image: "lemon", type: "Perennial", propagation: "Seed, Grafting", light: "Full Sun", category: "fruit", scientificName: "Citrus limon"),

    // Grape
    Plant(name: "Grape", description: "Grapes are sweet and juicy fruits that grow in clusters. They are commonly used for eating fresh, making wine, or drying into raisins.", image: "grape", type: "Perennial", propagation: "Cutting, Grafting", light: "Full Sun", category: "fruit", scientificName: "Vitis vinifera"),

    // Peach
    Plant(name: "Peach", description: "Peaches are soft and fuzzy fruits with a sweet and juicy flesh. They are commonly eaten fresh, used in desserts, or made into preserves.", image: "peach", type: "Perennial", propagation: "Seed, Grafting", light: "Full Sun", category: "fruit", scientificName: "Prunus persica"),

    // Plum
    Plant(name: "Plum", description: "Plums are juicy and slightly tart fruits that come in a variety of colors. They are commonly eaten fresh, used in jams, or baked into pies and tarts.", image: "plum", type: "Perennial", propagation: "Seed, Grafting", light: "Full Sun", category: "fruit", scientificName: "Prunus domestica"),

    // Watermelon
    Plant(name: "Watermelon", description: "Watermelons are large, juicy fruits with a sweet and refreshing taste. They are commonly eaten fresh, used in fruit salads, or blended into beverages.", image: "watermelon", type: "Annual", propagation: "Seed", light: "Full Sun", category: "fruit", scientificName: "Citrullus lanatus"),

    // Blueberry
    Plant(name: "Blueberry", description: "Blueberries are small and sweet berries that are packed with antioxidants. They are commonly eaten fresh, used in baked goods, or added to smoothies.", image: "blueberry", type: "Perennial", propagation: "Cutting, Transplant", light: "Full Sun, Partial Shade", category: "fruit", scientificName: "Vaccinium corymbosum"),

    
]
