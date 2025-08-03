import '../models/restaurant_model.dart';

class MockDataService {
  // Swiss and bordering cities restaurants mock data
  static List<Restaurant> getMockRestaurants() {
    return [
      // Zurich Restaurants
      Restaurant(
        id: 'rest_001',
        name: 'Bistro Paradis',
        description:
            'Authentic Swiss cuisine with a modern twist. Famous for our traditional fondue and raclette.',
        imageUrl:
            'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=400',
        category: 'Swiss',
        rating: 4.8,
        reviewCount: 234,
        deliveryTime: '25-35 min',
        deliveryFee: 3.50,
        minimumOrder: 15.00,
        isOpen: true,
        address: 'Bahnhofstrasse 45',
        city: 'Zurich',
        country: 'Switzerland',
        latitude: 47.3769,
        longitude: 8.5417,
        tags: ['Swiss', 'Traditional', 'Cheese', 'Wine'],
        isPromoted: true,
        promoText: '20% off first order',
        discountPercentage: 20,
        menu: [
          MenuItem(
            id: 'item_001',
            name: 'Classic Cheese Fondue',
            description:
                'Traditional Gruyère and Emmental cheese fondue served with crusty bread',
            price: 28.50,
            imageUrl:
                'https://images.unsplash.com/photo-1564834724105-918b73d1b9e0?w=300',
            category: 'Main Course',
            isPopular: true,
            preparationTime: '15 min',
          ),
          MenuItem(
            id: 'item_002',
            name: 'Rösti with Bratwurst',
            description:
                'Crispy Swiss potato rösti served with traditional bratwurst',
            price: 24.00,
            imageUrl:
                'https://images.unsplash.com/photo-1558030006-450675393462?w=300',
            category: 'Main Course',
          ),
        ],
      ),

      Restaurant(
        id: 'rest_002',
        name: 'Sushi Zen',
        description:
            'Fresh sushi and Japanese cuisine delivered to your door. Premium quality fish daily.',
        imageUrl:
            'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
        category: 'Japanese',
        rating: 4.6,
        reviewCount: 189,
        deliveryTime: '20-30 min',
        deliveryFee: 4.00,
        minimumOrder: 20.00,
        isOpen: true,
        address: 'Limmatquai 12',
        city: 'Zurich',
        country: 'Switzerland',
        latitude: 47.3732,
        longitude: 8.5435,
        tags: ['Sushi', 'Japanese', 'Fresh', 'Healthy'],
        menu: [
          MenuItem(
            id: 'item_003',
            name: 'Salmon Sashimi Set',
            description:
                'Fresh Norwegian salmon sashimi with wasabi and pickled ginger',
            price: 32.00,
            imageUrl:
                'https://images.unsplash.com/photo-1563612192-3c58982fde0c?w=300',
            category: 'Sashimi',
            isPopular: true,
          ),
          MenuItem(
            id: 'item_004',
            name: 'Dragon Roll',
            description:
                'Eel and cucumber inside, avocado and eel sauce on top',
            price: 18.50,
            imageUrl:
                'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=300',
            category: 'Rolls',
          ),
        ],
      ),

      // Geneva Restaurants
      Restaurant(
        id: 'rest_003',
        name: 'Chez Laurent',
        description:
            'Elegant French bistro offering classic dishes with a contemporary flair.',
        imageUrl:
            'https://images.unsplash.com/photo-1537047902294-62a40c20a6ae?w=400',
        category: 'French',
        rating: 4.7,
        reviewCount: 312,
        deliveryTime: '30-40 min',
        deliveryFee: 5.00,
        minimumOrder: 25.00,
        isOpen: true,
        address: 'Rue du Rhône 85',
        city: 'Geneva',
        country: 'Switzerland',
        latitude: 46.2044,
        longitude: 6.1432,
        tags: ['French', 'Elegant', 'Wine', 'Fine Dining'],
        menu: [
          MenuItem(
            id: 'item_005',
            name: 'Coq au Vin',
            description:
                'Chicken braised in red wine with mushrooms and pearl onions',
            price: 35.00,
            imageUrl:
                'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300',
            category: 'Main Course',
            isPopular: true,
          ),
        ],
      ),

      Restaurant(
        id: 'rest_004',
        name: 'Pizza Bella Vista',
        description:
            'Authentic Italian pizzas made with imported ingredients and wood-fired oven.',
        imageUrl:
            'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
        category: 'Italian',
        rating: 4.5,
        reviewCount: 456,
        deliveryTime: '15-25 min',
        deliveryFee: 2.50,
        minimumOrder: 12.00,
        isOpen: true,
        address: 'Via Roma 23',
        city: 'Geneva',
        country: 'Switzerland',
        latitude: 46.2029,
        longitude: 6.1456,
        tags: ['Pizza', 'Italian', 'Wood-fired', 'Family'],
        isPromoted: true,
        promoText: 'Free delivery over CHF 25',
        menu: [
          MenuItem(
            id: 'item_006',
            name: 'Margherita Pizza',
            description: 'Classic tomato sauce, mozzarella, and fresh basil',
            price: 16.50,
            imageUrl:
                'https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?w=300',
            category: 'Pizza',
            isPopular: true,
            isVegetarian: true,
          ),
          MenuItem(
            id: 'item_007',
            name: 'Quattro Stagioni',
            description:
                'Artichokes, mushrooms, ham, and olives on four quarters',
            price: 22.00,
            imageUrl:
                'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=300',
            category: 'Pizza',
          ),
        ],
      ),

      // Basel Restaurants
      Restaurant(
        id: 'rest_005',
        name: 'Curry Palace',
        description:
            'Authentic Indian cuisine with aromatic spices and traditional recipes.',
        imageUrl:
            'https://images.unsplash.com/photo-1565557623262-b51c2513a641?w=400',
        category: 'Indian',
        rating: 4.4,
        reviewCount: 278,
        deliveryTime: '25-35 min',
        deliveryFee: 3.00,
        minimumOrder: 18.00,
        isOpen: true,
        address: 'Steinenvorstadt 42',
        city: 'Basel',
        country: 'Switzerland',
        latitude: 47.5596,
        longitude: 7.5886,
        tags: ['Indian', 'Spicy', 'Vegetarian', 'Halal'],
        menu: [
          MenuItem(
            id: 'item_008',
            name: 'Butter Chicken',
            description: 'Tender chicken in creamy tomato-based curry sauce',
            price: 26.50,
            imageUrl:
                'https://images.unsplash.com/photo-1588166524941-3bf61a9c41db?w=300',
            category: 'Curry',
            isPopular: true,
          ),
        ],
      ),

      // Milan (Italy - Bordering)
      Restaurant(
        id: 'rest_006',
        name: 'Trattoria Milano',
        description:
            'Traditional Milanese cuisine featuring risotto and osso buco specialties.',
        imageUrl:
            'https://images.unsplash.com/photo-1551218808-94e220e084d2?w=400',
        category: 'Italian',
        rating: 4.9,
        reviewCount: 567,
        deliveryTime: '35-45 min',
        deliveryFee: 6.00,
        minimumOrder: 30.00,
        isOpen: true,
        address: 'Via Brera 15',
        city: 'Milan',
        country: 'Italy',
        latitude: 45.4642,
        longitude: 9.1900,
        tags: ['Italian', 'Traditional', 'Risotto', 'Premium'],
        isPromoted: true,
        promoText: 'Free appetizer with orders over €35',
        menu: [
          MenuItem(
            id: 'item_009',
            name: 'Risotto alla Milanese',
            description:
                'Creamy saffron risotto with bone marrow and Parmigiano',
            price: 28.00,
            imageUrl:
                'https://images.unsplash.com/photo-1476124369491-e7addf5db371?w=300',
            category: 'Risotto',
            isPopular: true,
          ),
        ],
      ),

      // Lyon (France - Bordering)
      Restaurant(
        id: 'rest_007',
        name: 'Bouchon Lyonnais',
        description:
            'Traditional Lyonnaise bouchon serving regional specialties and local wines.',
        imageUrl:
            'https://images.unsplash.com/photo-1514933651103-005eec06c04b?w=400',
        category: 'French',
        rating: 4.6,
        reviewCount: 234,
        deliveryTime: '40-50 min',
        deliveryFee: 7.50,
        minimumOrder: 35.00,
        isOpen: true,
        address: 'Rue Saint-Jean 28',
        city: 'Lyon',
        country: 'France',
        latitude: 45.7640,
        longitude: 4.8357,
        tags: ['French', 'Traditional', 'Wine', 'Regional'],
        menu: [
          MenuItem(
            id: 'item_010',
            name: 'Quenelle de Brochet',
            description: 'Traditional pike quenelle with Nantua sauce',
            price: 32.50,
            imageUrl:
                'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=300',
            category: 'Traditional',
            isPopular: true,
          ),
        ],
      ),

      // Munich (Germany - Bordering)
      Restaurant(
        id: 'rest_008',
        name: 'Bavarian Bites',
        description:
            'Hearty Bavarian cuisine with traditional beer garden atmosphere.',
        imageUrl:
            'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=400',
        category: 'German',
        rating: 4.3,
        reviewCount: 445,
        deliveryTime: '30-40 min',
        deliveryFee: 4.50,
        minimumOrder: 20.00,
        isOpen: true,
        address: 'Marienplatz 12',
        city: 'Munich',
        country: 'Germany',
        latitude: 48.1351,
        longitude: 11.5820,
        tags: ['German', 'Beer', 'Hearty', 'Traditional'],
        menu: [
          MenuItem(
            id: 'item_011',
            name: 'Schweinshaxe',
            description: 'Roasted pork knuckle with sauerkraut and dumplings',
            price: 24.50,
            imageUrl:
                'https://images.unsplash.com/photo-1558030006-450675393462?w=300',
            category: 'Traditional',
            isPopular: true,
          ),
        ],
      ),
    ];
  }

  static List<String> getCategories() {
    return [
      'All',
      'Swiss',
      'Italian',
      'French',
      'German',
      'Japanese',
      'Indian',
      'Pizza',
      'Healthy',
      'Fast Food',
    ];
  }

  static List<Restaurant> getPromotedRestaurants() {
    return getMockRestaurants().where((r) => r.isPromoted).toList();
  }

  static List<Restaurant> getRestaurantsByCategory(String category) {
    if (category == 'All') return getMockRestaurants();
    return getMockRestaurants()
        .where((r) => r.category.toLowerCase() == category.toLowerCase())
        .toList();
  }

  static List<Restaurant> getNearbyRestaurants({
    required double latitude,
    required double longitude,
    double radiusKm = 10.0,
  }) {
    // Simple mock implementation - in real app, use proper distance calculation
    return getMockRestaurants().take(5).toList();
  }

  static Restaurant? getRestaurantById(String id) {
    try {
      return getMockRestaurants().firstWhere((r) => r.id == id);
    } catch (e) {
      return null;
    }
  }
}
