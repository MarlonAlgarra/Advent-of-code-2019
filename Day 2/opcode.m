function c=opcode(inp,j,k)
inp(2)=j; inp(3)=k;
for i=1:4:length(inp)
    if i<145
        temp1=inp(1,i+1);
        temp2=inp(1,i+2);
        temp3=inp(1,i+3);
        
        if inp(1,i)==1
            inp(1,temp3+1)=inp(temp1+1)+inp(1,temp2+1);
        end
        
        if inp(1,i)==2
            inp(1,temp3+1)=inp(temp1+1)*inp(1,temp2+1);
        end
        
        if inp(1,i)==99
            continue
        end
    end
end
c=inp;
end

