image_xscale = 4; image_yscale = 4;
player.state = "shop";
player.xCur = 400; player.yCur = 400;

txt = "";

var s = instance_create_depth(1100, 800, depth-1, objStoreItem);
s.cost = 0;
s.desc = "Nothing just now, thanks.";
s.sprite_index = imgExitStore;


s = instance_create_depth(300, 300, depth-1, objStoreItem);
s.cost = 8;
s.desc = "Fall slowly, i.e. cartoon physics";
s.sprite_index = imgPlayerSunbrella;


s = instance_create_depth(450, 300, depth-1, objStoreItem);
s.cost = 8;
s.desc = "So thick it'll block shots";
s.sprite_index = imgPlayerBook;



s = instance_create_depth(350, 550, depth-1, objStoreItem);
s.cost = 8;
s.desc = "Not really useful TBH";
s.sprite_index = imgPlayerHammer;

s = instance_create_depth(600, 550, depth-1, objStoreItem);
s.cost = player.hpMax * 2;
s.desc = "VERY good for you";
s.sprite_index = imgPlayerTaco;


selectStoreItem();
