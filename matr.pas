unit matr;

interface
type
  MatrixType = array[1..3, 1..3] of real;
  function Add(matrix1, matrix2: MatrixType): MatrixType;
  function Multiply(matrix1, matrix2: MatrixType): MatrixType;
  function ScalarMultiply(matrix: MatrixType; multiple: Real): MatrixType;
implementation
  function Add(matrix1, matrix2: MatrixType): MatrixType;
  var
    res: MatrixType;
    i, u:integer;
    begin
      for i:=1 to 3 do
        for u:=1 to 3 do
          res[i,u]:=matrix1[i,u]+matrix2[i,u];
    Add:= res;
    end;
    function Multiply(matrix1, matrix2: MatrixType): MatrixType;
    var
      res: MatrixType;
      i,u,f:integer;
    begin
         for i:=1 to 3 do
            for u:=1 to 3 do
            begin
            res[i,u]:=0;
               for f:=1 to 3 do
                  res[i,u]:=res[i,u]+matrix1[i,f]*matrix2[f,u];
            end;
    result:=res;
    end;
    function ScalarMultiply(matrix: MatrixType; multiple: Real): MatrixType;
    var
      i,u:integer;
    begin
      for i:=1 to 3 do
        for u:=1 to 3 do
          matrix[i,u]:=matrix[i,u]*multiple;
    result:=matrix;
    end;
end.
