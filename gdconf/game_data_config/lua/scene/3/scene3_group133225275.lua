-- 基础信息
local base_info = {
	group_id = 133225275
}

-- DEFS_MISCS
local defs = {

	--开启怪物用的特效gadget--废弃
	gadget_starter = 275001,

	--开启怪物用的region--废弃
	start_region = 275003,
	--战斗开启后，加载哪些suit
	init_on_battle = {2},

	--场地范围半径
	battle_radius = 40,

	--场地范围Region/中心点
	battle_regionID = 275004,
	--优化圈
	optimize_regionID = 275005,

	--怪物configID
	monster_configID = 275002,

	--groupID
	group_id = 133225275,

	--战斗天气ID
	weather_ID = 3321,

}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	[275002] = { config_id = 275002, monster_id = 22060101, pos = { x = -6657.731, y = 193.481, z = -2661.144 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_id = 1000100, area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	[275007] = { config_id = 275007, gadget_id = 70210106, pos = { x = -6643.583, y = 193.512, z = -2648.322 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "黄金王兽", isOneoff = true, persistent = true, boss_chest = {monster_config_id=275002, resin=40, life_time=600,take_num=100}, area_id = 18 }
}

-- 区域
regions = {
	-- 战斗区域  1.eyePoint优化大圈 2.玩家出圈时尝试会切auth（废弃）
	[275004] = { config_id = 275004, shape = RegionShape.SPHERE, radius = 40, pos = { x = -6657.744, y = 193.481, z = -2661.123 }, area_id = 18 },
	-- eyePoint优化圈
	[275005] = { config_id = 275005, shape = RegionShape.SPHERE, radius = 30, pos = { x = -6657.744, y = 193.481, z = -2661.123 }, area_id = 18 }
}

-- 触发器
triggers = {
	{ config_id = 1275006, name = "ANY_MONSTER_DIE_275006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_275006" }
}

-- 变量
variables = {
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
		monsters = { 275002 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_275006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 此suite在战斗开启后加载,
		monsters = { },
		gadgets = { },
		regions = { 275004, 275005 },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_275006(context, evt)
	-- 创建id为275007的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 275007 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end

require "V2_3/Boss_Hound"