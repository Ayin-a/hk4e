--misc
--[[
--每个group里配的，表示这个group里每个随机策略对应的怪物配置，存档为1-4的随机值
local random_strategy_info={
    [1]=random_strategy_01,
    [2]=random_strategy_02,
    [3]=random_strategy_03,
    [4]=random_strategy_04
}
]]

--config

--每一波具体使用的资源包，数值等

local wave_01={ monster_package={36001}, total_count=14, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_02={ monster_package={36002}, total_count=5, min_count=2, max_count=3, fill_time=60, fill_count=3, is_ordered = true , awardball_thinkinterval=12 }

local wave_03={ monster_package={36003}, total_count=6, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_04={ monster_package={36004}, total_count=5, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_05={ monster_package={36005}, total_count=8, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_06={ monster_package={36006}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_07={ monster_package={36007}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_08={ monster_package={36008}, total_count=8, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12}

local wave_09={ monster_package={36009}, total_count=9, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_10={ monster_package={36010}, total_count=10, min_count=2, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_11={ monster_package={36011}, total_count=12, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12}

local wave_12={ monster_package={36012}, total_count=12, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_13={ monster_package={36013}, total_count=12, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_14={ monster_package={36014}, total_count=12, min_count=4, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_15={ monster_package={36015}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_16={ monster_package={36016}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_17={ monster_package={36017}, total_count=16, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_18={ monster_package={36018}, total_count=16, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_19={ monster_package={36019}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_20={ monster_package={36020}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_21={ monster_package={36021}, total_count=14, min_count=4, max_count=5, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_22={ monster_package={36022}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_23={ monster_package={36023}, total_count=14, min_count=4, max_count=5, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_24={ monster_package={36024}, total_count=2, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_25={ monster_package={36025}, total_count=12, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_26={ monster_package={36026}, total_count=8, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_27={ monster_package={36027}, total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_28={ monster_package={36028}, total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_29={ monster_package={36029}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_30={ monster_package={36030}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_31={ monster_package={36031}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_32={ monster_package={36032}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_33={ monster_package={36033}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_34={ monster_package={36034}, total_count=7, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_35={ monster_package={36035}, total_count=7, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_36={ monster_package={36036}, total_count=9, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_37={ monster_package={36037}, total_count=9, min_count=1, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_38={ monster_package={36038}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_39={ monster_package={36039}, total_count=12, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_40={ monster_package={36040}, total_count=10, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_41={ monster_package={36041}, total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_42={ monster_package={36042}, total_count=4, min_count=2, max_count=2, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_43={ monster_package={36043}, total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_44={ monster_package={36044}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_45={ monster_package={36045}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_46={ monster_package={36046}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_47={ monster_package={36047}, total_count=16, min_count=1, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_48={ monster_package={36048}, total_count=7, min_count=1, max_count=3, fill_time=40, fill_count=3, is_ordered = true , awardball_thinkinterval=12 }

local wave_49={ monster_package={36049}, total_count=7, min_count=2, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_50={ monster_package={36050}, total_count=1, min_count=1, max_count=1, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_51={ monster_package={36051}, total_count=3, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=10 }

local wave_52={ monster_package={36052}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_53={ monster_package={36053}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_54={ monster_package={36054}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_55={ monster_package={36055}, total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_56={ monster_package={36056}, total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_57={ monster_package={36057}, total_count=6, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_58={ monster_package={36058}, total_count=14, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_59={ monster_package={36059}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }

local wave_60={ monster_package={36060}, total_count=12, min_count=3, max_count=4, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=12 }
--假的怪物预览
local wave_61={ monster_package={36061}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=15 }

local wave_62={ monster_package={36062}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=20 }

local wave_63={ monster_package={36063}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=20 }

local wave_64={ monster_package={36064}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=20 }

local wave_65={ monster_package={36065}, total_count=9, min_count=3, max_count=3, fill_time=0, fill_count=0, is_ordered = true , awardball_thinkinterval=20 }

--反查表
local monsterPoolReverseTable=
{
    [36001]=wave_01,[36002]=wave_02,[36003]=wave_03,[36004]=wave_04,[36005]=wave_05,[36006]=wave_06,[36007]=wave_07,[36008]=wave_08,[36009]=wave_09,
    [36010]=wave_10,[36011]=wave_11,[36012]=wave_12,[36013]=wave_13,[36014]=wave_14,[36015]=wave_15,[36016]=wave_16,[36017]=wave_17,[36018]=wave_18,[36019]=wave_19,
    [36020]=wave_20,[36021]=wave_21,[36022]=wave_22,[36023]=wave_23,[36024]=wave_24,[36025]=wave_25,[36026]=wave_26,[36027]=wave_27,[36028]=wave_28,[36029]=wave_29,
    [36030]=wave_30,[36031]=wave_31,[36032]=wave_32,[36033]=wave_33,[36034]=wave_34,[36035]=wave_35,[36036]=wave_36,[36037]=wave_37,[36038]=wave_38,[36039]=wave_39,
    [36040]=wave_40,[36041]=wave_41,[36042]=wave_42,[36043]=wave_43,[36044]=wave_44,[36045]=wave_45,[36046]=wave_46,[36047]=wave_47,[36048]=wave_48,[36049]=wave_49,
    [36050]=wave_50,[36051]=wave_51,[36052]=wave_52,[36053]=wave_53,[36054]=wave_54,[36055]=wave_55,[36056]=wave_56,[36057]=wave_57,[36058]=wave_58,[36059]=wave_59,
    [36060]=wave_60,[36061]=wave_61,[36062]=wave_62,[36063]=wave_63,[36064]=wave_64,[36065]=wave_65
}

--表示该策略下的三波怪物分别对应的怪物配置

-- day1
local random_strategy_01={
    [1]={wave_01},
    [2]={wave_61},
    [3]={wave_06},
}

--day2
local random_strategy_02={
    [1]={wave_08},
    [2]={wave_09},
    [3]={wave_46},
}

--day3
local random_strategy_03={
    [1]={wave_18},
    [2]={wave_26},
    [3]={wave_63},
}

--day4
local random_strategy_04={
    [1]={wave_11,wave_12,wave_13,wave_14},
    [2]={wave_27,wave_28,wave_51},
    [3]={wave_15,wave_16,wave_44,wave_45},
}



--day5
local random_strategy_05={
    [1]={wave_07},
    [2]={wave_34,wave_35,wave_49},
    [3]={wave_50,wave_22,wave_29,wave_33,wave_31},
}

--防守1
local random_strategy_06={
    [1]={wave_25},

}

--防守2
local random_strategy_07={
    [1]={wave_37},

}

--防守3
local random_strategy_08={
    [1]={wave_38},
}

--防守4
local random_strategy_09={
    [1]={wave_39},

}
--防守5
local random_strategy_10={
    [1]={wave_40},

}








local fungus_strategy_info={

    [8101]=
    {
        [1]=random_strategy_01

    },
    [8102]=
    {
        [1]=random_strategy_02

    },
    [8103]=
    {
        [1]=random_strategy_03

    },
    [8104]=
    {
        [1]=random_strategy_04

    },
    [8105]=
    {
        [1]=random_strategy_05

    },
    [8106]=
    {
        [1]=random_strategy_06

    },
    [8107]=
    {
        [1]=random_strategy_07
    },
    [8108]=
    {
        [1]=random_strategy_08
    },
    [8109]=
    {
        [1]=random_strategy_09
    },
    [8110]=
    {
        [1]=random_strategy_10
		}
}
