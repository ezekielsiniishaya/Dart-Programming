// Function to calculate the total price of items
double calculateTotal(List<double> prices, {double taxRate = 0.0}) {
  double total = 0.0;

  // Calculate total of all item prices
  for (double price in prices) {
    total += price;
  }

  // Apply tax if provided
  if (taxRate > 0.0) {
    total += total * (taxRate / 100);
  }

  return total;
}

// Function to filter out items below a certain price threshold using an anonymous function
List<double> filterItems(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}

// Higher-order function to apply a discount using a discount function
List<double> applyDiscount(List<double> prices, double Function(double) discountFunc) {
  return prices.map((price) => discountFunc(price)).toList();
}

// Recursive function to calculate a factorial discount
int calculateFactorialDiscount(int numItems) {
  if (numItems <= 1) {
    return 1;
  } else {
    return numItems * calculateFactorialDiscount(numItems - 1);
  }
}

// Discount function that reduces the price by a given percentage
double discountByPercentage(double price, double discountPercent) {
  return price - (price * (discountPercent / 100));
}

void main() {
  // Example shopping cart
  List<double> cartPrices = [15.0, 5.0, 20.0, 50.0, 8.0];
  double taxRate = 7.0; // 7% tax

  print('Original cart prices: \$${cartPrices}');

  // 1. Apply a 10% discount to all items
  double discountPercent = 10.0;
  List<double> discountedCart = applyDiscount(cartPrices, (price) => discountByPercentage(price, discountPercent));
  print('Cart after ${discountPercent}% discount: \$${discountedCart}');

  // 2. Filter out items below $10
  List<double> filteredCart = filterItems(discountedCart, 10.0);
  print('Filtered cart (items >= \$10): \$${filteredCart}');

  // 3. Calculate the total after applying discount and tax
  double totalPriceWithDiscount = calculateTotal(filteredCart, taxRate: taxRate);
  print('Total price with tax (${taxRate}%): \$${totalPriceWithDiscount}');

  // 4. Apply an additional special discount based on the factorial of the number of items
  int numItems = filteredCart.length;
  int factorialDiscountPercent = calculateFactorialDiscount(numItems);
  print('Factorial discount based on ${numItems} items: ${factorialDiscountPercent}%');

  // Apply the factorial discount to the total price
  double finalPrice = discountByPercentage(totalPriceWithDiscount, factorialDiscountPercent.toDouble());
  print('Final price after factorial discount: \$${finalPrice}');
}
