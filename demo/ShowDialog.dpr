program ShowDialog;
uses
  System.StartUpCopy,
  FMX.Forms,
  ShowDialog.Home in 'ShowDialog.Home.pas' {FormHome},
  FMX.MsgDlg in '..\FMX.MsgDlg.pas',
  FMX.MsgDlg.Types in '..\FMX.MsgDlg.Types.pas';

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
  // Disponibilizada por Dêividy Alcântara
  // https://github.com/deividyalcantara/show-message-fmx
  // https://www.linkedin.com/in/deividy-alcantara-590889177/
end.
