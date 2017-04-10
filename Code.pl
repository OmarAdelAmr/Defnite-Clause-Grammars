%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/**

INPUT SAMPLES:

1:	sentence(ParseTree, [the, old, boy, put, a , big, box, in, the, large, empty, room, after, school], []).

2:	sentence(ParseTree, [the, old, woman, gave, the, poor, man, a, white, envelope, in, the, shed, behind, the, building], []).

3:	sentence(ParseTree, [the, pretty, woman, who, worked, with, the, old, man, secretly, gave, me, three, letters], []).

4:	sentence(ParseTree, [every, boy, quickly, climbed, some, big, tree], []).

*/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sentence(sentence(NounPhrase,VerbPhrase))                --> noun_phrase(NounPhrase), verb_phrase(VerbPhrase). 

% Noun Phrases:-
noun_phrase(noun_phrase(N))                    			 	         --> noun(N).
noun_phrase(noun_phrase(D, N))                    			         --> det(D), noun(N).
noun_phrase(noun_phrase(D, N, Prep, NounPhrase))                     --> det(D), noun(N), prep(Prep), noun_phrase(NounPhrase).
noun_phrase(noun_phrase(D, Adj, N))               			         --> det(D), adj(Adj), noun(N).
noun_phrase(noun_phrase(D, Adj, N, C, VerbPhrase))               	 --> det(D), adj(Adj), noun(N), conj(C), verb_phrase(VerbPhrase).
noun_phrase(noun_phrase(D, Adj1, Adj2, N))        			         --> det(D), adj(Adj1), adj(Adj2), noun(N).
noun_phrase(noun_phrase(D, Adj1, Adj2, Adj3, N))        	         --> det(D), adj(Adj1), adj(Adj2), adj(Adj3), noun(N).
noun_phrase(noun_phrase(D, Adj1, Adj2, Adj3, Adj4, N))               --> det(D), adj(Adj1), adj(Adj2), adj(Adj3), adj(Adj4), noun(N).
noun_phrase(noun_phrase(D, Adj, N, Prep, NounPhrase))                --> det(D), adj(Adj), noun(N), prep(Prep), noun_phrase(NounPhrase).
noun_phrase(noun_phrase(D, Adj, N, Prep, NounPhrase, Prep2, N2))     --> det(D), adj(Adj), noun(N), prep(Prep)
    														             , noun_phrase(NounPhrase), prep(Prep2), noun(N2).

% Verb Phrases:-
verb_phrase(verb_phrase(V))                                  --> verb(V).                   
verb_phrase(verb_phrase(V, NounPhrase))                      --> verb(V), noun_phrase(NounPhrase).
verb_phrase(verb_phrase(V, NounPhrase1, NounPhrase2))        --> verb(V), noun_phrase(NounPhrase1), noun_phrase(NounPhrase2).
verb_phrase(verb_phrase(V, Prep,NounPhrase))                 --> verb(V), prep(Prep), noun_phrase(NounPhrase).
verb_phrase(verb_phrase(V, Prep,NounPhrase, Adv))            --> verb(V), prep(Prep), noun_phrase(NounPhrase), adv(Adv).
verb_phrase(verb_phrase(V, Pronoun, Det, N))                 --> verb(V), pronoun(Pronoun), det(Det), noun(N).
verb_phrase(verb_phrase(Adv, V, NounPhrase))     	         --> adv(Adv), verb(V), noun_phrase(NounPhrase).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Nouns:-
noun(noun(boy))         --> [boy].
noun(noun(box))         --> [box].
noun(noun(room))        --> [room].
noun(noun(school))      --> [school].
noun(noun(woman))       --> [woman].
noun(noun(man))         --> [man]. 
noun(noun(envelope))    --> [envelope].
noun(noun(shed))        --> [shed].
noun(noun(building))    --> [building].
noun(noun(letters))     --> [letters].
noun(noun(tree))        --> [tree].
noun(noun(girl))        --> [girl].
noun(noun(class))       --> [class].
noun(noun(car))         --> [car].
noun(noun(student))     --> [student].
noun(noun(money))       --> [money].
noun(noun(problem))     --> [problem].
noun(noun(cheese))      --> [cheese].
noun(noun(train))       --> [train].
noun(noun(bird))        --> [bird].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Verbs:-
verb(verb(put))       	--> [put].

