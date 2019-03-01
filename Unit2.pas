unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    matr1_1: TEdit;
    matr2_1: TEdit;
    matr3_1: TEdit;
    matr1_2: TEdit;
    matr2_2: TEdit;
    matr3_2: TEdit;
    matr1_3: TEdit;
    matr2_3: TEdit;
    matr3_3: TEdit;
    mt1_1: TEdit;
    mt2_1: TEdit;
    mt3_1: TEdit;
    mt1_2: TEdit;
    mt2_2: TEdit;
    mt3_2: TEdit;
    mt1_3: TEdit;
    mt2_3: TEdit;
    mt3_3: TEdit;
    numb: TEdit;
    proi: TButton;
    scalar: TButton;
    res1_1: TEdit;
    res2_1: TEdit;
    res3_1: TEdit;
    res1_2: TEdit;
    res2_2: TEdit;
    res3_2: TEdit;
    res1_3: TEdit;
    res2_3: TEdit;
    res3_3: TEdit;
    sum: TButton;
    procedure proiClick(Sender: TObject);
    procedure sumClick(Sender: TObject);
    procedure scalarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses matr;

{$R *.dfm}


procedure TForm2.proiClick(Sender: TObject);
var
  mat1, mat2: MatrixType;
begin
  mat1[1,1]:=StrToInt(matr1_1.Text);
  mat1[2,1]:=StrToInt(matr2_1.Text);
  mat1[3,1]:=StrToInt(matr3_1.Text);
  mat1[1,2]:=StrToInt(matr1_2.Text);
  mat1[2,2]:=StrToInt(matr2_2.Text);
  mat1[3,2]:=StrToInt(matr3_2.Text);
  mat1[1,3]:=StrToInt(matr1_3.Text);
  mat1[2,3]:=StrToInt(matr2_3.Text);
  mat1[3,3]:=StrToInt(matr3_3.Text);
  ///////////
  mat2[1,1]:=StrToInt(mt1_1.Text);
  mat2[2,1]:=StrToInt(mt2_1.Text);
  mat2[3,1]:=StrToInt(mt3_1.Text);
  mat2[1,2]:=StrToInt(mt1_2.Text);
  mat2[2,2]:=StrToInt(mt2_2.Text);
  mat2[3,2]:=StrToInt(mt3_2.Text);
  mat2[1,3]:=StrToInt(mt1_3.Text);
  mat2[2,3]:=StrToInt(mt2_3.Text);
  mat2[3,3]:=StrToInt(mt3_3.Text);
  ///////////
  mat2:=Multiply(mat1, mat2);
  res1_1.Text:=FloatToStr(mat2[1,1]);
  res2_1.Text:=FloatToStr(mat2[2,1]);
  res3_1.Text:=FloatToStr(mat2[3,1]);
  res1_2.Text:=FloatToStr(mat2[1,2]);
  res2_2.Text:=FloatToStr(mat2[2,2]);
  res3_2.Text:=FloatToStr(mat2[3,2]);
  res1_3.Text:=FloatToStr(mat2[1,3]);
  res2_3.Text:=FloatToStr(mat2[2,3]);
  res3_3.Text:=FloatToStr(mat2[3,3]);
end;

procedure TForm2.scalarClick(Sender: TObject);
var
  mat1: MatrixType;
begin
  mat1[1,1]:=StrToInt(matr1_1.Text);
  mat1[2,1]:=StrToInt(matr2_1.Text);
  mat1[3,1]:=StrToInt(matr3_1.Text);
  mat1[1,2]:=StrToInt(matr1_2.Text);
  mat1[2,2]:=StrToInt(matr2_2.Text);
  mat1[3,2]:=StrToInt(matr3_2.Text);
  mat1[1,3]:=StrToInt(matr1_3.Text);
  mat1[2,3]:=StrToInt(matr2_3.Text);
  mat1[3,3]:=StrToInt(matr3_3.Text);

  mat1:=ScalarMultiply(mat1, StrToFloat(numb.Text));

  res1_1.Text:=FloatToStr(mat1[1,1]);
  res2_1.Text:=FloatToStr(mat1[2,1]);
  res3_1.Text:=FloatToStr(mat1[3,1]);
  res1_2.Text:=FloatToStr(mat1[1,2]);
  res2_2.Text:=FloatToStr(mat1[2,2]);
  res3_2.Text:=FloatToStr(mat1[3,2]);
  res1_3.Text:=FloatToStr(mat1[1,3]);
  res2_3.Text:=FloatToStr(mat1[2,3]);
  res3_3.Text:=FloatToStr(mat1[3,3]);
end;

procedure TForm2.sumClick(Sender: TObject);
var
  mat1, mat2: MatrixType;
begin
  mat1[1,1]:=StrToInt(matr1_1.Text);
  mat1[2,1]:=StrToInt(matr2_1.Text);
  mat1[3,1]:=StrToInt(matr3_1.Text);
  mat1[1,2]:=StrToInt(matr1_2.Text);
  mat1[2,2]:=StrToInt(matr2_2.Text);
  mat1[3,2]:=StrToInt(matr3_2.Text);
  mat1[1,3]:=StrToInt(matr1_3.Text);
  mat1[2,3]:=StrToInt(matr2_3.Text);
  mat1[3,3]:=StrToInt(matr3_3.Text);
  ///////////
  mat2[1,1]:=StrToInt(mt1_1.Text);
  mat2[2,1]:=StrToInt(mt2_1.Text);
  mat2[3,1]:=StrToInt(mt3_1.Text);
  mat2[1,2]:=StrToInt(mt1_2.Text);
  mat2[2,2]:=StrToInt(mt2_2.Text);
  mat2[3,2]:=StrToInt(mt3_2.Text);
  mat2[1,3]:=StrToInt(mt1_3.Text);
  mat2[2,3]:=StrToInt(mt2_3.Text);
  mat2[3,3]:=StrToInt(mt3_3.Text);
  ///////////
  mat2:=Add(mat1, mat2);
  res1_1.Text:=FloatToStr(mat2[1,1]);
  res2_1.Text:=FloatToStr(mat2[2,1]);
  res3_1.Text:=FloatToStr(mat2[3,1]);
  res1_2.Text:=FloatToStr(mat2[1,2]);
  res2_2.Text:=FloatToStr(mat2[2,2]);
  res3_2.Text:=FloatToStr(mat2[3,2]);
  res1_3.Text:=FloatToStr(mat2[1,3]);
  res2_3.Text:=FloatToStr(mat2[2,3]);
  res3_3.Text:=FloatToStr(mat2[3,3]);
end;

end.
