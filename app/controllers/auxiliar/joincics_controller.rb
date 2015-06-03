class Auxiliar::JoincicsController < ApplicationController


  def get_school
    school_id = params[:id]
    @school = School.find(school_id)

    render template: 'auxiliar/joincics/show.json.jbuilder'
  end

  def show_schools
    @schools = School.all

    render template: 'auxiliar/joincics/show.json.jbuilder'
  end

  def get_country_schools
    country_id = params[:id]
    country = Country.find(country_id)
    @schools = country.schools

    render template: 'auxiliar/joincics/show.json.jbuilder'
  end

  def get_active_students
    country_id = params[:id]
    @students = Person.joins(:school)
                        .where(active: true, schools: {country_id: country_id})

    render template: 'auxiliar/joincics/students_show.json.jbuilder'
  end

  def get_school_students

    # TO DO

    render template: 'auxiliar/joincics/students_show.json.jbuilder'
  end

end
