if @school
  json.school do
    json.partial! 'auxiliar/joincics/school_show',
        school: @school
  end
end


if @schools
  json.array! @schools do |school|
    json.partial! 'auxiliar/joincics/school_show',
      school: school
  end
end
