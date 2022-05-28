# Blockchains aren't any different

What is most striking to me about the recent waves of anti-crypto hate are that
the perpetrators often fail to understand something extremely basic about the
technology: The only problem it solves is trust; everything else is the same.
To see why this is true, let's go through the differences between a
hypothetical state-created digital currency and currencies using blockchains.

Both of these would not have any intrinsic value. State-imposed currencies have
value in our world because of taxation, which is enforced through violence. By
comparison, blockchain currencies have value because people have decided to
give them value by trading them, that is, voluntary exchange. Even if the rent
extraction created by capitalism (and thus also state violence) is present
within these markets, their value is not a direct result of state violence,
and could still exist in a free market. However, this should be a surprise to
nobody, let's move on to the technical differences.

So, what do you need to create a digital currency? Well, just a database,
really. More specifically, a ledger of every user's balance, but you can use
any general-purpose database for this. What makes blockchains special here is
their *trustlessness*. As no participant wants to trust another, they must all
verify the validity of the actions of other participants. This is the reason
blockchains are actually records of all transactions that have ever happened,
such that they can be mathematically verified.

But mathematically verifiable logs have existed for much longer than Bitcoin
has. The real reason why blockchains are special is *censorship resistance*.
In order for users to be able to transact reliably, they must be able to
communicate the transaction to all other members. Communication channels are
not a hard problem if you assume a third party that *all* participants trust to
never censor their communications. But in the real world, you may not want to
trust *anyone* to ensure your money is safe. This is why blockchains are
*distributed* and *permissionless*, that is, the database is perpetuated by
many participants, and anyone can become one of those participants without
permission from an authority.

So what would be different in a digital currency created by such a central
authority as the State? Well, it depends on the level of trust. If the State
wants to prove it is not allowing some people to create money out of thin air
or steal from other people's accounts without their permission, it needs a log
of all transactions, just like a blockchain. But most importantly, the exact
same theorems applying to distributed systems and databases that apply to
blockchains would also apply to digitial currencies with central authorities.

Even assuming trust that the authority hosting the digital currency software
is not censoring transactions, if the server on which the software is running
gets hacked, the hacker can violate that trust assumption. If there is no log
of authenticated transactions, hackers may then create money from thin air for
themselves, potentionally even covertly. If there is a log, users still have
no recourse, as the only authority that publishes the log can now stop
publishing data, or publish obviously fraudulent data, putting a stop on all
economic activity.

It would then be reasonable to assume that the authority would like to use
many different computers to host the currency, making it so that hackers have
to subvert the security of a higher amount of computers to subvert the trust
users have in their authority. This now makes the database distributed, and
subject to the same technical restrictions as blockchains. To avoid the
double-spend problem (which was the reason for Bitcoin's invention), the
database requires the use of a consensus mechanism. In fact, the very same
mechanisms used for consensus in blockchains could very much be used for
internal consensus within an authority's network. The only difference left
between blockchains and authorities is then their permissionless nature.

This permissionless nature stems from one difference in the way consensus
mechanisms are applied, namely Sybil resistance. The problem with systems
where anyone can participate is that digital identities are infinite, and
there is a treshold of participants that can lie before the system fails.
You cannot reliably determine whether any two given participants are distinct
human beings or two computers operated by the same human being (these duplicate
identities are called Sybils). Such a distinction may not even be valuable, as
cryptocurrencies seek to maximize not an amount of colluding humans needed to
attack the system, but the physical and monetary cost associated with
perpetrating an attack on the system.

The threat of a Sybil attack is why blockchains employ participation mechanisms
(alternatively called Sybil resistance mechanisms). With a central authority,
there is no participation mechanism, because participants are approved by the
authority. In Bitcoin, a mechanism called Proof of Work is used, which requires
computing a one-way function with many inputs until the output satisfies some
conditions. Only the single correct output has to be published to prove the
output satisfies the conditions, but the creator has to try many inputs,
meaning the creator of the Proof of Work has done some (useless) "work" to
get to the solution. This effectively *proves* that a user has expended energy,
giving an *physical cost* to participating in the blockchain's consensus.

In contrast, recent blockchains use a solution which makes much more sense.
Instead of determining the weight of participating identities using energy
waste, they give weight according to their balance on the blockchain itself,
depending instead on the monetary cost of acquiring their digital currency.
This is called Proof of Stake. Of course, the implementation is more intricate
than this, but it is essentially a single multiplication of each participant's
weight by their balance in a database.

In the end, the technical difference between cryptocurrencies and centralized
digital currencies are minimal: Cryptocurrencies fiddle around with numbers a
bit more to ensure permissionless consensus. But with this little bit of number
fiddling, they have ensured censorship resistance. Unlike what many would like
you to believe, the trade-off is extremely small. Either you have violence, or
you have censorship resistance. [Everyone deserves to transact freely and
confidentially](crypto_is_for_criminals.html). Blockchains may not be able to
solve the world's ills, but we should nonetheless consider them a useful tool.