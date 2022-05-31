# Blockchains aren't any different

What is most striking to me about the recent waves of anti-crypto hate are that
the perpetrators often fail to understand something extremely basic about the
technology: The only problem it solves is trust; everything else is the same.
To see why this is true, let's go through the differences between a
hypothetical state-created digital currency and cryptocurrencies.

Both of these have no intrinsic value. They are only numbers in computers,
zero-sum games. They are artificially scarce, which means they can be traded,
giving them a price according to supply and demand. State-imposed ("fiat")
currencies have "value" in our world because of taxation, that is, forced
demand. By comparison, cryptocurrencies have value because people have decided
to trade them. Even if the rent extraction created by capitalism (and thus the
same State violence that enforces taxation) is present within these markets,
the value is not a *direct result* of state violence, and could still exist in
a free market.

Fiat currencies exist as paper bills, or in software at a central bank, or in
software at many different institutions. The important observation that I want
to make in this article is that, in all the cases where the currency resides in
software, there is no practical difference between that software and a
cryptocurrency's blockchain. There always exists a single source of truth where
the "true" money is located, like central banks for fiat currency. It just so
happens to be that, in the case of cryptocurrencies, this central bank is the
blockchain, and everyone can participate. Thus, any argument against
blockchains is either an argument against the small software differences
remaining — which are actually the advantages of blockchains — or against
individual agency.

What do you need to create a digital currency? Well, just a database, really.
More specifically, a ledger of every user's balance, but you can use any
general-purpose database software for this. What makes blockchains special is
their *trustlessness*. As no participant wants to trust another, they must all
verify the validity of the actions of other participants. This is the reason
blockchains are actually records of all transactions that have ever happened,
such that they can be mathematically verified.

But mathematically verifiable logs have existed for much longer than Bitcoin
has. The real reason why blockchains are special is *censorship resistance*.
In order for users to be able to transact reliably, they must be able to
communicate the transaction to all other members. Communication channels are
not a hard problem if you assume a third party that *all* participants trust
to never censor a communication. But in the real world, you may not trust the
same people as the people you are transacting with. This is why blockchains are
*distributed* and *permissionless*, that is, the database is perpetuated by
many participants, and anyone can become one of those participants without
permission from an authority.

So what would be different in a digital currency created by a central authority
like the State? Well, it depends on the level of trust. If the State wants to
prove it is not allowing anyone to create money out of thin air or steal from
other people's accounts without their permission, it needs a log of all
transactions, just like a blockchain, or the citizens can just trust their
government. But most importantly, the exact same theorems about distributed
systems that apply to blockchains would also apply to digitial currencies with
central authorities.

Even assuming trust that the authority hosting the digital currency software
is not censoring transactions, if the server on which the software is running
gets hacked, the hacker can violate that trust assumption. If there is no log
of authenticated transactions, hackers may then create money from thin air for
themselves, potentionally even covertly, or make the server stop accepting some
transactions, violating censorship resitance. If there is a log, users still have
no recourse, as the only authority that publishes the log can now stop
publishing data, or publish obviously fraudulent data, putting a stop on all
economic activity.

It would then be reasonable to assume that the authority would like to use
many different computers to host the currency, making it so that hackers have
to subvert the security of a higher amount of computers to subvert the trust
users have in the authority. The database is then also a distributed system,
and subject to the same technical restrictions as blockchains. To avoid the
double-spend problem (which was Bitcoin's contribution to the cryptocurrency
technology), the database requires the use of a consensus mechanism. In both
blockchains and centralized systems, the ledger is replicated to every
participant, and a consensus mechanism is used to make sure every participant
has the same ledger. In fact, the very same mechanisms used for consensus for
blockchains could very much be used for internal consensus within an
authority's network.

The only difference left, the permissionless nature of blockchains,
stems from one difference in the way consensus mechanisms are applied, namely
Sybil resistance. The problem with systems where anyone can participate is that
digital identities are infinite, and there is a treshold of participants that
can lie before the system fails. You cannot reliably determine whether any two
given participants are distinct human beings or two computers operated by the
same human being (these duplicate identities are called Sybils). Such a
distinction may not even be useful, as cryptocurrencies seek to maximize not an
amount of colluding humans needed to attack the system, but the physical and
monetary cost associated with perpetrating an attack on the system. The threat
of a Sybil attack is why blockchains employ participation mechanisms
(alternatively called Sybil resistance mechanisms). With a central authority,
there is no participation mechanism, because all participants are approved by
the authority.

In centralized systems, potential hackers know exactly who to hack, and the
homogeniety of the provenance of participants means a fault in one of the
computers may also work on the entire network. With cryptocurrencies, however,
hackers might not have any idea where to even start, and there may be a
quantity of participants too large to feasibly hack. Furthermore, recovering
from an attack is much easier when the average user can download all the data
from which the network can be restarted after a failure.

There are differences in practice in the efficiency of these systems, but they
rarely stem from the lack of central coordination. Bitcoin's inefficiency comes
from its Proof of Work-based Sybil resistance, but this specific mechanism is
not required for all blockchains. All blockchains are free to create their own
structure and mechanisms. Other "inefficiencies" may come from, for example,
the meaning of a *transaction* being different between other transactional
systems built solely for exchange of money and cryptocurrencies with smart
contracts, and thus unfair comparisons of the capabilities of these systems.

In the end, the technical difference between cryptocurrencies and centralized
digital currencies are minimal: Cryptocurrencies have permissionless consensus.
And with this small difference, they also ensure a plethora of advantages like
censorship resistance, easier attack recovery, composability, interopability,
etc. Unlike what many would like you to believe, the trade-off is extremely
small. [Everyone deserves to transact freely and
confidentially](crypto_is_for_criminals.html). Blockchains may not be able to
solve the world's ills, but we should nonetheless consider them a useful tool.
It would be ridiculous to say that cryptocurrency is inferior to the currently
available methods of payment.
