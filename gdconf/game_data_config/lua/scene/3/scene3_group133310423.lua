-- 基础信息
local base_info = {
	group_id = 133310423
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	-- 后入战
	{ config_id = 423001, monster_id = 24040301, pos = { x = -2305.364, y = 119.708, z = 4818.810 }, rot = { x = 0.000, y = 81.172, z = 0.000 }, level = 32, drop_tag = "元能构装体", pose_id = 1, area_id = 26 },
	{ config_id = 423005, monster_id = 24040301, pos = { x = -2294.484, y = 120.810, z = 4813.241 }, rot = { x = 0.000, y = 321.767, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1004, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 423002, gadget_id = 70211012, pos = { x = -2298.819, y = 119.342, z = 4818.403 }, rot = { x = 4.463, y = 0.077, z = 3.572 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 423004, gadget_id = 70330432, pos = { x = -2293.312, y = 119.626, z = 4822.101 }, rot = { x = 0.000, y = 242.932, z = 17.658 }, level = 32, area_id = 26 },
	{ config_id = 423007, gadget_id = 70220103, pos = { x = -2310.326, y = 122.766, z = 4811.454 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 423008, gadget_id = 70330432, pos = { x = -2302.183, y = 118.864, z = 4825.449 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 423009, gadget_id = 70330432, pos = { x = -2304.898, y = 119.343, z = 4813.535 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1423003, name = "ANY_MONSTER_DIE_423003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_423003", action = "action_EVENT_ANY_MONSTER_DIE_423003" },
	{ config_id = 1423006, name = "ANY_MONSTER_DIE_423006", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_423006", action = "action_EVENT_ANY_MONSTER_DIE_423006" }
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
		monsters = { 423005 },
		gadgets = { 423002, 423004, 423007, 423008, 423009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_423006" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 423001 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_423003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_423003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_423003(context, evt)
	-- 将configid为 423002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 423002, GadgetState.Default) then
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

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_423006(context, evt)
	--判断死亡怪物的configid是否为 423005
	if evt.param1 ~= 423005 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_423006(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133310423, 2)
	
	return 0
end