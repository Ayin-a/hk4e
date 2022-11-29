-- 基础信息
local base_info = {
	group_id = 133106475
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 475001, monster_id = 25060101, pos = { x = -507.104, y = 177.743, z = 1704.744 }, rot = { x = 0.000, y = 272.153, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 19 },
	{ config_id = 475004, monster_id = 25010201, pos = { x = -507.611, y = 177.832, z = 1706.994 }, rot = { x = 0.000, y = 241.022, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9102, area_id = 19 },
	{ config_id = 475005, monster_id = 25030301, pos = { x = -494.000, y = 177.920, z = 1709.995 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9006, area_id = 19 },
	{ config_id = 475006, monster_id = 25010301, pos = { x = -494.119, y = 177.833, z = 1712.238 }, rot = { x = 0.000, y = 158.059, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9002, area_id = 19 },
	{ config_id = 475007, monster_id = 25010201, pos = { x = -519.867, y = 177.959, z = 1718.273 }, rot = { x = 0.000, y = 336.319, z = 0.000 }, level = 36, drop_tag = "盗宝团", pose_id = 9005, area_id = 19 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 475002, gadget_id = 70211002, pos = { x = -491.312, y = 177.874, z = 1708.902 }, rot = { x = 0.000, y = 279.423, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1475003, name = "ANY_MONSTER_DIE_475003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_475003", action = "action_EVENT_ANY_MONSTER_DIE_475003" }
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
		monsters = { 475001, 475004, 475005, 475006, 475007 },
		gadgets = { 475002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_475003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_475003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_475003(context, evt)
	-- 将configid为 475002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 475002, GadgetState.Default) then
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