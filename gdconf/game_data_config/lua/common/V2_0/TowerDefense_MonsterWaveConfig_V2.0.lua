
-----------------------
-----------------------
-------阵容配置---------
---------单路----------
-----------------------
-----------------------




--第一波

-----无属性阵容
wave01_noelement_oneway={
  [1]={{monster_package={16001,16002,16003},count=30,max=5,min=5,route={1}}}, 
}


--第二波

-----无属性阵容
wave02_noelement_oneway={
  [1]={{monster_package={16011},count=20,max=5,min=5,route={1}}}, 
}
-----冰属性阵容
wave02_ice_oneway={
  [1]={{monster_package={16020},count=30,max=5,min=5,route={1}}}, 
}
-----火属性阵容
wave02_fire_oneway={
  [1]={{monster_package={16017},count=10,max=5,min=5,route={1}}}, 
}
-----雷属性阵容
wave02_electricity_oneway={
  [1]={{monster_package={16021},count=30,max=5,min=5,route={1}}}, 
}

--第三波

-----无属性阵容
wave03_noelement_oneway={
  [1]={{monster_package={16033,16034,16035},count=20,max=5,min=5,route={1}}}, 
}
-----冰属性阵容
wave03_ice_oneway={
  [1]={{monster_package={16031},count=30,max=5,min=5,route={1}}}, 
}
-----火属性阵容
wave03_fire_oneway={
  [1]={{monster_package={16030},count=30,max=5,min=5,route={1}}}, 
}
-----雷属性阵容
wave03_electricity_oneway={
  [1]={{monster_package={16032},count=30,max=5,min=5,route={1}}}, 
}


--第四波

-----无属性阵容
wave04_noelement_oneway={
  [1]={{monster_package={16044,16045},count=30,max=5,min=5,route={1}}}, 
}
-----小宝
wave04_defender_oneway={
  [1]={{monster_package={16043},count=3,max=1,min=1,route={1}}}, 
}
-----冰属性阵容
wave04_ice_oneway={
  [1]={{monster_package={16042},count=30,max=5,min=5,route={1}}}, 
}
-----火属性阵容
wave04_fire_oneway={
  [1]={{monster_package={16040},count=30,max=5,min=5,route={1}}}, 
}
-----雷属性阵容
wave04_electricity_oneway={
  [1]={{monster_package={16041},count=30,max=5,min=5,route={1}}}, 
}

--第五波

--小宝：输出校验，几乎百搭所有炮台build
wave05_boss_defender_oneway={
  [1]={{monster_package={16050},count=3,max=1,min=1,route={1}}},
}

--龙蜥：远程炮台，需要玩家提升炮台射程
wave05_boss_dragon_oneway={
  [1]={{monster_package={16051},count=3,max=1,min=1,route={1}}},
}

--追猎者：需要玩家提升控制炮台的能力
wave05_boss_hunter_oneway={
  [1]={{monster_package={16052},count=3,max=1,min=1,route={1}}},
}

--霜铠王：需要玩家提升对冰能力
wave05_boss_iceking_oneway={
  [1]={{monster_package={16053},count=3,max=1,min=1,route={1}}},
}

--岩盔王：需要玩家提升对火能力、破岩能力
wave05_boss_rockking_oneway={
  [1]={{monster_package={16054},count=3,max=1,min=1,route={1}}},
}

--雷暴王：需要玩家提升对雷能力
wave05_boss_electricking_oneway={
  [1]={{monster_package={16055},count=3,max=1,min=1,route={1}}},
}


-----------------------
---------单路----------
-----------------------

-----无属性小宝阵容
local stage_defender_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_noelement_oneway,
  [3]=wave03_noelement_oneway,
  [4]=wave04_defender_oneway,
}
-----无属性龙蜥阵容
local stage_dragon_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_noelement_oneway,
  [3]=wave03_noelement_oneway,
  [4]=wave04_noelement_oneway,
  [5]=wave05_boss_dragon_oneway,
}
-----无属性猎者阵容
local stage_hunter_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_noelement_oneway,
  [3]=wave03_noelement_oneway,
  [4]=wave04_noelement_oneway,
  [5]=wave05_boss_hunter_oneway,
}
-----冰属性阵容
local stage_iceking_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_ice_oneway,
  [3]=wave03_ice_oneway,
  [4]=wave04_ice_oneway,
  [5]=wave05_boss_iceking_oneway,
}
-----火属性阵容
local stage_rockking_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_fire_oneway,
  [3]=wave03_fire_oneway,
  [4]=wave04_fire_oneway,
  [5]=wave05_boss_rockking_oneway,
}

