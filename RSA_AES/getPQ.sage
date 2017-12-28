n = 0x16232bef74274e2ba98ccad8fe2fde37253167d3c8178ab237897bb4c6a262007f731a2ee8000a6b619f04c38f07b6f1c3033fee631aa41c44b44d3e6fe8f6eaa1e2a6191e727c132d50366691a583275d64cf566a8ce13fc049286093d1ffe61947a52a3a56839e8576b1f46dd5173056b4c3cb095efb25dabbe2f2804ff0805edd2976250cd56c5fbec455de871bf858ce5516295f77abdd54f3490bc87a80cd2b40affeb17c546a678ed302b6c3040456b08d852197cbd16b18e661dec8223399aa84b7bc24924d66c7f441c4bc384273d9539ccdd14857369f74808f9e1a09365de78615255deaa57500995e9665fb50844c4e5263a88ca766baf478e4b3
p = 0x1f3829df43769ea69bda7828008096684714630cac039628af579c482a84b881f7a1d5ad380c3a133fd68c2c04dd820b895bb62cabc420e83103be1d3a2c2f79d1d6811fa753c176720da271193152139de4b5db2e873cf82ec40000000000000000000000000000000000000000000000000000000000000000000000000000
p_fake = p + 0x10000000000000000000000000000000000000000000000000000000000000000000000000000
pbits = 1024
kbits = pbits-576
pbar = p_fake & (2^pbits-2^kbits)
print "upper %d bits (of %d bits) is given" % (pbits-kbits, pbits)
PR.<x> = PolynomialRing(Zmod(n))
f = x + pbar
x0 = f.small_roots(X=2^kbits, beta=0.4)[0]  # find root < 2^kbits with factor >= n^0.4
print x0 + pbar
/* 21923000442303241948246705611012961386363979222832337901830115771108225052790542561546354900492517346509948893293947815540269559324755853024885763755326105992764892874460672868563016877283767896041303942408074441847604729963248840196198891665799683983218515141219460296731802976608949188271950502151714616353 */
