-- 基础信息
local base_info = {
	group_id = 247103001
}

-- Trigger变量
local defs = {
	monster_tide = {1009,1011,1012,1013},
	total_count = 8,
	max_count = 4,
	min_count = 1,
	isFungusQuestGroup = 1,
	camGadget = {1022,1024},
	awardball_configid = 1033
}

-- DEFS_MISCS
local enemy_fungus_born_points=
{
	[1]=1005,
	[2]=1006,
	[3]=1007,
	[4]=1008
}
local partner_fungus_born_points=
{
	[1]=1001,
	[2]=1002,
	[3]=1003,
	[4]=1004	
}

local enemy_fungus_born_points_two=
{
	[1]=1014,
	[2]=1015,
	[3]=1016,
	[4]=1017
}
local partner_fungus_born_points_two=
{
	[1]=1018,
	[2]=1019,
	[3]=1020,
	[4]=1021	
}

local awardball_room_one=
{
	[1]=1025,
	[2]=1026,
	[3]=1027,
	[4]=1028
}

local awardball_room_two=
{
	[1]=1029,
	[2]=1030,
	[3]=1031,
	[4]=1032
}

local create_partner_fungus=
{
[4008206]={},
[4008304]={},
[4008312]={},
[4008405]={},
[4008409]={},
[4008515]={},
[4008516]={},
[4008514]={[1]={config_id=1023,affix={5254}}},
[4008511]={
	    [1]={config_id=1023},
        [2]={config_id=1028},
        [3]={config_id=1025},
        [4]={config_id=1026}
}
}

local create_enemy_fungus=
{
    [4008206]=
    {
        [1]={config_id=1039,affix={5247}},
        [2]={config_id=1037,affix={5247}},
        [3]={config_id=1035,affix={5247}},
        [4]={config_id=1034,affix={5223,5247}}
    },
    [4008304]=
    {
        [1]={config_id=1042,affix={5248}},
        [2]={config_id=1039,affix={5248}},
        [3]={config_id=1034,affix={5248}},
        [4]={config_id=1040,affix={5223,5248}}
    },
    [4008312]=
    {
        [1]={config_id=1033,affix={5249}},
        [2]={config_id=1040,affix={5249}},
        [3]={config_id=1042,affix={5249}},
        [4]={config_id=1037,affix={5223,5249}}
    },
    [4008405]=
    {
        [1]={config_id=1033,affix={5250}},
        [2]={config_id=1042,affix={5250}},
        [3]={config_id=1039,affix={5250}},
        [4]={config_id=1041,affix={5223,5250}}
    },
    [4008409]=
    {
        [1]={config_id=1036,affix={5251}},
        [2]={config_id=1037,affix={5251}},
        [3]={config_id=1040,affix={5251}},
        [4]={config_id=1035,affix={5223,5251}}
    },
    [4008515]=
    {
        [1]={config_id=1040,affix={5252}},
        [2]={config_id=1042,affix={5252}},
        [3]={config_id=1039,affix={5252}},
        [4]={config_id=1038,affix={5223,5252}}
    },
    [4008516]=
    {
        [1]={config_id=1040,affix={5252}},
        [2]={config_id=1042,affix={5252}},
        [3]={config_id=1039,affix={5252}},
        [4]={config_id=1038,affix={5223,5252}}
    },
    [4008514]=
    {
        [1]={config_id=1038,affix={5252}},
        [2]={config_id=1035,affix={5252}},
        [3]={config_id=1036,affix={5252}}
    },
    [4008511]={}
}

