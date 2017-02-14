unit about;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TAboutForm }

  TAboutForm = class(TForm)
    AboutButton: TButton;
    Memo1: TMemo;
    procedure AboutButtonClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.lfm}

{ TAboutForm }


procedure TAboutForm.AboutButtonClick(Sender: TObject);
begin
  close;
end;

end.

