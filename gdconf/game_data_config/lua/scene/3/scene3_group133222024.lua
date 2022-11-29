-- 基础信息
local base_info = {
	group_id = 133222024
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 24001, monster_id = 25100201, pos = { x = -4530.871, y = 200.744, z = -4242.249 }, rot = { x = 0.000, y = 204.500, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1, climate_area_id = 10, area_id = 14 },
	{ config_id = 24005, monster_id = 25100101, pos = { x = -4541.121, y = 204.658, z = -4270.784 }, rot = { x = 0.000, y = 66.050, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1002, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 24002, gadget_id = 70211002, pos = { x = -4521.207, y = 200.737, z = -4263.346 }, rot = { x = 355.109, y = 354.440, z = 10.634 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1024003, name = "ANY_MONSTER_DIE_24003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_24003", action = "action_EVENT_ANY_MONSTER_DIE_24003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 24004, monster_id = 25100101, pos = { x = -4521.737, y = 200.139, z = -4275.875 }, rot = { x = 0.000, y = 91.261, z = 0.000 }, level = 30, drop_tag = "高阶武士", pose_id = 1001, climate_area_id = 10, area_id = 14 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 2,
	end_suite = 1,
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
		monsters = { 24001, 24005 },
		gadgets = { 24002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_24003" },
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_24003(context, evt)
	-- 将configid为 24002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 24002, GadgetState.Default) then
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