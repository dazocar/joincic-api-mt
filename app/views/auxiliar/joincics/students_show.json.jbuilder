if @students
  json.array! @students do |student|
    json.partial! 'auxiliar/joincics/student_show',
      student: student
  end
end
