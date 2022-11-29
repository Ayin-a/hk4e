-- 基础信息
local base_info = {
	group_id = 133008517
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 517001, monster_id = 21011401, pos = { x = 1016.968, y = 571.612, z = -865.380 }, rot = { x = 0.000, y = 17.931, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 517004, monster_id = 21011401, pos = { x = 1005.273, y = 571.480, z = -860.189 }, rot = { x = 0.000, y = 47.570, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, climate_area_id = 1, area_id = 10 },
	{ config_id = 517007, monster_id = 21010901, pos = { x = 1012.305, y = 571.585, z = -858.369 }, rot = { x = 0.000, y = 37.273, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 517002, gadget_id = 70211012, pos = { x = 1009.439, y = 571.665, z = -865.202 }, rot = { x = 0.000, y = 10.020, z = 0.000 }, level = 26, drop_tag = "雪山战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 10 },
	{ config_id = 517005, gadget_id = 70310022, pos = { x = 1011.229, y = 571.628, z = -862.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1517003, name = "ANY_MONSTER_DIE_517003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_517003", action = "action_EVENT_ANY_MONSTER_DIE_517003" }
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
		monsters = { 517001, 517004, 517007 },
		gadgets = { 517002, 517005 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_517003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_517003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_517003(context, evt)
	-- 将configid为 517002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 517002, GadgetState.Default) then
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