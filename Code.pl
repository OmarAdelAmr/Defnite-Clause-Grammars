sentence(sentence(NP,VP))                    --> noun_phrase(NP), verb_phrase(VP). 
% A sentence consist of a noun phrase and a verb phrase.


noun_phrase(noun_phrase(D, N))               --> det(D, B), noun(B, N).

verb_phrase(verb_phrase(V))                  --> verb(V).                      % A verb phrase can be a transitive verb



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Words 
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
/*

% "mi moku." has two different parse trees here (I eat. / I am food.).
?- sentence(Parse_tree, [mi,moku], []).
Parse_tree = sentence(noun_phrase(pronoun(mi)), verb_phrase(verb(moku)), separator('.')) ;
Parse_tree = sentence(noun_phrase(pronoun(mi)), verb_phrase(verb_be(''), noun(moku)), separator('.')) ;


--------------------------------

% List the structure:
?- listing.

*/
