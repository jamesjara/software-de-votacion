unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Image3: TImage;
    Panel2: TPanel;
    Image2: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Edit4: TEdit;
    Button1: TButton;
    Panel8: TPanel;
    Panel9: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel10: TPanel;
    Image7: TImage;
    Image8: TImage;
    Panel11: TPanel;
    Image9: TImage;
    Image10: TImage;
    Panel12: TPanel;
    Image11: TImage;
    Image12: TImage;
    Panel13: TPanel;
    Panel14: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure SALIR1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel6Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math, Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  HTaskbar: HWND;
  OldVal: LongInt;
   dummy : integer;
begin


{Desconectar el Ctrl-Alt-Del:}
SystemParametersInfo( SPI_SCREENSAVERRUNNING, 1, @dummy, 0);

  try
    // Find handle of TASKBAR
    HTaskBar := FindWindow('Shell_TrayWnd', nil);
    // Turn SYSTEM KEYS off, Only Win 95/98/ME
    SystemParametersInfo(97, Word(True), @OldVal, 0);
    // Disable the taskbar
    EnableWindow(HTaskBar, False);
    // Hide the taskbar
    ShowWindow(HTaskbar, SW_HIDE);
  finally
    with Form1 do 
    begin
      BorderStyle := bsNone;
      FormStyle   := fsStayOnTop;
      Left        := 0;
      Top         := 0;
      Height      := Screen.Height;
      Width       := Screen.Width;
    end;
  end
end;

procedure TForm1.SALIR1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  HTaskbar: HWND;
  OldVal: LongInt;
begin
  //Find handle of TASKBAR
  HTaskBar := FindWindow('Shell_TrayWnd', nil);
  //Turn SYSTEM KEYS Back ON, Only Win 95/98/ME
  SystemParametersInfo(97, Word(False), @OldVal, 0);
  //Enable the taskbar
  EnableWindow(HTaskBar, True);
  //Show the taskbar
  ShowWindow(HTaskbar, SW_SHOW);
  
end;

procedure TForm1.Panel6Click(Sender: TObject);
 var
     FUsername: String;
       HTaskbar: HWND;
  OldVal: LongInt;
   dummy : integer;

     begin
  try
    // get the Username and Password
    FUsername := InputBox('!!!!', 'Cuidado con lo que haces...', '');
    // We issue a PROPFIND verb to get the location of the ROOTFOLDER
    if FUsername = 'pass' then
    begin
      //Find handle of TASKBAR
  HTaskBar := FindWindow('Shell_TrayWnd', nil);
  //Turn SYSTEM KEYS Back ON, Only Win 95/98/ME
  SystemParametersInfo(97, Word(False), @OldVal, 0);
  //Enable the taskbar
  EnableWindow(HTaskBar, True);
  //Show the taskbar
  ShowWindow(HTaskbar, SW_SHOW);
 {Volver a conectarlo:}
SystemParametersInfo( SPI_SCREENSAVERRUNNING, 0, @dummy, 0);
Application.Terminate;

         end
else
     ShowMessage('WARNING');
      finally
  ShowMessage('WARNING');
     end;    end;

procedure TForm1.Panel1Click(Sender: TObject);
Var Contador: Integer;
   FUsername: String;
   var x: string;
begin
Contador := 1 + StrToInt(Edit1.Text);
Edit1.Text  :=  IntToStr( Contador );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;
   Edit4.Clear;
end;

procedure TForm1.Image4Click(Sender: TObject);
Var Contador: Integer;
begin
Contador := 1 + StrToInt(Edit1.Text);
Edit1.Text  :=  IntToStr( Contador );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;
   Edit4.Clear;
end;

procedure TForm1.Image1Click(Sender: TObject);
Var Contador: Integer;
begin
Contador := 1 + StrToInt(Edit1.Text);
Edit1.Text  :=  IntToStr( Contador );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
Panel7.Show;
    Edit4.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
If Edit4.Text = 'pass'  Then
begin
Panel7.Hide ;
Panel2.Show ;
Panel1.Show   ;
Panel3.Show
end

end;
procedure TForm1.Panel3Click(Sender: TObject);
Var Contador2: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador2 := 1 + StrToInt(Edit2.Text);
Edit2.Text  :=  IntToStr( Contador2 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;
procedure TForm1.Image5Click(Sender: TObject);
Var Contador2: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador2 := 1 + StrToInt(Edit2.Text);
Edit2.Text  :=  IntToStr( Contador2 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;

procedure TForm1.Image3Click(Sender: TObject);
Var Contador2: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador2 := 1 + StrToInt(Edit2.Text);
Edit2.Text  :=  IntToStr( Contador2 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;

procedure TForm1.Image2Click(Sender: TObject);
Var Contador3: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador3 := 1 + StrToInt(Edit3.Text);
Edit3.Text  :=  IntToStr( Contador3 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;

procedure TForm1.Panel2Click(Sender: TObject);
Var Contador3: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador3 := 1 + StrToInt(Edit3.Text);
Edit3.Text  :=  IntToStr( Contador3 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;
procedure TForm1.Image6Click(Sender: TObject);
Var Contador3: Integer;
   FUsername: String;
   var x: string;
begin
 Edit4.Clear;
 Contador3 := 1 + StrToInt(Edit3.Text);
Edit3.Text  :=  IntToStr( Contador3 );
Panel1.Hide;
Panel3.Hide ;
Panel2.Hide ;
  Panel7.Show;

end;

procedure TForm1.Panel8Click(Sender: TObject);
var
     FUsername: String;
     begin
  try
    // get the Username and Password
    FUsername := InputBox('!!!!', 'Cuidado con lo que haces...', '');
    // We issue a PROPFIND verb to get the location of the ROOTFOLDER
    if FUsername = 'pass' then
  begin
   panel9.Show   ;
   edit1.Visible := true   ;
     edit2.Visible := true ;
      edit3.Visible := true 
      end
    else
     ShowMessage('WARNING');
      finally
  ShowMessage('Calculando...Listo');
     end;    end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

CanClose:=FALSE;
end;

end.
