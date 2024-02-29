class ShoppingCart {
  List<String> items;
  double totalCost;

  ShoppingCart() {
    items = [];
    totalCost = 0.0;
  }

  void addItem(String item, double price) {
    items.add(item);
    totalCost += price;
  }

  bool removeItem(String item) {
    if (items.contains(item)) {
      items.remove(item);
      // Assume that the item is removed from the cart, and recalculate the total cost
      totalCost -= calculateItemCost(item);
      return true;
    } else {
      return false;
    }
  }

  double calculateItemCost(String item) {
    // Assume that the cost of each item is stored in a map with the item name as the key
    // You can replace this with your own logic for calculating the cost of each item
    Map<String, double> itemCosts = {
      'Apple': 1.0,
      'Banana': 0.5,
      'Orange': 0.8,
      // Add more items here
    };

    return itemCosts[item] ?? 0.0;
  }

  @override
  String toString() {
    return 'ShoppingCart(items: $items, totalCost: $totalCost)';
  }
}