-----雷属性阵容
local stage_electricking_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_electricity_oneway,
  [3]=wave03_electricity_oneway,
  [4]=wave04_electricity_oneway,
  [5]=wave05_boss_electricking_oneway,
}

-----教学
local stage_teachstage_oneway={
  [1]=wave01_noelement_oneway,
  [2]=wave02_fire_oneway,
}



-----------------------
-----------------------
-------阵容配置---------
---------双路----------
-----------------------
-----------------------




--第一波

-----无属性阵容
wave01_noelement_twoway={
  [1]={{monster_package={16001,16002,16003},count=15,max=5,min=5,route={1,2}}}, 
}

--第二波

-----无属性阵容
wave02_noelement_twoway={
  [1]={{monster_package={16010,16011,16012,16013,16014,16015},count=15,max=5,min=5,route={1,2}}}, 
}
-----冰属性阵容
wave02_ice_twoway={
  [1]={{monster_package={16020},count=15,max=5,min=5,route={1,2}}}, 
}
-----火属性阵容
wave02_fire_twoway={
  [1]={{monster_package={16017},count=15,max=5,min=5,route={1,2}}}, 
}
-----雷属性阵容
wave02_electricity_twoway={
  [1]={{monster_package={16021},count=15,max=5,min=5,route={1,2}}}, 
}

--第三波

-----无属性阵容
wave03_noelement_twoway={
  [1]={{monster_package={16033,16034,16035},count=15,max=5,min=5,route={1,2}}}, 
}
-----冰属性阵容
wave03_ice_twoway={
  [1]={{monster_package={16031},count=15,max=5,min=5,route={1,2}}}, 
}
-----火属性阵容
wave03_fire_twoway={
  [1]={{monster_package={16030},count=15,max=5,min=5,route={1,2}}}, 
}
-----雷属性阵容
wave03_electricity_twoway={
  [1]={{monster_package={16032},count=15,max=5,min=5,route={1,2}}}, 
}


-----[双色]雷属性阵容+冰属性阵容
wave03_electricity_ice_twoway={
  [1]={{monster_package={16032},count=15,max=5,min=5,route={1}},{monster_package={16031},count=15,max=5,min=5,route={2} }}, 
}

-----[双色]雷属性阵容+火属性阵容
wave03_electricity_fire_twoway={
  [1]={{monster_package={16032},count=15,max=5,min=5,route={1}},{monster_package={16030},count=15,max=5,min=5,route={2} }}, 
}

-----[双色]冰属性阵容+火属性阵容
wave03_ice_fire_twoway={
  [1]={{monster_package={16031},count=15,max=5,min=5,route={1}},{monster_package={16030},count=15,max=5,min=5,route={2} }}, 
}



--第四波

-----无属性阵容
wave04_noelement_twoway={
  [1]={{monster_package={16044,16045},count=15,max=5,min=5,route={1,2}}}, 
}
-----无属性阵容
wave04_defender_twoway={
  [1]={{monster_package={16043},count=3,max=1,min=1,route={1,2}}}, 
}
-----冰属性阵容
wave04_ice_twoway={
  [1]={{monster_package={16042},count=15,max=5,min=5,route={1,2}}}, 
}
-----火属性阵容
wave04_fire_twoway={
  [1]={{monster_package={16040},count=15,max=5,min=5,route={1,2}}}, 
}
-----雷属性阵容
wave04_electricity_twoway={
  [1]={{monster_package={16041},count=15,max=5,min=5,route={1,2}}}, 
}



