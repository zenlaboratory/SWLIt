unit splash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TSplashForm }

  TSplashForm = class(TForm)
    SplashImage: TImage;

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.lfm}

{ TSplashForm }

end.

