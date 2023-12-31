--- @meta

--- @class bitmapwidget

--- Retrieves the resource name of the bitmap contained in the widget.
--- @return string
function getBitmapName()
end

--- Sets the bitmap contained in the widget.
--- @param name string The name of the bitmap resource to be displayed in the widget
function setBitmap(name)
end

--- Set the color the image is modulated with. The modulation operation scales the color components of the pixels in the bitmap from zero to the value in the original bitmap, thus adjusting the hue of the image. The image color values can't be scaled up using this functionality.
--- @param color string The color specified as a HTML compatible string representing an RGB color with an alpha (transparency) value. The format of the string is 'aarrggbb', and each component is presented as a hexadecimal value from 00 to FF. If alpha is zero or not defined, FF is assumed.
function setColor(color)
end

--- Sets the size of this widget to a fixed value. Instead of sizing the entire widget to fit the contents, this will cause the icon to be fitted to the size.
--- @param width number The constrained width of the widget
--- @param height number The constrained height of the widget
--- @param clipanchor string Instead of scaling to fit control, bitmap will be anchored to the specified edge (top, bottom, left, right) and clipped.
function setSize(width, height, clipanchor)
end