verb(verb(give))   	    --> [give].
verb(verb(gave))     	--> [gave].

verb(verb(work))      	--> [work].
verb(verb(worked))    	--> [worked].

verb(verb(climb))     	--> [climb].
verb(verb(climbed))   	--> [climbed].

verb(verb(see))     	--> [see].
verb(verb(saw))   	    --> [saw].

verb(verb(help))     	--> [help].
verb(verb(helped))   	--> [helped].

verb(verb(accept))     	--> [accept].
verb(verb(accepted))   	--> [accepted].

verb(verb(agree))     	--> [agree].
verb(verb(agreed))   	--> [agreed].

verb(verb(allow))     	--> [allow].
verb(verb(allowed))   	--> [allowed].

verb(verb(answer))     	--> [answer].
verb(verb(answered))   	--> [answered].

verb(verb(ask))     	--> [ask].
verb(verb(asked))   	--> [asked].

verb(verb(attend))     	--> [attend].
verb(verb(attended))    --> [attended].

verb(verb(calculate))   --> [calculate].
verb(verb(calculated))  --> [calculated].

verb(verb(break))     	--> [break].
verb(verb(broke))   	--> [broke].

verb(verb(buy))     	--> [buy].
verb(verb(bought))   	--> [bought].

verb(verb(choose))     	--> [choose].
verb(verb(chose))   	--> [chose].

verb(verb(come))     	--> [come].
verb(verb(came))   	    --> [came].

verb(verb(cut))     	--> [cut].

verb(verb(drive))     	--> [drive].
verb(verb(drove))   	--> [drove].

verb(verb(build))     	--> [build].
verb(verb(built))   	--> [built].

verb(verb(eat))     	--> [eat].
verb(verb(ate))   	--> [ate].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Adjectives:-
adj(adj(young))       	--> [young].
adj(adj(big))         	--> [big].
adj(adj(large))       	--> [large].
adj(adj(empty))       	--> [empty].
adj(adj(old))         	--> [old].
adj(adj(poor))        	--> [poor].
adj(adj(white))       	--> [white].
adj(adj(pretty))      	--> [pretty].
adj(adj(angry))      	--> [angry].
adj(adj(strong))      	--> [strong].
adj(adj(clean))      	--> [clean].
adj(adj(deep))      	--> [deep].
adj(adj(tall))      	--> [tall].
adj(adj(new))      	    --> [new].
adj(adj(important))     --> [important].
adj(adj(warm))      	--> [warm].
adj(adj(long))      	--> [long].
adj(adj(beautiful))     --> [beautiful].
adj(adj(good))      	--> [good].
adj(adj(cheap))      	--> [cheap].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Adverbs:-
adv(adv(secretly))    	--> [secretly].
adv(adv(quickly))     	--> [quickly].
adv(adv(easily))     	--> [easily].
adv(adv(carefully))     --> [carefully].
adv(adv(happily))     	--> [happily].
adv(adv(slowly))     	--> [slowly].
adv(adv(badly))     	--> [badly].
adv(adv(well))     	    --> [well].
adv(adv(loudly))     	--> [loudly].
adv(adv(patiently))     --> [patiently].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Prepositions:-
prep(prep(in))        	--> [in].
prep(prep(after))     	--> [after].
prep(prep(behind))    	--> [behind].
prep(prep(with))      	--> [with].
prep(prep(on))      	--> [on].
prep(prep(at))      	--> [at].
prep(prep(to))      	--> [to].
prep(prep(by))      	--> [by].
prep(prep(under))      	--> [under].
prep(prep(from))      	--> [from].
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Determiners:-
det(det(the))         	--> [the].
det(det(a))           	--> [a].
det(det(an))        	--> [an].
det(det(three))       	--> [three].
det(det(every))       	--> [every].
det(det(some))        	--> [some].
det(det(this))        	--> [this].
det(det(those))        	--> [those].
det(det(my))        	--> [my].
det(det(your))        	--> [your].
det(det(his))        	--> [his].
det(det(her))        	--> [her].

pronoun(pronoun(me))    --> [me].
conj(conj(who))       	--> [who].