local room_two_quests={4008511,4008514}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1009, monster_id = 23010101, pos = { x = 716.494, y = 90.189, z = 781.193 }, rot = { x = 0.000, y = 112.997, z = 0.000 }, level = 21, disableWander = true },
	{ config_id = 1011, monster_id = 23010401, pos = { x = 716.598, y = 90.184, z = 785.827 }, rot = { x = 0.000, y = 136.679, z = 0.000 }, level = 21, disableWander = true },
	{ config_id = 1012, monster_id = 23010501, pos = { x = 718.878, y = 90.184, z = 787.864 }, rot = { x = 0.000, y = 172.304, z = 0.000 }, level = 21, disableWander = true },
	{ config_id = 1013, monster_id = 23010601, pos = { x = 714.354, y = 90.184, z = 784.596 }, rot = { x = 0.000, y = 109.391, z = 0.000 }, level = 21, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1022, gadget_id = 70290731, pos = { x = 720.693, y = 90.184, z = 780.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1023, gadget_id = 70290731, pos = { x = 720.670, y = 90.184, z = 781.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1024, gadget_id = 70290731, pos = { x = 218.653, y = 90.180, z = 212.988 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 1033, gadget_id = 70290663, pos = { x = 730.102, y = 90.184, z = 784.447 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 1001, pos = { x = 219.182, y = 90.184, z = 208.446 }, rot = { x = 0.000, y = 327.200, z = 0.000 } },
	{ config_id = 1002, pos = { x = 221.373, y = 90.184, z = 207.860 }, rot = { x = 0.000, y = 327.200, z = 0.000 } },
	{ config_id = 1003, pos = { x = 223.102, y = 90.184, z = 208.953 }, rot = { x = 0.000, y = 327.200, z = 0.000 } },
	{ config_id = 1004, pos = { x = 223.256, y = 90.184, z = 211.106 }, rot = { x = 0.000, y = 327.200, z = 0.000 } },
	{ config_id = 1005, pos = { x = 216.001, y = 90.192, z = 219.181 }, rot = { x = 0.000, y = 147.200, z = 0.000 } },
	{ config_id = 1006, pos = { x = 214.697, y = 90.184, z = 216.437 }, rot = { x = 0.000, y = 147.200, z = 0.000 } },
	{ config_id = 1007, pos = { x = 218.874, y = 90.184, z = 219.502 }, rot = { x = 0.000, y = 147.200, z = 0.000 } },
	{ config_id = 1008, pos = { x = 217.782, y = 90.184, z = 216.433 }, rot = { x = 0.000, y = 147.200, z = 0.000 } },
	{ config_id = 1014, pos = { x = 718.600, y = 90.184, z = 784.140 }, rot = { x = 0.000, y = 144.000, z = 0.000 } },
	{ config_id = 1015, pos = { x = 719.940, y = 90.184, z = 786.153 }, rot = { x = 0.000, y = 144.000, z = 0.000 } },
	{ config_id = 1016, pos = { x = 716.839, y = 90.184, z = 786.609 }, rot = { x = 0.000, y = 144.000, z = 0.000 } },
	{ config_id = 1017, pos = { x = 716.301, y = 90.184, z = 783.459 }, rot = { x = 0.000, y = 144.000, z = 0.000 } },
	{ config_id = 1018, pos = { x = 722.050, y = 90.183, z = 778.863 }, rot = { x = 0.000, y = 325.000, z = 0.000 } },
	{ config_id = 1019, pos = { x = 725.230, y = 90.184, z = 778.771 }, rot = { x = 0.000, y = 325.000, z = 0.000 } },
	{ config_id = 1020, pos = { x = 721.080, y = 90.184, z = 775.860 }, rot = { x = 0.000, y = 325.000, z = 0.000 } },
	{ config_id = 1021, pos = { x = 723.813, y = 90.184, z = 776.245 }, rot = { x = 357.729, y = 325.000, z = 356.939 } },
	{ config_id = 1025, pos = { x = 223.676, y = 91.184, z = 216.577 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1026, pos = { x = 214.196, y = 91.184, z = 210.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1027, pos = { x = 217.035, y = 91.184, z = 217.818 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1028, pos = { x = 224.900, y = 91.184, z = 207.642 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1029, pos = { x = 725.455, y = 91.184, z = 784.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1030, pos = { x = 717.819, y = 91.184, z = 785.134 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1031, pos = { x = 717.275, y = 91.184, z = 777.779 }, rot = { x = 0.000, y = 0.000, z = 0.000 } },
	{ config_id = 1032, pos = { x = 725.272, y = 91.184, z = 776.258 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 1010, monster_id = 23010301, pos = { x = 721.754, y = 90.184, z = 785.125 }, rot = { x = 0.000, y = 172.304, z = 0.000 }, level = 31, disableWander = true }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V3_2/Activity_BattleMushroomMonster_FugusInitialize"
require "V3_2/Activity_BattleMushroomMonster_QuestGroup"
require "V3_2/Activity_BattleMushroomMonster_FungusGroup"