-- 基础信息
local base_info = {
	group_id = 133314057
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 57001, monster_id = 25210203, pos = { x = -861.942, y = 80.642, z = 4420.472 }, rot = { x = 0.000, y = 98.647, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, pose_id = 9511, area_id = 32 },
	{ config_id = 57005, monster_id = 25310201, pos = { x = -854.680, y = 83.785, z = 4411.965 }, rot = { x = 0.000, y = 263.962, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9002, area_id = 32 },
	{ config_id = 57006, monster_id = 25210301, pos = { x = -859.835, y = 80.679, z = 4419.744 }, rot = { x = 0.000, y = 288.455, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9512, area_id = 32 },
	{ config_id = 57008, monster_id = 25310301, pos = { x = -853.206, y = 83.825, z = 4411.741 }, rot = { x = 0.000, y = 300.759, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 57002, gadget_id = 70211012, pos = { x = -861.275, y = 80.610, z = 4418.430 }, rot = { x = 0.000, y = 21.134, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 57004, gadget_id = 70210101, pos = { x = -862.731, y = 80.684, z = 4419.326 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 57009, gadget_id = 70220128, pos = { x = -861.024, y = 80.648, z = 4419.878 }, rot = { x = 355.571, y = 19.657, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 57010, gadget_id = 70210101, pos = { x = -853.884, y = 84.712, z = 4414.730 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 32 },
	{ config_id = 57011, gadget_id = 70210101, pos = { x = -850.087, y = 85.150, z = 4408.443 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", persistent = true, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1057003, name = "ANY_MONSTER_DIE_57003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57003", action = "action_EVENT_ANY_MONSTER_DIE_57003" },
	{ config_id = 1057007, name = "ANY_MONSTER_DIE_57007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_57007", action = "action_EVENT_ANY_MONSTER_DIE_57007" }
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
		monsters = { 57001, 57005, 57006 },
		gadgets = { 57002, 57004, 57009, 57010, 57011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_57003", "ANY_MONSTER_DIE_57007" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 57008 },
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
function condition_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57003(context, evt)
	-- 将configid为 57002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 57002, GadgetState.Default) then
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
function condition_EVENT_ANY_MONSTER_DIE_57007(context, evt)
	--判断死亡怪物的configid是否为 57001
	if evt.param1 ~= 57001 then
	    return false
	 end
	  
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_57007(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133314057, 2)
	
	return 0
end