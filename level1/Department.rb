class Department
        attr_accessor :name,:noOfASeats,:noOfBSeats,:cseats,:totalseats,:aSectVect,:bSectVect,:cSectVect,:asec,:bsec,:csec,:hash,:total
		def initialize(name)
			self.name=name
			self.noOfASeats=0
			self.noOfBSeats=0
			self.cseats=0
			self.totalseats=0
			self.aSectVect=[]
			self.bSectVect=[]
			self.cSectVect=[]
			self.asec=[]
			self.bsec=[]
			self.csec=[]
			self.total=[]
			self.hash={}
        end
		def enroll(stu_name,stu_dep)
     		if (@totalseats<30)
     			 @totalseats=@totalseats+1
     		 	 temp="You have been enrolled to #{stu_dep}"
     			 if(@noOfASeats<10)
     					@noOfASeats=@noOfASeats+1
     					@asec<<stu_name
     					@total<<stu_name
                        @aSectVect=@asec.sort
                        @ano=@aSectVect.find_index(stu_name)+1
                        @arollno="#{stu_dep}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{stu_dep}A#{@ano}"
                        end
                        temp+="\nYou have been allotted section A"
                        temp+="\nYour roll number is #{@arollno}"
                        @aSectVect.each do |e|
     					@ano=@aSectVect.find_index(e)+1
     					@arollno="#{stu_dep}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{stu_dep}A#{@ano}"
                        end
     					@hash[e]=@arollno;
                        end

     			 elsif(@noOfBSeats<10)
     			        @noOfBSeats=@noOfBSeats+1
     			        @bsec<<stu_name
                        @total=stu_name
     					@bSectVect=@bsec.sort
                        @bno=@bSectVect.find_index(stu_name)+1
                        @brollno="#{stu_dep}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{stu_dep}B#{@ano}"
                        end
     					temp+="\nYou have been allotted section B"
     					temp+="\nYour roll number is #{@brollno}"
                        @bSectVect.each do |e|
                        @bno=@bSectVect.find_index(e)+1
                        @brollno="#{stu_dep}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{stu_dep}B#{@bno}"
                        end
                        @hash[e]=@brollno;
                        end

     			 else
     			        @cseats=@cseats+1
     					@csec<<stu_name
                        @total<<stu_name
     					@cSectVect=@csec.sort
                        @cno=@cSectVect.find_index(stu_name)+1
                        @crollno="#{stu_dep}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{stu_dep}C#{@cno}"
                        end
                        temp+="\nYou have been allotted section C"
                        temp+="\nYour roll number is #{@crollno}"
     					@cSectVect.each do |e|
                        @cno=@cSectVect.find_index(e)+1
                        @crollno="#{stu_dep}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{stu_dep}C#{@cno}"
                        end
                        @hash[e]=@crollno
                        end

     			 end
     		else
     			 temp="\nError: Seats are not available in #{stu_dep}"
            end
            return temp
        end
        def change_section(stu_name,section)
                temp1=""
        		if (@totalseats<30)
        			if(asec.include?stu_name)
        			   @noOfASeats=@noOfASeats-1
                       @asec=@asec-[stu_name]
                       @aSectVect=@aSectVect-[stu_name]
                        @aSectVect=@asec.sort
                        @ano=1
                        if(@noOfASeats>1)
                        @ano=@aSectVect.find_index(stu_name)+1
                        end
                        @arollno="#{name}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{name}A#{@ano}"
                        end
                        @aSectVect.each do |e|
                        @ano=@aSectVect.find_index(e)+1
                        @arollno="#{name}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{name}A#{@ano}"
                        end
                        @hash[e]=@arollno;
                        end

        		    end
        		    if(bsec.include?stu_name)
                    @noOfBSeats=@noOfBSeats-1
                    @bsec=@bsec-[stu_name]
                     @bSectVect=@bSectVect-[stu_name]
                         @bSectVect=@bsec.sort
                          @bno=1
                        if(@noOfBSeats>1)
                        @bno=@bSectVect.find_index(stu_name)+1
                        end
                        @brollno="#{name}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{name}B#{@bno}"
                        end
                        @bSectVect.each do |e|
                        @bno=@aSectVect.find_index(e)+1
                        @brollno="#{name}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{name}B#{@bno}"
                        end
                        @hash[e]=@brollno;
                        end

        		    end
        		    if(csec.include?stu_name)
                     @cseats=@cseats-1
                     @csec=@csec-[stu_name]
                     @cSectVect=@cSectVect-[stu_name]
                    @cSectVect=@csec.sort
                    @cno=1
                          if(@cseats>1)
                        @cno=@cSectVect.find_index(stu_name)+1
                        end
                        @crollno="#{name}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{name}C#{@cno}"
                        end
                        @cSectVect.each do |e|
                        @cno=@cSectVect.find_index(e)+1
                        @crollno="#{name}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{name}C#{@cno}"
                        end
                        @hash[e]=@crollno;
                        end

        		    end
                    if(section=="A")
     			     if(@noOfASeats<10)
                        @noOfASeats=@noOfASeats+1
                        @asec<<stu_name
                        @total<<stu_name
                        @aSectVect=@asec.sort
                        @ano=@aSectVect.find_index(stu_name)+1
                        @arollno="#{name}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{stu_dep}A#{@ano}"
                        end
                        temp1+="You have been allotted section A"
                        temp1+="\nYour roll number is #{@arollno}"
                        @aSectVect.each do |e|
                        @ano=@aSectVect.find_index(e)+1
                        @arollno="#{name}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{stu_dep}A#{@ano}"
                        end
                        @hash[e]=@arollno
                        end

     				  else
     				    	temp1="\nSeats are not available in A section"
     			      end
     			    elsif(section=="B")
                        if(@noOfBSeats<10)
                        @noOfBSeats=@noOfBSeats+1
                        @bsec<<stu_name
                        @total=stu_name
                        @bSectVect=@bsec.sort
                        @bno=@bSectVect.find_index(stu_name)+1
                        @brollno="#{name}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{stu_dep}B#{@ano}"
                        end
                        temp1+="You have been allotted section B"
                        temp1+="\nYour roll number is #{@brollno}"
                        @bSectVect.each do |e|
                        @bno=@bSectVect.find_index(e)+1
                        @brollno="#{name}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{stu_dep}B#{@bno}"
                        end
                        @hash[e]=@brollno
                        end

     					else
     				    	temp1="\nSeats are not available in B section"
     				    end
     			   else
                        if(@cseats<10)
                        @cseats=@cseats+1
                        @csec<<stu_name
                        @total<<stu_name
                        @cSectVect=@csec.sort
                        @cno=@cSectVect.find_index(stu_name)+1
                        @crollno="#{name}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{stu_dep}C#{@cno}"
                        end
                        temp1+="You have been allotted section C"
                        temp1+="\nYour roll number is #{@crollno}"
                        @cSectVect.each do |e|
                        @cno=@cSectVect.find_index(e)+1
                        @crollno="#{name}C0#{@cno}"
                        if(@bno==10)
                        @brollno="#{stu_dep}B#{@bno}"
                        end
                        @hash[e]=@crollno
                        end

     					else
     				    	temp1+="\nSeats are not available in C section"
     				    end
     			   end
     		    else
     			 temp1+="\nError: Seats are not available in #{stu_dep}"
                end
                return temp1
        end
       def change_dept(student_name, student_department)
            @totalseats=@totalseats-1
            @total=@total-[student_name]
            @hash.delete(student_name)
            if(@aSectVect.include?(student_name))
            @noOfASeats=@noOfASeats-1
            @asec=@asec-[student_name]
            @aSectVect=@aSectVect-[student_name]
            @aSectVect=@asec.sort
                        @ano=1
                        if(@noOfASeats>1)
                        @ano=@aSectVect.find_index(student_name)+1
                        end
                        @arollno="#{student_department}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{student_department}A#{@ano}"
                        end
                        @aSectVect.each do |e|
                        @ano=@aSectVect.find_index(e)+1
                        @arollno="#{student_department}A0#{@ano}"
                        if(@ano==10)
                        @arollno="#{student_department}A#{@ano}"
                        end
                        @hash[e]=@arollno;
                        end
            end
            if(@bSectVect.include?(student_name))
            @noOfBSeats=@noOfBSeats-1
            @bsec=@bsec-[student_name]
            @bSectVect=@bSectVect-[student_name]
            @bSectVect=@bsec.sort
            @bno=1
                        if(@noOfBSeats>1)
                        @bno=@bSectVect.find_index(student_name)+1
                        end
                        @brollno="#{student_department}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{student_department}B#{@bno}"
                        end
                        @bSectVect.each do |e|
                        @bno=@aSectVect.find_index(e)+1
                        @brollno="#{student_department}B0#{@bno}"
                        if(@bno==10)
                        @brollno="#{student_department}B#{@bno}"
                        end
                        @hash[e]=@brollno;
                        end

            end
            if(@cSectVect.include?(student_name))
            @cseats=@cseats-1
            @csec=@csec-[student_name]
            @cSectVect=@cSectVect-[student_name]
            @cSectVect=@csec.sort
            @cno=1
                        if(@cseats>1)
                        @cno=@cSectVect.find_index(student_name)+1
                        end
                        @crollno="#{student_department}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{student_department}C#{@cno}"
                        end
                        @cSectVect.each do |e|
                        @cno=@cSectVect.find_index(e)+1
                        @crollno="#{student_department}C0#{@cno}"
                        if(@cno==10)
                        @crollno="#{student_department}C#{@cno}"
                        end
                        @hash[e]=@crollno;
                        end

            end
        end
        def student_details(student_name)
            temp3=""
             if(@aSectVect.include?student_name)
             temp3+="#{student_name} - #{name} - Section A - #{@hash[student_name]}"
             end
             if(@bSectVect.include?student_name)
             temp3+="#{student_name} - #{name} - Section B - #{@hash[student_name]}"
             end
             if(@cSectVect.include?student_name)
            temp3+="#{student_name} - #{name} - Section C - #{@hash[student_name]}"
             end
             return temp3
        end
        def section_view(student_dept, section)
          temp2="List of students:"
          if(section=="A")
            @aSectVect.each do |ele|
                temp2+="\n#{ele} - #{@hash[ele]}"
            end
          end
          if(section=="B")
            @bSectVect.each do |ele|
                temp2+="\n#{ele} - #{@hash[ele]}"
            end
          end
          if(section=="C")
            @cSectVect.each do |ele|
                temp2+="\n#{ele} - #{@hash[ele]}"
            end
          end
          return temp2
        end
        def department_view()
           str="List of students:"
           if(@totalseats>1)
           @total=@total.sort
           end
           @total.each do |ele|
           str+="\n#{ele} - #{@hash[ele]}"
           end
           return str
        end
 end
