--[[======================================

||	filename: TowerDefence_MonsterWaveConfig_V3.0

||	owner: chao.cui

||	description: 怪物潮配置

||	LogName: TD_V3

||	Protection: ???

=======================================]]

------------------------
------- V3 测试 --------
------------------------

-- local tides_level_01_sample = 
-- {
--     [1] = {{monster_package={16001}, count = 3, max = 2, min = 1, route={1}}},
--     [2] = {{monster_package={16017}, count = 4, max = 2, min = 2, route={1}}},
-- }

local tides_level_01_sample = 
{
    [1]= {{monster_package  ={32008},count=2,max=1,min=1,route={1}},{monster_package={32001},count=6,max=3,min=3,route={2}},{monster_package={32001},count=6,max=3,min=3,route={3}}},
    [2]= {{monster_package  ={32008},count=3,max=3,min=1,route={1}},{monster_package={32002},count=6,max=3,min=1,route={2}},{monster_package={32002},count=6,max=3,min=1,route={3}}},
    [3]= {{monster_package  ={32008},count=6,max=3,min=1,route={1}},{monster_package={32003},count=6,max=6,min=6,route={2}},{monster_package={32003},count=6,max=6,min=6,route={3}}},
    [4]= {{monster_package  ={32009},count=2,max=1,min=1,route={1}},{monster_package={32004},count=8,max=4,min=1,route={2}},{monster_package={32004},count=8,max=4,min=1,route={3}}},
    [5]= {{monster_package  ={32009},count=4,max=2,min=2,route={1}},{monster_package={32005},count=6,max=3,min=1,route={2}},{monster_package={32005},count=6,max=3,min=1,route={3}}},
    [6]= {{monster_package  ={32010},count=2,max=1,min=1,route={1}},{monster_package={32006},count=6,max=3,min=3,route={2}},{monster_package={32006},count=6,max=3,min=3,route={3}}},        
}
 

local tides_level_02_sample = 
{
    [1]= {{monster_package  ={32021},count=8,max=4,min=1,route={1}},{monster_package={32021},count=8,max=4,min=1,route={2}}},
    [2]= {{monster_package  ={32022},count=8,max=3,min=1,route={1}},{monster_package={32022},count=8,max=3,min=1,route={2}}},
    [3]= {{monster_package  ={32023},count=8,max=4,min=1,route={1}},{monster_package={32024},count=8,max=4,min=1,route={2}}},
    [4]= {{monster_package  ={32025},count=2,max=1,min=1,route={1}},{monster_package={32025},count=2,max=1,min=1,route={2}}},
    [5]= {{monster_package  ={32026},count=1,max=1,min=1,route={1}},{monster_package={32027},count=1,max=1,min=1,route={2}}},
    [6]= {{monster_package  ={32028},count=1,max=1,min=1,route={1}},{monster_package={32027},count=1,max=1,min=1,route={2}}},        
}

local tides_level_03_sample = 
{
    [1]= {{monster_package  ={32041},count=6,max=6,min=6,route={1}}},
    [2]= {{monster_package  ={32042},count=12,max=6,min=4,route={1}},{monster_package={32046},count=4,max=2,min=2,route={2}}},
    [3]= {{monster_package  ={32044},count=12,max=6,min=6,route={1}}},
    [4]= {{monster_package  ={32043},count=8,max=3,min=3,route={1}},{monster_package={32046},count=3,max=2,min=2,route={2}}},
    [5]= {{monster_package={32044},count=10,max=4,min=3,route={1}},{monster_package={32047},count=1,max=1,min=1,route={2}}},
}

local tides_level_04_sample = 
{
    [1]= {{monster_package  ={32061},count=8,max=4,min=4,route={1}}},
    [2]= {{monster_package  ={32062},count=6,max=3,min=3,route={1}},{monster_package={32064},count=3,max=2,min=2,route={2}}},
    [3]= {{monster_package  ={32062},count=6,max=3,min=3,route={1}},{monster_package={32067},count=4,max=2,min=2,route={2}},{monster_package  ={32065},count=6,max=3,min=3,route={3}}},
    [4]= {{monster_package  ={32066},count=6,max=3,min=3,route={2}},{monster_package={32065},count=6,max=4,min=3,route={3}}},
    [5]= {{monster_package={32066},count=4,max=2,min=2,route={1}},{monster_package={32064},count=1,max=1,min=1,route={2}},{monster_package  ={32065},count=6,max=3,min=3,route={3}}},
}

