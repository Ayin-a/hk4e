-- 基础信息
local base_info = {
	group_id = 133313238
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 238001, monster_id = 25410401, pos = { x = -272.078, y = 105.290, z = 5414.763 }, rot = { x = 0.000, y = 40.718, z = 0.000 }, level = 32, drop_tag = "高级镀金旅团", disableWander = true, pose_id = 9001, area_id = 32 },
	{ config_id = 238004, monster_id = 25210302, pos = { x = -270.087, y = 104.839, z = 5415.641 }, rot = { x = 0.000, y = 223.370, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9002, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 238002, gadget_id = 70211002, pos = { x = -273.767, y = 108.235, z = 5423.375 }, rot = { x = 0.000, y = 103.594, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 238005, gadget_id = 70300093, pos = { x = -271.031, y = 104.925, z = 5408.997 }, rot = { x = 347.197, y = 250.498, z = 5.125 }, level = 32, area_id = 32 },
	{ config_id = 238006, gadget_id = 70330427, pos = { x = -271.737, y = 105.003, z = 5412.531 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 238007, gadget_id = 70330428, pos = { x = -265.578, y = 104.433, z = 5423.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 238008, gadget_id = 70330426, pos = { x = -265.110, y = 104.414, z = 5423.804 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 238009, gadget_id = 70330429, pos = { x = -265.085, y = 104.418, z = 5421.729 }, rot = { x = 296.913, y = 124.842, z = 44.530 }, level = 32, area_id = 32 },
	{ config_id = 238010, gadget_id = 70210101, pos = { x = -270.252, y = 104.905, z = 5410.098 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1238003, name = "ANY_MONSTER_DIE_238003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_238003", action = "action_EVENT_ANY_MONSTER_DIE_238003" }
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
		monsters = { 238001, 238004 },
		gadgets = { 238002, 238005, 238006, 238007, 238008, 238009, 238010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_238003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_238003(context, evt)
	-- 将configid为 238002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 238002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end