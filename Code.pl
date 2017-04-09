sentence(sentence(NP,VP))                    --> noun_phrase(NP), verb_phrase(VP). 


noun_phrase(noun_phrase(D, N))                    			 --> det(D), noun(N).
noun_phrase(noun_phrase(D, N, Prep, NP))                     --> det(D), noun(N), prep(Prep), noun_phrase(NP).
noun_phrase(noun_phrase(D, Adj, N))               			 --> det(D), adj(Adj), noun(N).
noun_phrase(noun_phrase(D, Adj, N, C, VP))               	 --> det(D), adj(Adj), noun(N), conj(C), verb_phrase(VP).
noun_phrase(noun_phrase(D, Adj1, Adj2, N))        			 --> det(D), adj(Adj1), adj(Adj2), noun(N).
noun_phrase(noun_phrase(D, Adj, N, Prep, NP))                --> det(D), adj(Adj), noun(N), prep(Prep), noun_phrase(NP).
noun_phrase(noun_phrase(D, Adj, N, Prep, NP, Prep2, N2))     --> det(D), adj(Adj), noun(N), prep(Prep)
    														 , noun_phrase(NP), prep(Prep2), noun(N2).


verb_phrase(verb_phrase(V))                  --> verb(V).                   
verb_phrase(verb_phrase(V, NP))              --> verb(V), noun_phrase(NP).
verb_phrase(verb_phrase(V, NP1, NP2))        --> verb(V), noun_phrase(NP1), noun_phrase(NP2).
verb_phrase(verb_phrase(V, Prep,NP))         --> verb(V), prep(Prep), noun_phrase(NP).
verb_phrase(verb_phrase(V, Prep,NP, Adv))    --> verb(V), prep(Prep), noun_phrase(NP), adv(Adv).
verb_phrase(verb_phrase(V, Obj, Det, N))     --> verb(V), obj(Obj), det(Det), noun(N).
verb_phrase(verb_phrase(Adv, V, NP))     	 --> adv(Adv), verb(V), noun_phrase(NP).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

noun(noun(boy))                             --> [boy].
noun(noun(box))                             --> [box].
noun(noun(room))                            --> [room].
noun(noun(school))                          --> [school].
noun(noun(woman))                           --> [woman].
noun(noun(man))                             --> [man]. 
noun(noun(envelope))                        --> [envelope].
noun(noun(shed))                            --> [shed].
noun(noun(building))                        --> [building].
noun(noun(letters))                         --> [letters].
noun(noun(tree))                            --> [tree].

obj(obj(me)) --> [me].


verb(verb(put))           --> [put].

verb(verb(give))          --> [give].
verb(verb(gave))          --> [gave]. 
verb(verb(given))         --> [given]. 

verb(verb(work))          --> [work].
verb(verb(worked))        --> [worked].

verb(verb(climb))         --> [climb].
verb(verb(climbed))       --> [climbed].


adj(adj(young))       --> [young].
adj(adj(big))         --> [big].
adj(adj(large))       --> [large].
adj(adj(empty))       --> [empty].
adj(adj(old))         --> [old].
adj(adj(poor))        --> [poor].
adj(adj(white))       --> [white].
adj(adj(pretty))      --> [pretty].

conj(conj(who))      --> [who].


adv(adv(secretly))    --> [secretly].
adv(adv(quickly))     --> [quickly].


prep(prep(in))        --> [in].
prep(prep(after))     --> [after].
prep(prep(behind))    --> [behind].
prep(prep(with))      --> [with].

det(det(the))          --> [the].
det(det(a))            --> [a].
det(det(three))        --> [three].
det(det(every))        --> [every].
det(det(some))         --> [some].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/**

1- sentence(Parse_tree, [the, old, boy, put, a , big, box, in, the, large, empty, room, after, school], []).

2- sentence(Parse_tree, [the, old, woman, gave, the, poor, man, a, 
	white, envelope, in, the, shed, behind, the, building], []).


3- sentence(Parse_tree, [the, pretty, woman, who, worked, with, the, old, man, secretly, gave, me, three, letters], []).

4- sentence(Parse_tree, [every, boy, quickly, climbed, some, big, tree], []).

*/
