-- 基础信息
local base_info = {
	group_id = 133004296
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 296001, gadget_id = 70211111, pos = { x = 2236.120, y = 254.564, z = -437.935 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 11, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 296006, gadget_id = 70380002, pos = { x = 2239.839, y = 250.000, z = -450.259 }, rot = { x = 0.000, y = 225.612, z = 0.000 }, level = 1, route_id = 3004500, area_id = 3 },
	{ config_id = 296007, gadget_id = 70380002, pos = { x = 2237.839, y = 250.000, z = -450.259 }, rot = { x = 0.000, y = 283.406, z = 0.000 }, level = 1, route_id = 3004500, area_id = 3 },
	{ config_id = 296008, gadget_id = 70380002, pos = { x = 2235.839, y = 250.000, z = -450.259 }, rot = { x = 0.000, y = 245.956, z = 0.000 }, level = 1, route_id = 3004500, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1296002, name = "GADGET_STATE_CHANGE_296002", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_296002", action = "action_EVENT_GADGET_STATE_CHANGE_296002", trigger_count = 0 },
	{ config_id = 1296005, name = "ANY_GADGET_DIE_296005", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_296005", action = "action_EVENT_ANY_GADGET_DIE_296005" }
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
		monsters = { },
		gadgets = { 296006, 296007, 296008 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_296002", "ANY_GADGET_DIE_296005" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_296002(context, evt)
	if 296001 ~= evt.param2 or GadgetState.ChestOpened ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_296002(context, evt)
	-- 销毁group存档，不影响当前场景，但卸载后group就永别了
	if 0 ~= ScriptLib.SetGroupDead(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_group_die")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_296005(context, evt)
	-- 判断指定group组剩余gadget数量是否是0 
	if ScriptLib.CheckRemainGadgetCountByGroupId(context, {group_id = 133004296}) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_296005(context, evt)
	-- 创建id为296001的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 296001 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 1011, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end