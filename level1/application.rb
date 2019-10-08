require_relative './Department'
class Application
   attr_accessor :depts

  def initialize
    self.depts = []
     ['EEE', 'MECH', 'CSE', 'CIVIL'].each do |dept|
     	self.depts<<Department.new(dept)
    end
  end

  def enroll(student_name,student_dept)
    dept = self.depts.detect { |dept| dept.name == student_dept }
   return dept.enroll(student_name,student_dept)
  end
  def change_dept(student_name, student_dept)
    if(depts[0].total.include?(student_name))
    depts[0].change_dept(student_name,student_dept)
    end
    if(depts[1].total.include?(student_name))
    depts[1].change_dept(student_name,student_dept)
    end
    if(depts[2].total.include?(student_name))
     depts[2].change_dept(student_name,student_dept)
    end
    if(depts[3].total.include?(student_name))
    depts[3].change_dept(student_name,student_dept)
    end
    dept = self.depts.detect { |dept| dept.name == student_dept }
    dept.enroll(student_name,student_dept)
  end

  def change_section(student_name, section)
    s=""
    if(depts[0].total.include?(student_name))
     s+=depts[0].change_section(student_name,section)
    end
    if(depts[1].total.include?(student_name))
     s+=depts[1].change_section(student_name,section)
    end
    if(depts[2].total.include?(student_name))
     s+=depts[2].change_section(student_name,section)
    end
    if(depts[3].total.include?(student_name))
    s+=depts[3].change_section(student_name,section)
    end
    return s
  end

  def dept_view(student_dept)
    if(student_dept=="EEE")
     return depts[0].dept_view()
     end
     if(student_dept=="MECH")
      return depts[1].dept_view()
     end
     if(student_dept=="CSE")
     return depts[2].dept_view()
     end
     if(student_dept=="CIVIL")
     return depts[3].dept_view()
     end
  end

  def section_view(student_dept, section)
     if(student_dept=="EEE")
      return depts[0].section_view(student_dept,section)
     end
     if(student_dept=="MECH")
      return depts[1].section_view(student_dept,section)
     end
     if(student_dept=="CSE")
     return  depts[2].section_view(student_dept,section)
     end
     if(student_dept=="CIVIL")
      return depts[3].section_view(student_dept,section)
     end
  end

  def student_details(student_name)
    st=""
    if(depts[0].total.include?(student_name))
    st+=depts[0].student_details(student_name)
    end
    if(depts[1].total.include?(student_name))
     st+=depts[1].student_details(student_name)
    end
    if(depts[2].total.include?(student_name))
     st+=depts[2].student_details(student_name)
    end
    if(depts[3].total.include?(student_name))
     st+=depts[3].student_details(student_name)
    end
    return st
  end
end
