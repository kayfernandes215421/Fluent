local Creator = require(script.Parent.Parent.Creator)
local AcrylicBlur = require(script.Parent.AcrylicBlur)

local New = Creator.New

return function(props)
    local Blur = AcrylicBlur()

    local comp = New("Frame", {
        Size = UDim2.fromScale(1, 1),
        BackgroundTransparency = 0.9,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        BorderSizePixel = 0,
    }, {    
        Blur.Frame,
        New("ImageLabel", {
            Image = "rbxassetid://8992230677",
            ScaleType = "Slice",
            SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
            AnchorPoint = Vector2.new(0.5, 0.5),
            Size = UDim2.new(1, 120, 1, 116),
            Position = UDim2.new(0.5, 0, 0.5, 0),
            BackgroundTransparency = 1,
            ImageColor3 = Color3.fromRGB(0, 0, 0),
            ImageTransparency = 0.45
        }),

        New("UICorner", {
            CornerRadius = UDim.new(0, 8)
        }),

        New("Frame", {
            BackgroundTransparency = 0.35,
            Size = UDim2.fromScale(1, 1),
            Name = "Background",
            BorderSizePixel = 0,
            ThemeTag = {
                BackgroundColor3 = "WindowBackground"
            }
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8)
            })
        }),

        New("Frame", {
            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
            BackgroundTransparency = 0.35,
            Size = UDim2.fromScale(1, 1),
            BorderSizePixel = 0,
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8)
            }),

            New("UIGradient", {
                Rotation = 90,
                ThemeTag = {
                    Color = "WindowGradient"
                }
            })
        }),

        New("ImageLabel", {
            Image = "rbxassetid://9968344105",
            ImageTransparency = 0.98,
            ScaleType = Enum.ScaleType.Tile,
            TileSize = UDim2.new(0, 128, 0, 128),
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8)
            })
        }),

        New("ImageLabel", {
            Image = "rbxassetid://9968344227",
            ImageTransparency = 0.9,
            ScaleType = Enum.ScaleType.Tile,
            TileSize = UDim2.new(0, 128, 0, 128),
            Size = UDim2.fromScale(1, 1),
            BackgroundTransparency = 1,
            ThemeTag = {
                ImageTransparency = "NoiseTransparency"
            }
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8)
            })
        }),

        New("Frame", {
            BackgroundTransparency = 1,
            Size = UDim2.fromScale(1, 1),
            ZIndex = 2,
        }, {
            New("UICorner", {
                CornerRadius = UDim.new(0, 8)
            }),
            New("UIStroke", {
                Color = Color3.fromHex("#404040"),
                Transparency = 0.5,
                Thickness = 1.5,
                ThemeTag = {
                    Color = "WindowStroke"
                }
            })
        })
    })

    return {
        Frame = comp,
        Model = Blur.Model,
        AddParent = Blur.AddParent,
        SetVisibility = Blur.SetVisibility
    }
end