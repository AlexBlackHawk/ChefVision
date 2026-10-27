// Every operation that can fail. Error states store the one that caused
// the error, so the bloc knows exactly what to repeat on retry.

enum SubscriptionOperation {
  // Subscriptions Packages Screen
  getPackages,
  purchasePackage,
  // Subscription Managing Screen
  getSubscriptionInformation,
  restorePurchases,
}
