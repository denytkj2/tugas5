program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, zcomponent
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='tugaspd5_deny_tkj2';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(Ttugas_5, tugas_5);
  Application.Run;
end.

