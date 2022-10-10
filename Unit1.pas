unit Unit1;

interface

uses
  // importar
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.DBCtrls;

type
  // tipos de classe
  // heran�a
  // published por padr�o
  TForm1 = class(TForm)
    // atributo
    TrackBar1: TTrackBar;
    Shape1: TShape;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Button2: TButton;
    // m�todos
    // precedure: void - functions: retorna algo
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, resultado: Integer;
begin
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);

  resultado := a + b;

  Label1.Caption := resultado.ToString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '0';
  Edit2.Text := '0';
  Label1.Caption := '0';
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  AlphaBlendValue :=  TrackBar1.Position;
end;

end.
