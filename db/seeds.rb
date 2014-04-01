# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'dairy' }, { name: 'meats' }, { name: 'bakery' }, { name: 'fruit & veg' }])

customers = Customer.create([{ name: 'Charlie Pace', email: 'c.pace@youareeverybody.com', phone: '605434778', address: 'Široká 45', city_region: '1', cc_number: '4224311324421331' },
                             { name: 'MC Hammer', email: 'hammer@hammertime.com', phone: '226884562', address: 'Ruská 11', city_region: '2', cc_number: '4321123443211234' },
                             { name: 'Karel Gott', email: 'gott@karelgott.com', phone: '224517995', address: 'Kostelní 83', city_region: '7', cc_number: '3311332222444411' },
                             { name: 'Helena Vondráčková', email: 'h.vondrackova@seznam.cz', phone: '224517995', address: 'Letohradská 18', city_region: '7', cc_number: '1111222244443333' },
                             { name: 'Sawyer Ford', email: 'sawyer.ford@gmail.com', phone: '204888845', address: 'Dušní 87', city_region: '1', cc_number: '2222333311114444' },
                             { name: 'Dalibor Janda', email: 'dalibor@dalibor.cz', phone: '728331184', address: 'Krkonošská 9', city_region: '3', cc_number: '3111444222212334' },
                             { name: 'Richard Genzer', email: 'r.genzer@nova.cz', phone: '737610775', address: 'Plzeňská 131', city_region: '5', cc_number: '2244443321123311' },
                             { name: 'Iveta Bartošová', email: 'i.bartosova@volny.cz', phone: '734556133', address: 'Prokopská 60', city_region: '1', cc_number: '3333111144442222' },
                             { name: 'Jin-Soo Kwon', email: 'jin.kwon@hotmail.kr', phone: '606338909', address: 'Ve Střešovičkách 49', city_region: '6', cc_number: '1111222233334444' },
                             { name: 'Benjamin Linus', email: 'b.linus@lost.com', phone: '222756448', address: 'Družstevní 77', city_region: '4', cc_number: '4444222233331111' },
                             { name: 'Leoš Mareš', email: 'mares@ferrari.it', phone: '608995383', address: 'Pařížská 89', city_region: '1', cc_number: '2222444411113333' },
                             { name: 'John Locke', email: 'maninblack@lostpedia.com', phone: '413443727', address: 'Valečovská 20', city_region: '9', cc_number: '2244331133114422' },
                             { name: 'Lucie Bílá', email: 'lucie@jampadampa.cz', phone: '733556813', address: 'Na hájku 3', city_region: '8', cc_number: '3333444422221111' },
                             { name: 'Sayid Jarrah', email: 'sayid@gmail.com', phone: '602680793', address: 'Kodaňská 78', city_region: '10', cc_number: '5490123456789128' },
                             { name: 'Hugo Reyes', email: 'hurley@mrcluck.com', phone: '605449336', address: 'Žerotínova 64', city_region: '3', cc_number: '4539992043491562' }
                            ])

customers_orders = CustomerOrder.create([{ amount: 16.50, customer: customers[14], confirmation_number: 285434339 },
                                         { amount: 16.11, customer: customers[13], confirmation_number: 428278565 },
                                         { amount: 26.00, customer: customers[12], confirmation_number: 503113888 },
                                         { amount: 17.63, customer: customers[11], confirmation_number: 916407556 },
                                         { amount: 17.24, customer: customers[10], confirmation_number: 189191209 },
                                         { amount: 15.57, customer: customers[9], confirmation_number: 274027361 },
                                         { amount: 4.49, customer: customers[8], confirmation_number: 250764732 },
                                         { amount: 19.70, customer: customers[7], confirmation_number: 766244032 },
                                         { amount: 37.49, customer: customers[6], confirmation_number: 53395157 },
                                         { amount: 18.90, customer: customers[5], confirmation_number: 818358116 },
                                         { amount: 18.92, customer: customers[4], confirmation_number: 244956320 },
                                         { amount: 17.66, customer: customers[3], confirmation_number: 868642371 },
                                         { amount: 10.22, customer: customers[2], confirmation_number: 344549009 },
                                         { amount: 12.16, customer: customers[1], confirmation_number: 475644436 },
                                         { amount: 10.75, customer: customers[0], confirmation_number: 247455344 }
                                        ])

