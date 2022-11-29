--[[======================================
||	filename:       GadgetMarkAction
||	owner:          zijun.ma
||	description:    3.0开始应用的通用物件MarkAction
||	LogName:        TD_GadgetMarkAction
||	Protection:     [Protection]
=======================================]]
--[[
-- 功能需求 --
由Gadget发起的MarkLuaAction，希望使用者不修改便可以使用
param1：统一约束为GadgetID，用于方便运营识别（会出现多个GadgetID用一套)
param2：区分用，类似区分序号
--]]
function OnClientExecuteReq(context, param1, param2, param3)
	if param1 == nil then
		return 0
	end

	local groupID = ScriptLib.GetContextGroupId(context)
	local configID = ScriptLib.GetContextGadgetConfigId(context)
	local state = ScriptLib.GetGadgetState(context)

	if param2 == nil then
		ScriptLib.MarkGroupLuaAction(context, "Gadget_".. param1, "", {["group_id"]=groupID,["config_id"]=configID,["state_id"]=state})
	else
		ScriptLib.MarkGroupLuaAction(context, "Gadget_".. param1, "", {["group_id"]=groupID,["config_id"]=configID,["state_id"]=state,["special"] = param2})
	end

	return 0
end