local Acrylic = {
    AcrylicBlur = require(script.AcrylicBlur),
	CreateAcrylic = require(script.CreateAcrylic),
    AcrylicPaint = require(script.AcrylicPaint)
}

local function init()
    local baseEffect = Instance.new("DepthOfFieldEffect")
    baseEffect.FarIntensity = 0
    baseEffect.InFocusRadius = 0.1
    baseEffect.NearIntensity = 1
    
    local depthOfFieldDefaults = {}
    
    function Acrylic.Enable()
        for _, effect in pairs(depthOfFieldDefaults) do
            effect.Enabled = false
        end
        baseEffect.Parent = game.Lighting
    end
    
    function Acrylic.Disable()
        for _, effect in pairs(depthOfFieldDefaults) do
            effect.Enabled = effect.enabled
        end
        baseEffect.Parent = nil
    end
    
    local function registerDefaults()
        local function register(object)
            if object:IsA("DepthOfFieldEffect") then
                depthOfFieldDefaults[object] = { enabled = object.Enabled }
            end
        end
    
        for _, child in pairs(game.Lighting:GetChildren()) do
            register(child)
        end
    
        if game.Workspace.CurrentCamera then
            for _, child in pairs(game.Workspace.CurrentCamera:GetChildren()) do
                register(child)
            end
        end
    end
    
    registerDefaults()
    Acrylic.Enable()
end

init()
return Acrylic