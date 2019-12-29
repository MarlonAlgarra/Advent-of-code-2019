function [x,T,pb,pd]=intcode2(inp,in1,in2)
p=1; icon=1; pb=0; pd=0;
while 1
    x1=inp(p);
    if x1==99
        pb=1;
        break
    end
    temp1=inp(p+1);
    if x1==4
        x=inp(temp1+1);
        disp(inp(temp1+1))
        p=p+2;
        pd=2;
        continue
    end
    temp1=inp(p+1);
    temp2=inp(p+2);
    temp3=inp(p+3);
    if x1==1
        inp(temp3+1)=inp(temp1+1)+inp(temp2+1);
        p=p+4;
    elseif x1==2
        inp(temp3+1)=inp(temp1+1)*inp(temp2+1);
        p=p+4;
    elseif x1==3
        if icon==1
            inp(temp1+1)=in1;%input('Input ID: ');
            p=p+2;
            icon=2;
        else
            inp(temp1+1)=in2;%input('Input ID: ');
            p=p+2;
        end
    elseif x1==5
        if inp(temp1+1)~=0
            p=inp(temp2+1);           
        else
            p=p+3;
        end
    elseif x1==6
        if inp(temp1+1)==0
            p=inp(temp2+1);           
        else
            p=p+3;
        end
    elseif x1==7
        if inp(temp1+1)<inp(temp2+1)
            inp(temp3+1)=1;              
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==8
        if inp(temp1+1)==inp(temp2+1)
            inp(temp3+1)=1;               
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==1001
        inp(temp3+1)=inp(temp1+1)+temp2; 
        p=p+4;
    elseif x1==1002
        inp(temp3+1)=inp(temp1+1)*temp2; 
        p=p+4;
    elseif x1==1005
        if inp(temp1+1)~=0
            p=temp2+1;          
        else
            p=p+3;
        end
    elseif x1==1006
        if inp(temp1+1)==0
            p=temp2+1;           
        else
            p=p+3;
        end
    elseif x1==1007
        if inp(temp1+1)<temp2
            inp(temp3+1)=1;               
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==1008
        if inp(temp1+1)==temp2
            inp(temp3+1)=1;               
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==1101
        inp(temp3+1)=temp1+temp2; 
        p=p+4;
    elseif x1==1102
        inp(temp3+1)=temp1*temp2; 
        p=p+4;
    elseif x1==1105
        if temp1~=0
            p=temp2+1;           
        else
            p=p+3;
        end    
    elseif x1==1106
        if temp1==0
            p=temp2+1;           
        else
            p=p+3;
        end
    elseif x1==1107
        if temp1<temp2
            inp(temp3+1)=1;               
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==1108
        if temp1==temp2
            inp(temp3+1)=1 ;              
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==101
        inp(temp3+1)=temp1+inp(temp2+1); 
        p=p+4;
    elseif x1==102
        inp(temp3+1)=temp1*inp(temp2+1); 
        p=p+4;
    elseif x1==104
        x=inp(temp1+1);
        %disp(temp1)
        p=p+2;    
    elseif x1==105
        if temp1~=0
            p=inp(temp2+1)+1;           
        else
            p=p+3;
        end
    elseif x1==106
        if temp1==0
            p=inp(temp2+1)+1;          
        else
            p=p+3;
        end
    elseif x1==107
        if temp1<inp(temp2+1)
            inp(temp3+1)=1;               
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    elseif x1==108
        if temp1==inp(temp2+1)
            inp(temp3+1)=1;              
        else
            inp(temp3+1)=0;
        end
        p=p+4;
    end
end
T=inp;
end