-----[双色]雷属性阵容+冰属性阵容
wave04_electricity_ice_twoway={
  [1]={{monster_package={16041},count=15,max=5,min=5,route={1}},{monster_package={16042},count=15,max=5,min=5,route={2} }}, 
}

-----[双色]雷属性阵容+火属性阵容
wave04_electricity_fire_twoway={
  [1]={{monster_package={16041},count=15,max=5,min=5,route={1}},{monster_package={16040},count=15,max=5,min=5,route={2} }}, 
}

-----[双色]冰属性阵容+火属性阵容
wave04_ice_fire_twoway={
  [1]={{monster_package={16042},count=15,max=5,min=5,route={1}},{monster_package={16040},count=15,max=5,min=5,route={2} }}, 
}











--第五波

--小宝：输出校验，几乎百搭所有炮台build

wave05_boss_defender_twoway={
  [1]={{monster_package={16050},count=3,max=1,min=1,route={1,2}}},
}

--龙蜥：远程炮台，需要玩家提升炮台射程
wave05_boss_dragon_twoway={
  [1]={{monster_package={16051},count=3,max=1,min=1,route={1,2}}},
}

--追猎者：需要玩家提升控制炮台的能力
wave05_boss_hunter_twoway={
  [1]={{monster_package={16052},count=3,max=1,min=1,route={1,2}}},
}

--霜铠王：需要玩家提升对冰能力
wave05_boss_iceking_twoway={
  [1]={{monster_package={16053},count=3,max=1,min=1,route={1,2}}},
}

--岩盔王：需要玩家提升对火能力、破岩能力
wave05_boss_rockking_twoway={
  [1]={{monster_package={16054},count=3,max=1,min=1,route={1,2}}},
}

--雷暴王：需要玩家提升对雷能力
wave05_boss_electricking_twoway={
  [1]={{monster_package={16055},count=3,max=1,min=1,route={1,2}}},
}


--[双色]雷暴王+霜铠王
wave05_boss_electricking_iceking_twoway={
  [1]={{monster_package={16055},count=3,max=1,min=1,route={1}},{monster_package={16053},count=3,max=1,min=1,route={2}}},
}

--[双色]雷暴王+岩盔王
wave05_boss_electricking_rockking_twoway={
  [1]={{monster_package={16055},count=3,max=1,min=1,route={1}},{monster_package={16054},count=3,max=1,min=1,route={2}}},
}

--[双色]霜铠王+岩盔王
wave05_boss_iceking_rockking_twoway={
  [1]={{monster_package={16053},count=3,max=1,min=1,route={1}},{monster_package={16054},count=3,max=1,min=1,route={2}}},
}

--暴徒
wave05_boss_thug_twoway={
  [1]={{monster_package={16056},count=15,max=5,min=5,route={1,2}}},
}
--雷暴王+小怪
wave05_boss_electricking_hil_twoway={
  [1]={{monster_package={16057},count=10,max=5,min=5,route={1,2}}},
}
--岩盔王+小怪
wave05_boss_rockking_hil_twoway={
  [1]={{monster_package={16058},count=10,max=5,min=5,route={1,2}}},
}
--霜铠王+小怪
wave05_boss_iceking_hil_twoway={
  [1]={{monster_package={16059},count=10,max=5,min=5,route={1,2}}},
}



-----------------------
---------双路----------
-----------------------

-----无属性小宝阵容
local stage_defender_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_defender_twoway,
  [5]=wave05_boss_defender_twoway,
  ban_card_tag_list={6,7},
}
-----无属性龙蜥阵容
local stage_dragon_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_dragon_twoway,
  ban_card_tag_list={1,4},
}
-----无属性猎者阵容
local stage_hunter_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_hunter_twoway,
  ban_card_tag_list={4,6},
}
-----冰属性阵容
local stage_iceking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_ice_twoway,
  [3]=wave03_ice_twoway,
  [4]=wave04_ice_twoway,
  [5]=wave05_boss_iceking_twoway,
  ban_card_tag_list={1,3},
}
-----火属性阵容
local stage_rockking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_fire_twoway,
  [3]=wave03_fire_twoway,
  [4]=wave04_fire_twoway,
  [5]=wave05_boss_rockking_twoway,
  ban_card_tag_list={2,5},
}

