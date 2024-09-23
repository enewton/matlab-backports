classdef MySparseClass
    %MYSPARSECLASS   Class for testing mustBeSparse
    
   properties
      Prop1 {mustBeSparse} = sparse([])
   end
end
