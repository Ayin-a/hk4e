-- 基础信息
local base_info = {
	group_id = 177008005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5001, monster_id = 21020201, pos = { x = -125.028, y = 265.823, z = 405.911 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘暴徒", disableWander = true, affix = { 5135, 1040 }, pose_id = 401, area_id = 210 },
	{ config_id = 5004, monster_id = 21010502, pos = { x = -125.028, y = 265.861, z = 413.997 }, rot = { x = 0.000, y = 187.536, z = 0.000 }, level = 36, drop_tag = "远程丘丘人", disableWander = true, affix = { 5135, 1040 }, pose_id = 9003, area_id = 210 },
	{ config_id = 5005, monster_id = 21030103, pos = { x = -121.429, y = 265.714, z = 410.200 }, rot = { x = 0.000, y = 253.906, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", disableWander = true, affix = { 1040 }, pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 5002, gadget_id = 70211156, pos = { x = -127.847, y = 265.864, z = 409.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 16, drop_tag = "渊下宫活动低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 5006, gadget_id = 70220014, pos = { x = -129.651, y = 265.904, z = 403.695 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 5007, gadget_id = 70220013, pos = { x = -119.915, y = 265.885, z = 403.602 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 5008, gadget_id = 70220013, pos = { x = -118.059, y = 265.862, z = 404.109 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 5009, gadget_id = 70310006, pos = { x = -124.888, y = 265.814, z = 409.763 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 5010, gadget_id = 70300089, pos = { x = -122.641, y = 265.731, z = 408.038 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 5011, gadget_id = 70300089, pos = { x = -122.754, y = 265.812, z = 412.873 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1005003, name = "ANY_MONSTER_DIE_5003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_5003", action = "action_EVENT_ANY_MONSTER_DIE_5003" }
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
		monsters = { 5001, 5004, 5005 },
		gadgets = { 5002, 5006, 5007, 5008, 5009, 5010, 5011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_5003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_5003(context, evt)
	-- 将configid为 5002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 5002, GadgetState.Default) then
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