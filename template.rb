# module Template
#   def template(source_template, req_id)
#     template = String.new(source_template)
#     keyword = ["%CODE%", "%ALTCODE%"] #refactor this two keyword as unique index for looping
#     keyword.each do |key|   #looping each part by index
#       first_part = String.new(template[0..template.index(key) - 1])   #first part always start with 0 untill index length + 1
#       second_part = String.new(template[template.index(key) + key.length..template.length])   #second part always start with index position untill the end (template length)
#       # code = get_code(key, req_id)  #get code according to the index
#       template = String.new(first_part + code + second_part)  #combine all of previous part
#     end
#     return template
#   end

#   def get_code(key, req_id)
#     code = String.new(req_id)
#     if key == "%ALTCODE%"
#       code = code[0..4] + "-" + code[5..7]
#     end
#     return code
#   end

# end

module Resize
  def resize(frame, width, height)
    higher_size = width >= height ? width : height
    divide = adjust_number(higher_size, frame)
    h = adjust_number(height, divide)
    w = adjust_number(width, divide)
    return {h: h, w: w }
  end

  def adjust_number(number, divide)
    val = number.fdiv(divide).round(2)
    val = val.ceil == val ? val.ceil : val
    return val
  end
end