local tides_level_01_hard = 
{
    [1]= {{monster_package  ={32088},count=2,max=1,min=1,route={1}},{monster_package={32081},count=6,max=3,min=3,route={2}},{monster_package={32081},count=6,max=3,min=3,route={3}}},
    [2]= {{monster_package  ={32088},count=3,max=3,min=1,route={1}},{monster_package={32082},count=6,max=3,min=1,route={2}},{monster_package={32082},count=6,max=3,min=1,route={3}}},
    [3]= {{monster_package  ={32088},count=6,max=3,min=1,route={1}},{monster_package={32083},count=6,max=6,min=6,route={2}},{monster_package={32083},count=6,max=6,min=6,route={3}}},
    [4]= {{monster_package  ={32089},count=2,max=1,min=1,route={1}},{monster_package={32084},count=8,max=4,min=1,route={2}},{monster_package={32084},count=8,max=4,min=1,route={3}}},
    [5]= {{monster_package  ={32089},count=4,max=1,min=1,route={1}},{monster_package={32085},count=6,max=3,min=1,route={2}},{monster_package={32085},count=6,max=3,min=1,route={3}}},
    [6]= {{monster_package  ={32090},count=2,max=1,min=1,route={1}},{monster_package={32086},count=6,max=3,min=3,route={2}},{monster_package={32086},count=6,max=3,min=3,route={3}}},        
}

local tides_level_02_hard = 
{
    [1]= {{monster_package  ={32101},count=8,max=4,min=1,route={1}},{monster_package={32101},count=8,max=4,min=1,route={2}}},
    [2]= {{monster_package  ={32102},count=8,max=3,min=1,route={1}},{monster_package={32102},count=8,max=3,min=1,route={2}}},
    [3]= {{monster_package  ={32103},count=8,max=4,min=1,route={1}},{monster_package={32104},count=8,max=4,min=1,route={2}}},
    [4]= {{monster_package  ={32105},count=2,max=1,min=1,route={1}},{monster_package={32105},count=2,max=1,min=1,route={2}}},
    [5]= {{monster_package  ={32106},count=1,max=1,min=1,route={1}},{monster_package={32107},count=1,max=1,min=1,route={2}}},
    [6]= {{monster_package  ={32108},count=1,max=1,min=1,route={1}},{monster_package={32107},count=1,max=1,min=1,route={2}}},        
}

local tides_level_03_hard = 
{
    [1]= {{monster_package  ={32121},count=6,max=6,min=6,route={1}}},
    [2]= {{monster_package  ={32122},count=9,max=3,min=3,route={1}},{monster_package={32130},count=5,max=3,min=2,route={2}}},
    [3]= {{monster_package  ={32124},count=9,max=3,min=3,route={1}},{monster_package={32127},count=1,max=1,min=1,route={2}}},
    [4]= {{monster_package  ={32123},count=6,max=3,min=3,route={1}},{monster_package={32128},count=3,max=2,min=2,route={2}}},
    [5]= {{monster_package={32131},count=3,max=1,min=1,route={1}},{monster_package={32127},count=1,max=1,min=1,route={2}}},
}

local tides_level_04_hard = 
{
    [1]= {{monster_package  ={32141},count=16,max=8,min=8,route={1}}},
    [2]= {{monster_package  ={32142},count=9,max=3,min=3,route={1}},{monster_package={32144},count=6,max=3,min=3,route={2}}},
    [3]= {{monster_package  ={32142},count=6,max=3,min=3,route={1}},{monster_package={32147},count=6,max=3,min=3,route={2}},{monster_package  ={32145},count=6,max=6,min=6,route={3}}},
    [4]= {{monster_package  ={32148},count=6,max=6,min=6,route={1}},{monster_package  ={32150},count=1,max=1,min=1,route={2}},{monster_package={32145},count=6,max=6,min=6,route={3}}},
    [5]= {{monster_package={32150},count=1,max=1,min=1,route={1}},{monster_package={32150},count=1,max=1,min=1,route={2}},{monster_package  ={32149},count=1,max=1,min=1,route={3}}},
}


