-- 基础信息
local base_info = {
	group_id = 177008012
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12001, monster_id = 25100301, pos = { x = -148.903, y = 253.485, z = 493.289 }, rot = { x = 0.000, y = 91.993, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1040 }, pose_id = 1002, area_id = 210 },
	{ config_id = 12004, monster_id = 25100401, pos = { x = -142.768, y = 252.691, z = 493.759 }, rot = { x = 0.000, y = 281.880, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1040 }, pose_id = 1002, area_id = 210 },
	{ config_id = 12005, monster_id = 25100301, pos = { x = -146.379, y = 253.576, z = 490.201 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "高阶武士", disableWander = true, affix = { 1040 }, pose_id = 1002, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 12002, gadget_id = 70211158, pos = { x = -146.211, y = 253.189, z = 493.388 }, rot = { x = 0.000, y = 0.000, z = 356.184 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 12007, gadget_id = 70220014, pos = { x = -142.250, y = 252.312, z = 500.878 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12008, gadget_id = 70220014, pos = { x = -142.673, y = 252.427, z = 499.035 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12009, gadget_id = 70220048, pos = { x = -152.384, y = 254.004, z = 491.427 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 12010, gadget_id = 70220048, pos = { x = -152.781, y = 254.122, z = 489.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1012003, name = "ANY_MONSTER_DIE_12003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_12003", action = "action_EVENT_ANY_MONSTER_DIE_12003" }
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
		monsters = { 12001, 12004 },
		gadgets = { 12002, 12007, 12008, 12009, 12010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_12003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_12003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_12003(context, evt)
	-- 将configid为 12002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 12002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end