products = Product.create([{ name: 'milk', price: 1.70, description: 'semi skimmed (1L)', category: categories[0] },
                           { name: 'cheese', price: 2.39, description: 'mild cheddar (330g)', category: categories[0] },
                           { name: 'butter', price: 1.09, description: 'unsalted (250g)', category: categories[0] },
                           { name: 'free range eggs', price: 1.76, description: 'medium-sized (6 eggs)', category: categories[0] },
                           { name: 'organic meat patties', price: 2.29, description: 'rolled in fresh herbs 2 patties (250 g) ', category: categories[1] },
                           { name: 'parma ham', price: 3.49, description: 'matured, organic (70g)', category: categories[1] },
                           { name: 'chicken leg', price: 2.59, description: 'free range (250g)', category: categories[1] },
                           { name: 'sausages', price: 3.55, description: 'reduced fat, pork 3 sausages (350g)', category: categories[1] },
                           { name: 'sunflower seed loaf', price: 1.89, description: '600g', category: categories[2] },
                           { name: 'sesame seed bagel', price: 1.19, description: '4 bagels', category: categories[2] },
                           { name: 'pumpkin seed bun', price: 1.15, description: '4 buns', category: categories[2] },
                           { name: 'chocolate cookies', price: 2.39, description: 'contain peanuts (3 cookies)', category: categories[2] },
                           { name: 'corn on the cob', price: 1.59, description: '2 pieces', category: categories[3] },
                           { name: 'red currants', price: 2.49, description: '150g', category: categories[3] },
                           { name: 'broccoli', price: 1.29, description: '500g', category: categories[3] },
                           { name: 'seedless watermelon', price: 1.49, description: '250g', category: categories[3] }
                          ])

ordered_products = OrderedProduct.create([{ customer_order: customers_orders[14], product: products[0], quantity: 1 },
                                          { customer_order: customers_orders[14], product: products[14], quantity: 2 },
                                          { customer_order: customers_orders[14], product: products[2], quantity: 2 },
                                          { customer_order: customers_orders[13], product: products[4], quantity: 4 },
                                          { customer_order: customers_orders[12], product: products[12], quantity: 1 },
                                          { customer_order: customers_orders[12], product: products[3], quantity: 1 },
                                          { customer_order: customers_orders[12], product: products[9], quantity: 2 },
                                          { customer_order: customers_orders[12], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[11], product: products[0], quantity: 3 },
                                          { customer_order: customers_orders[11], product: products[11], quantity: 4 },
                                          { customer_order: customers_orders[10], product: products[12], quantity: 1 },
                                          { customer_order: customers_orders[10], product: products[1], quantity: 2 },
                                          { customer_order: customers_orders[10], product: products[8], quantity: 1 },
                                          { customer_order: customers_orders[10], product: products[13], quantity: 2 },
                                          { customer_order: customers_orders[10], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[10], product: products[9], quantity: 1 },
                                          { customer_order: customers_orders[9], product: products[12], quantity: 10 },
                                          { customer_order: customers_orders[8], product: products[7], quantity: 5 },
                                          { customer_order: customers_orders[8], product: products[6], quantity: 2 },
                                          { customer_order: customers_orders[8], product: products[5], quantity: 2 },
                                          { customer_order: customers_orders[8], product: products[4], quantity: 2 },
                                          { customer_order: customers_orders[7], product: products[7], quantity: 2 },
                                          { customer_order: customers_orders[7], product: products[14], quantity: 2 },
                                          { customer_order: customers_orders[7], product: products[10], quantity: 1 },
                                          { customer_order: customers_orders[7], product: products[8], quantity: 1 },
                                          { customer_order: customers_orders[7], product: products[13], quantity: 1 },
                                          { customer_order: customers_orders[7], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[6], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[5], product: products[14], quantity: 2 },
                                          { customer_order: customers_orders[5], product: products[8], quantity: 1 },
                                          { customer_order: customers_orders[5], product: products[3], quantity: 2 },
                                          { customer_order: customers_orders[5], product: products[5], quantity: 1 },
                                          { customer_order: customers_orders[5], product: products[2], quantity: 1 },
                                          { customer_order: customers_orders[4], product: products[14], quantity: 1 },
                                          { customer_order: customers_orders[4], product: products[6], quantity: 5 },
                                          { customer_order: customers_orders[3], product: products[7], quantity: 1 },
                                          { customer_order: customers_orders[3], product: products[0], quantity: 1 },
                                          { customer_order: customers_orders[3], product: products[10], quantity: 1 },
                                          { customer_order: customers_orders[3], product: products[13], quantity: 2 },
                                          { customer_order: customers_orders[3], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[3], product: products[3], quantity: 1 },
                                          { customer_order: customers_orders[2], product: products[0], quantity: 1 },
                                          { customer_order: customers_orders[2], product: products[7], quantity: 6 },
                                          { customer_order: customers_orders[1], product: products[12], quantity: 1 },
                                          { customer_order: customers_orders[1], product: products[4], quantity: 1 },
                                          { customer_order: customers_orders[1], product: products[14], quantity: 1 },
                                          { customer_order: customers_orders[1], product: products[1], quantity: 1 },
                                          { customer_order: customers_orders[1], product: products[10], quantity: 2 },
                                          { customer_order: customers_orders[1], product: products[15], quantity: 1 },
                                          { customer_order: customers_orders[1], product: products[3], quantity: 1 },
                                          { customer_order: customers_orders[0], product: products[11], quantity: 1 },
                                          { customer_order: customers_orders[0], product: products[1], quantity: 2 },
                                          { customer_order: customers_orders[0], product: products[12], quantity: 2 },
                                          { customer_order: customers_orders[0], product: products[9], quantity: 1 },
                                          { customer_order: customers_orders[0], product: products[7], quantity: 1 }
                                         ])
