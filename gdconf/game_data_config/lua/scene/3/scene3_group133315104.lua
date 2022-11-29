-- 基础信息
local base_info = {
	group_id = 133315104
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 104001, monster_id = 20010501, pos = { x = 71.050, y = 250.935, z = 2267.673 }, rot = { x = 0.000, y = 206.073, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 20 },
	{ config_id = 104002, monster_id = 22010401, pos = { x = 69.325, y = 251.271, z = 2266.048 }, rot = { x = 0.000, y = 183.660, z = 0.000 }, level = 27, drop_tag = "深渊法师", disableWander = true, area_id = 20 },
	{ config_id = 104003, monster_id = 20010501, pos = { x = 68.901, y = 250.673, z = 2268.274 }, rot = { x = 0.000, y = 200.653, z = 0.000 }, level = 27, drop_tag = "史莱姆", disableWander = true, area_id = 20 },
	{ config_id = 104004, monster_id = 20010701, pos = { x = 64.523, y = 250.958, z = 2270.247 }, rot = { x = 0.000, y = 221.298, z = 0.000 }, level = 27, drop_tag = "大史莱姆", area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 104005, gadget_id = 70211002, pos = { x = 73.387, y = 251.047, z = 2264.888 }, rot = { x = 9.280, y = 32.921, z = 357.923 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1104006, name = "ANY_MONSTER_DIE_104006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_104006", action = "action_EVENT_ANY_MONSTER_DIE_104006" }
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
		monsters = { 104001, 104002, 104003, 104004 },
		gadgets = { 104005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_104006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_104006(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_104006(context, evt)
	-- 将configid为 104005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 104005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end