-----雷属性阵容
local stage_electricking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_electricity_twoway,
  [3]=wave03_electricity_twoway,
  [4]=wave04_electricity_twoway,
  [5]=wave05_boss_electricking_twoway,
  ban_card_tag_list={1,5},
}



-----[双色]雷+冰属性阵容
local stage_electricking_iceking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_electricity_ice_twoway,
  [4]=wave04_electricity_ice_twoway,
  [5]=wave05_boss_electricking_iceking_twoway,
  ban_card_tag_list={1,4},
}

-----[双色]雷+火属性阵容
local stage_electricking_rockking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_electricity_fire_twoway,
  [4]=wave04_electricity_fire_twoway,
  [5]=wave05_boss_electricking_rockking_twoway,
  ban_card_tag_list={4,6},    
}

-----[双色]冰+火属性阵容
local stage_iceking_rockking_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_ice_fire_twoway,
  [4]=wave04_ice_fire_twoway,
  [5]=wave05_boss_iceking_rockking_twoway,
  ban_card_tag_list={5,6},  
}

-----无属性暴徒阵容
local stage_thug_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_thug_twoway,
  ban_card_tag_list={1,5},
}

-----嘲讽雷暴王+小怪阵容
local stage_electricking_hil_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_electricking_hil_twoway,
  ban_card_tag_list={3,6},
}

-----嘲讽岩盔王+小怪阵容
local stage_rockking_hil_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_rockking_hil_twoway,
  ban_card_tag_list={1,4},
}

-----嘲讽霜铠王+小怪阵容
local stage_iceking_hil_twoway={
  [1]=wave01_noelement_twoway,
  [2]=wave02_noelement_twoway,
  [3]=wave03_noelement_twoway,
  [4]=wave04_noelement_twoway,
  [5]=wave05_boss_iceking_hil_twoway,
  ban_card_tag_list={1,3},
}

-----------------------
-----------------------
-------阵容配置---------
---------三路----------
-----------------------
-----------------------




--第一波

-----无属性阵容
wave01_noelement_threeway={
  [1]={{monster_package={16001,16002,16003},count=10,max=5,min=5,route={1,2,3}}}, 
}


--第二波

