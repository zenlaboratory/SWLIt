unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, IpHtml, Forms, Controls,
  Graphics, Dialogs, Menus, ComCtrls, DBGrids, StdCtrls, ExtCtrls,
  Grids, about;

type

  { TMainForm }

  TMainForm = class(TForm)
    ClockGroupBox: TGroupBox;
    LocalTime: TLabel;
    LocalTimeLabel: TLabel;
    LogBook: TTabSheet;
    MainMenu1: TMainMenu;
    MainMenu: TMainMenu;
    Archivo: TMenuItem;
    Ayuda: TMenuItem;
    AbrirItem: TMenuItem;
    AyudaItem: TMenuItem;
    AcercaDeItem: TMenuItem;
    MainPageControl: TPageControl;
    SalirItem: TMenuItem;
    Horarios: TTabSheet;
    Mapas: TTabSheet;
    StringGrid1: TStringGrid;
    SWLItTrayIcon: TTrayIcon;
    Timer1: TTimer;
    UTCTime: TLabel;
    UTCTimeLabel: TLabel;
    procedure AcercaDeItemClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MainPageControlChange(Sender: TObject);
    procedure SalirItemClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }



procedure TMainForm.SalirItemClick(Sender: TObject);
begin
  close;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  LocalTime.Caption := FormatDateTime('HH:MM:SS', Now);
  UTCTime.Caption := FormatDateTime('HH:MM:SS', Now);
end;

procedure TMainForm.AcercaDeItemClick(Sender: TObject);
begin
  AboutForm.Show;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  //StringGrid1.LoadFromCSVFile('sked-b16.csv', ';');
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  StringGrid1.LoadFromCSVFile('sked-b16.csv', ';');
end;

procedure TMainForm.MainPageControlChange(Sender: TObject);
begin

end;

begin

end.

