def rgb(*args)
 to_rgb = -> (color) { color.clamp(0, 255).to_s(16).upcase.rjust(2, '0') }
 args.map(&to_rgb).join('')
end
