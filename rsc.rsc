#Wszystko przetestować w testowym środowisku(wystarczy czasami delikatna zmiana wersji)
#lepiej robić on-site
#backup
/export file=kopia_sie_przydaje.rsc;

#ustawienie commenta i dystansu route dla PPPoE podstawowego
/interface pppoe-client set comment="podstawowe" default-route-distance=1 pppoe1;

#ustawienie commenta i dystansu route dla PPPoE zapasowego
/interface pppoe-client set comment="zapasowe2" default-route-distance=2 pppoe2;

#wylaczamy poprzednie maskarady
/ip firewall nat disable [find where action =masquerade  ];

#dodajemy nowa maskarade dla lacza podstawowego
/ip firewall nat add action=masquerade chain=srcnat out-interface=pppoe1 comment="maskarada dla podstawowego";

#dodajemy nowa maskarade dla lacza zapasowego
/ip firewall nat add action=masquerade chain=srcnat out-interface=pppoe2 comment="maskarada dla zapasowego";

#dodajemy netwatcha, hosta radze zmienic na swojego, nad intervalem zastanowic
/tool netwatch add down-script="/in dis pppoe1;\r\ndelay 1;\r\n/in en pppoe1;\r\n/ip fire conn remove [find];\r" host=8.8.8.8 interval=3s;

