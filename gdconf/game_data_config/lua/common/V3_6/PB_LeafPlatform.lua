--ServerUploadTool Save to [/root/env/data/lua/common/V3_6]
--======================================================================================================================
--||   Filename      ||    PB_LeafPlatform
--||   RelVersion    ||    V3_6
--||   Owner         ||    chao-jin
--||   Description   ||    叶片平台，用于在状态改变时创生钩锁点
--||   LogName       ||    ##[PB_LeafPlatform]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
--[[
local hook_map = {
	[] = ,
}
]]
--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0
--平台关闭
function SLC_PlatformOff(context) 
	local config_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	if hook_map[config_id] ~= nil then 
		ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, hook_map[config_id])
	end
	return 0
end

--平台打开
function SLC_PlatformOn(context)
	local config_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})
	if hook_map[config_id] ~= nil then 
		ScriptLib.CreateGadget(context, {config_id = hook_map[config_id] })
	end
	return 0
end


