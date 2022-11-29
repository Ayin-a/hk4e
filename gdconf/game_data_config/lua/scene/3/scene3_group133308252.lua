-- 基础信息
local base_info = {
	group_id = 133308252
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 252001, monster_id = 26120401, pos = { x = -1846.051, y = 378.613, z = 4188.898 }, rot = { x = 0.000, y = 272.840, z = 0.000 }, level = 32, drop_tag = "大蕈兽", pose_id = 102, area_id = 26 },
	{ config_id = 252004, monster_id = 26120101, pos = { x = -1851.767, y = 378.750, z = 4189.304 }, rot = { x = 0.000, y = 103.008, z = 0.000 }, level = 32, drop_tag = "大蕈兽", disableWander = true, pose_id = 102, area_id = 26 },
	{ config_id = 252005, monster_id = 26090901, pos = { x = -1843.309, y = 378.391, z = 4190.124 }, rot = { x = 0.000, y = 279.068, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 252006, monster_id = 26090201, pos = { x = -1857.418, y = 378.902, z = 4192.403 }, rot = { x = 0.000, y = 115.078, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 252007, monster_id = 26090901, pos = { x = -1841.769, y = 378.283, z = 4186.211 }, rot = { x = 0.000, y = 300.885, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 },
	{ config_id = 252008, monster_id = 26090201, pos = { x = -1854.299, y = 379.613, z = 4186.085 }, rot = { x = 0.000, y = 66.566, z = 0.000 }, level = 32, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 252002, gadget_id = 70211012, pos = { x = -1845.115, y = 380.550, z = 4182.084 }, rot = { x = 0.723, y = 345.296, z = 355.101 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1252003, name = "ANY_MONSTER_DIE_252003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_252003", action = "action_EVENT_ANY_MONSTER_DIE_252003" }
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
		monsters = { 252001, 252004, 252005, 252006, 252007, 252008 },
		gadgets = { 252002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_252003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_252003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_252003(context, evt)
	-- 将configid为 252002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 252002, GadgetState.Default) then
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