unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.Ani;

type
  TForm1 = class(TForm)
    Layout_Menu: TLayout;
    Rectangle1: TRectangle;
    Animate_menu: TFloatAnimation;
    Image1: TImage;
    Circle2: TCircle;
    Circle3: TCircle;
    Image2: TImage;
    Circle4: TCircle;
    Image3: TImage;
    Circle1: TCircle;
    Rectangle2: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure Animate_menuFinish(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);


 
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Animate_menuFinish(Sender: TObject);
begin
   if Animate_menu.Inverse = true then
     layout_menu.Visible := false;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  Layout_Menu.Visible := false;
end;


procedure TForm1.Image1Click(Sender: TObject);
begin
        Animate_menu.Inverse := true;
        Animate_menu.Start;
end;

procedure TForm1.Rectangle2Click(Sender: TObject);
begin
        Layout_Menu.Position.Y := Form1.Height + 20;
        Layout_Menu.Visible := true;

        animate_menu.Inverse := false;
        animate_menu.StartValue := Form1.Height + 20;
        animate_menu.StopValue := 0;
        animate_menu.Start;
end;


end.
