-- 基础信息
local base_info = {
	group_id = 133222056
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 56007, monster_id = 24020301, pos = { x = -4649.695, y = 120.407, z = -4229.622 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 },
	{ config_id = 56008, monster_id = 24020301, pos = { x = -4644.446, y = 120.244, z = -4230.484 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 56015, gadget_id = 70211012, pos = { x = -4645.838, y = 120.214, z = -4223.772 }, rot = { x = 0.000, y = 194.537, z = 0.000 }, level = 26, drop_tag = "战斗中级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1056002, name = "ANY_MONSTER_DIE_56002", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56002", action = "action_EVENT_ANY_MONSTER_DIE_56002" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 56001, monster_id = 24010101, pos = { x = -4645.905, y = 120.124, z = -4224.834 }, rot = { x = 0.000, y = 193.654, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100, climate_area_id = 10, area_id = 14 },
		{ config_id = 56003, monster_id = 24010201, pos = { x = -4646.093, y = 120.109, z = -4224.916 }, rot = { x = 0.000, y = 194.708, z = 0.000 }, level = 30, drop_tag = "遗迹守卫", disableWander = true, pose_id = 100, climate_area_id = 10, area_id = 14 },
		{ config_id = 56005, monster_id = 24010301, pos = { x = -4645.986, y = 120.088, z = -4225.155 }, rot = { x = 0.000, y = 193.152, z = 0.000 }, level = 30, drop_tag = "遗迹重机", disableWander = true, pose_id = 100, climate_area_id = 10, area_id = 14 },
		{ config_id = 56009, monster_id = 24020301, pos = { x = -4645.644, y = 120.262, z = -4223.104 }, rot = { x = 0.000, y = 12.904, z = 0.000 }, level = 30, drop_tag = "拟生机关", pose_id = 101, climate_area_id = 10, area_id = 14 }
	},
	triggers = {
		{ config_id = 1056004, name = "ANY_MONSTER_DIE_56004", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56004", action = "action_EVENT_ANY_MONSTER_DIE_56004" },
		{ config_id = 1056006, name = "ANY_MONSTER_DIE_56006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_56006", action = "action_EVENT_ANY_MONSTER_DIE_56006" }
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
		monsters = { 56007, 56008 },
		gadgets = { 56015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_56002" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_56002(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_56002(context, evt)
	-- 将configid为 56015 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 56015, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end