-----无属性阵容
wave02_noelement_threeway={
  [1]={{monster_package={16010,16011,16012,16013,16014,16015},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----冰属性阵容
wave02_ice_threeway={
  [1]={{monster_package={16020},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----火属性阵容
wave02_fire_threeway={
  [1]={{monster_package={16017},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----雷属性阵容
wave02_electricity_threeway={
  [1]={{monster_package={16021},count=10,max=5,min=5,route={1,2,3}}}, 
}

--第三波

-----无属性阵容
wave03_noelement_threeway={
  [1]={{monster_package={16033,16034,16035},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----冰属性阵容
wave03_ice_threeway={
  [1]={{monster_package={16031},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----火属性阵容
wave03_fire_threeway={
  [1]={{monster_package={16030},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----雷属性阵容
wave03_electricity_threeway={
  [1]={{monster_package={16032},count=10,max=5,min=5,route={1,2,3}}}, 
}


--第四波

-----无属性阵容
wave04_noelement_threeway={
  [1]={{monster_package={16044,16045},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----无属性阵容
wave04_defender_threeway={
  [1]={{monster_package={16043},count=2,max=1,min=1,route={1,2}},{monster_package={16043},count=2,max=1,min=1,route={3}}}, 
}
-----冰属性阵容
wave04_ice_threeway={
  [1]={{monster_package={16042},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----火属性阵容
wave04_fire_threeway={
  [1]={{monster_package={16040},count=10,max=5,min=5,route={1,2,3}}}, 
}
-----雷属性阵容
wave04_electricity_threeway={
  [1]={{monster_package={16041},count=10,max=5,min=5,route={1,2,3}}}, 
}

--第五波

--小宝：输出校验，几乎百搭所有炮台build
wave05_boss_defender_threeway={
  [1]={{monster_package={16050},count=2,max=1,min=1,route={1,2,3}}},
}

--龙蜥：远程炮台，需要玩家提升炮台射程
wave05_boss_dragon_threeway={
  [1]={{monster_package={16051},count=2,max=1,min=1,route={1,2,3}}},
}

--追猎者：需要玩家提升控制炮台的能力
wave05_boss_hunter_threeway={
  [1]={{monster_package={16052},count=2,max=1,min=1,route={1,2,3}}},
}

--霜铠王：需要玩家提升对冰能力
wave05_boss_iceking_threeway={
  [1]={{monster_package={16053},count=2,max=1,min=1,route={1,2,3}}},
}

--岩盔王：需要玩家提升对火能力、破岩能力
wave05_boss_rockking_threeway={
  [1]={{monster_package={16054},count=2,max=1,min=1,route={1,2,3}}},
}
--雷暴王：需要玩家提升对雷能力
wave05_boss_electricking_threeway={
  [1]={{monster_package={16055},count=2,max=1,min=1,route={1,2,3}}},
}


--[二色]霜铠王+雷暴王
wave05_boss_rockking_iceking_threeway={
  [1]={{monster_package={16054},count=2,max=1,min=1,route={1}},{monster_package={16053},count=2,max=1,min=1,route={2}},{monster_package={16053},count=2,max=1,min=1,route={3}}},
}

--暴徒
wave05_boss_thug_threeway={
  [1]={{monster_package={16056},count=10,max=5,min=5,route={1,2,3}}},
}
--雷暴王+小怪
wave05_boss_electricking_hil_threeway={
  [1]={{monster_package={16057},count=6,max=4,min=4,route={1,2,3}}},
}
--岩盔王+小怪
wave05_boss_rockking_hil_threeway={
  [1]={{monster_package={16058},count=6,max=4,min=4,route={1,2,3}}},
}
--霜铠王+小怪
wave05_boss_iceking_hil_threeway={
  [1]={{monster_package={16059},count=6,max=4,min=4,route={1,2,3}}},
}


-----------------------
---------三路----------
-----------------------

-----无属性小宝阵容
local stage_defender_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_defender_threeway,
  [5]=wave05_boss_defender_threeway,
  ban_card_tag_list={6,7},
}
-----无属性龙蜥阵容
local stage_dragon_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_dragon_threeway,
  ban_card_tag_list={1,4},
}
-----无属性猎者阵容
local stage_hunter_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_hunter_threeway,
  ban_card_tag_list={4,6},
}
-----冰属性阵容
local stage_iceking_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_ice_threeway,
  [3]=wave03_ice_threeway,
  [4]=wave04_ice_threeway,
  [5]=wave05_boss_iceking_threeway,
  ban_card_tag_list={1,3},
}
-----火属性阵容
local stage_rockking_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_fire_threeway,
  [3]=wave03_fire_threeway,
  [4]=wave04_fire_threeway,
  [5]=wave05_boss_rockking_threeway,
  ban_card_tag_list={2,5},
}

-----雷属性阵容
local stage_electricking_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_electricity_threeway,
  [3]=wave03_electricity_threeway,
  [4]=wave04_electricity_threeway,
  [5]=wave05_boss_electricking_threeway,
  ban_card_tag_list={1,5},
}


-----[三色]火+冰属性阵容
local stage_iceking_rockking_electricking_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_rockking_iceking_threeway,
  ban_card_tag_list={1,4},  
}

-----无属性暴徒阵容
local stage_thug_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_thug_threeway,
  ban_card_tag_list={1,5},
}

-----嘲讽雷暴王+小怪阵容
local stage_electricking_hil_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_electricking_hil_threeway,
  ban_card_tag_list={3,6},
}

-----嘲讽岩盔王+小怪阵容
local stage_rockking_hil_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_rockking_hil_threeway,
  ban_card_tag_list={1,4},
}

-----嘲讽霜铠王+小怪阵容
local stage_iceking_hil_threeway={
  [1]=wave01_noelement_threeway,
  [2]=wave02_noelement_threeway,
  [3]=wave03_noelement_threeway,
  [4]=wave04_noelement_threeway,
  [5]=wave05_boss_iceking_hil_threeway,
  ban_card_tag_list={1,3},
}


-----------------------
-----------------------
-------阵容配置---------
---------四路----------
-----------------------
-----------------------


--第一波

-----无属性阵容
wave01_noelement_fourway={
  [1]={{monster_package={16001,16002,16003},count=10,max=5,min=5,route={1,2}},{monster_package={16001,16002,16003},count=5,max=2,min=2,route={3,4}}}, 
}


--第二波

-----无属性阵容
wave02_noelement_fourway={
  [1]={{monster_package={16010,16011,16012,16013,16014,16015},count=10,max=5,min=5,route={1,2}},{monster_package={16010,16011,16012,16013,16014,16015},count=5,max=2,min=2,route={3,4}}}, 
}
-----冰属性阵容
wave02_ice_fourway={
  [1]={{monster_package={16020},count=10,max=5,min=5,route={1,2}},{monster_package={16020},count=5,max=2,min=2,route={3,4}}}, 
}
-----火属性阵容
wave02_fire_fourway={
  [1]={{monster_package={16017},count=10,max=5,min=5,route={1,2}},{monster_package={16017},count=5,max=2,min=2,route={3,4}}}, 
}
-----雷属性阵容
wave02_electricity_fourway={
  [1]={{monster_package={16021},count=10,max=5,min=5,route={1,2}},{monster_package={16021},count=5,max=2,min=2,route={3,4}}}, 
}


-----[四色]冰+火属性阵容
wave02_ice_fire_fourway={
  [1]={{monster_package={16020},count=10,max=5,min=5,route={1,2}},{monster_package={16017},count=5,max=2,min=2,route={3,4}}}, 
}


--第三波

-----无属性阵容
wave03_noelement_fourway={
  [1]={{monster_package={16033,16034,16035},count=10,max=5,min=5,route={1,2}},{monster_package={16033,16034,16035},count=5,max=2,min=2,route={3,4}}}, 
}
-----冰属性阵容
wave03_ice_fourway={
  [1]={{monster_package={16031},count=10,max=5,min=5,route={1,2}},{monster_package={16031},count=5,max=2,min=2,route={3,4}}}, 
}
-----火属性阵容
wave03_fire_fourway={
  [1]={{monster_package={16030},count=10,max=5,min=5,route={1,2}},{monster_package={16030},count=5,max=2,min=2,route={3,4}}}, 
}
-----雷属性阵容
wave03_electricity_fourway={
  [1]={{monster_package={16032},count=10,max=5,min=5,route={1,2}},{monster_package={16032},count=5,max=2,min=2,route={3,4}}}, 
}



-----[四色]冰+火属性阵容
wave03_ice_fire_fourway={
  [1]={{monster_package={16031},count=10,max=5,min=5,route={1,2}},{monster_package={16030},count=5,max=2,min=2,route={3,4}}}, 
}



--第四波

-----无属性阵容
wave04_noelement_fourway={
  [1]={{monster_package={16044,16045},count=10,max=5,min=5,route={1,2}},{monster_package={16044,16045},count=5,max=2,min=2,route={3,4}}}, 
}
-----无属性阵容
wave04_defender_fourway={
  [1]={{monster_package={16043},count=2,max=1,min=1,route={1,2}},{monster_package={16043},count=2,max=1,min=1,route={3,4}}}, 
}
-----冰属性阵容
wave04_ice_fourway={
  [1]={{monster_package={16042},count=10,max=5,min=5,route={1,2}},{monster_package={16042},count=5,max=2,min=2,route={3,4}}}, 
}
-----火属性阵容
wave04_fire_fourway={
  [1]={{monster_package={16040},count=10,max=5,min=5,route={1,2}},{monster_package={16040},count=5,max=2,min=2,route={3,4}}}, 
}
-----雷属性阵容
wave04_electricity_fourway={
  [1]={{monster_package={16041},count=10,max=5,min=5,route={1,2}},{monster_package={16041},count=5,max=2,min=2,route={3,4}}}, 
}


-----[四色]冰+火属性阵容
wave04_ice_fire_fourway={
  [1]={{monster_package={16042},count=10,max=5,min=5,route={1,2}},{monster_package={16040},count=5,max=2,min=2,route={3,4}}}, 
}

--第五波

--小宝：输出校验，几乎百搭所有炮台build

wave05_boss_defender_fourway={
  [1]={{monster_package={16050},count=2,max=1,min=1,route={1,2}},{monster_package={16050},count=2,max=1,min=1,route={3,4}}},
}

--龙蜥：远程炮台，需要玩家提升炮台射程
wave05_boss_dragon_fourway={
  [1]={{monster_package={16051},count=2,max=1,min=1,route={1,2}},{monster_package={16051},count=2,max=1,min=1,route={3,4}}},
}

--追猎者：需要玩家提升控制炮台的能力
wave05_boss_hunter_fourway={
  [1]={{monster_package={16052},count=2,max=1,min=1,route={1,2}},{monster_package={16052},count=2,max=1,min=1,route={3,4}}},
}

--霜铠王：需要玩家提升对冰能力
wave05_boss_iceking_fourway={
  [1]={{monster_package={16053},count=2,max=1,min=1,route={1,2}},{monster_package={16053},count=2,max=1,min=1,route={3,4}}},
}

--岩盔王：需要玩家提升对火能力、破岩能力
wave05_boss_rockking_fourway={
  [1]={{monster_package={16054},count=2,max=1,min=1,route={1,2}},{monster_package={16054},count=2,max=1,min=1,route={3,4}}},
}

--雷暴王：需要玩家提升对雷能力
wave05_boss_electricking_fourway={
  [1]={{monster_package={16055},count=2,max=1,min=1,route={1,2}},{monster_package={16055},count=2,max=1,min=1,route={3,4}}},
}

-----[四色]霜铠王+岩盔王
wave05_boss_iceking_rockking_fourway={
  [1]={{monster_package={16053},count=2,max=1,min=1,route={1,2}},{monster_package={16054},count=2,max=1,min=1,route={3,4}}},
}


-----------------------
---------四路----------
-----------------------


-----无属性小宝阵容
local stage_defender_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_noelement_fourway,
  [3]=wave03_noelement_fourway,
  [4]=wave04_defender_fourway,
  [5]=wave05_boss_defender_fourway,
  ban_card_tag_list={6,7},
}
-----无属性龙蜥阵容
local stage_dragon_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_noelement_fourway,
  [3]=wave03_noelement_fourway,
  [4]=wave04_noelement_fourway,
  [5]=wave05_boss_dragon_fourway,
  ban_card_tag_list={1,4},
}
-----无属性猎者阵容
local stage_hunter_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_noelement_fourway,
  [3]=wave03_noelement_fourway,
  [4]=wave04_noelement_fourway,
  [5]=wave05_boss_hunter_fourway,
  ban_card_tag_list={4,6},
}
-----冰属性阵容
local stage_iceking_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_ice_fourway,
  [3]=wave03_ice_fourway,
  [4]=wave04_ice_fourway,
  [5]=wave05_boss_iceking_fourway,
  ban_card_tag_list={1,3},
}
-----火属性阵容
local stage_rockking_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_fire_fourway,
  [3]=wave03_fire_fourway,
  [4]=wave04_fire_fourway,
  [5]=wave05_boss_rockking_fourway,
  ban_card_tag_list={2,5},
}

-----雷属性阵容
local stage_electricking_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_electricity_fourway,
  [3]=wave03_electricity_fourway,
  [4]=wave04_electricity_fourway,
  [5]=wave05_boss_electricking_fourway,
  ban_card_tag_list={1,5},
}

-----[四色]冰+火属性阵容
local stage_iceking_rockking_fourway={
  [1]=wave01_noelement_fourway,
  [2]=wave02_ice_fire_fourway,
  [3]=wave03_ice_fire_fourway,
  [4]=wave04_ice_fire_fourway,
  [5]=wave05_boss_iceking_rockking_fourway,
  ban_card_tag_list={4,5}    
}









